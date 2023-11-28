#!/bin/bash

# Generate a random 32 character alphanumeric string (upper and lowercase) and numbers in Bash
#IDLABEL="$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w ${1:-32} | head -n 1)"
#xxd -u -l 16 -p /dev/urandom > id_label
#works in bash and busybox, but not in ksh
#tr -dc 'A-F0-9' < /dev/urandom | head -c32
#works in bash and ksh, but not in busybox
#tr -dc 'A-F0-9' < /dev/urandom | dd status=none bs=1 count=32
#works in bash, ksh, AND busybox! w00t!
#tr -dc 'A-F0-9' < /dev/urandom | dd bs=1 count=32 2>/dev/null
#hexdump -n 16 -e '4/4 "%08X" 1 "\n"' /dev/random > id_label

#tr -dc 'A-F0-9' < /dev/urandom | head -c32 > id_label

./mkinitramfs.sh 5.14.13

#mkdir mnt
#mount -o loop,compress,ro rootfs-$(uname -m).img mnt
#mount -o loop,ro rootfs-$(uname -m).img mnt

FAIL="0"

if [ ! -d /mnt/etc ]; then
    echo "ERROR: Your system image does not contain the directory '/etc'"
    FAIL="1"
fi

if [ ! -x /mnt/sbin/init ]; then
    echo "ERROR: Your system image does not contain the executable '/sbin/init'"
    FAIL="1"
fi

if [ ! -e /mnt/dev/console ]; then
    echo "ERROR: Your system image does not contain the device '/dev/console'"
    FAIL="1"
fi

if [ "${FAIL}" == "1" ]; then
    return 1
fi

rm -fv root.sfs; mksquashfs /mnt root.sfs -comp xz

mkdir -p live/boot/{syslinux,$(uname -m)}
cp -v /usr/share/syslinux/* live/boot/syslinux
cp -v syslinux0.cfg live/boot/syslinux/syslinux.cfg

cp -v /mnt/boot/vmlinuz-* live/boot/$(uname -m)/vmlinuz
cp -v /mnt/boot/*-linux-kernel-*.config  live/boot/$(uname -m)/config

if [ -e "/mnt/usr/share/live/medium" ]; then
    cp -vR /mnt/usr/share/live/medium/* live
fi

#umount mnt
#rm -rf mnt

cp -v root.sfs live/boot/$(uname -m)
cp -v initrd.img-5.14.13 live/boot/$(uname -m)/initram.fs

#xorrisofs -o system-$(uname -m).iso     \
#          -b boot/isolinux/isolinux.bin \
#          -c boot.cat                   \
#          -no-emul-boot                 \
#          -boot-load-size 4             \
#          -boot-info-table              \
#          -joliet -l -R                 \
#          live

# https://wiki.syslinux.org/wiki/index.php?title=Isohybrid
#If the ISO 9660 image includes a UEFI bootloader capable of booting optical media in UEFI mode, then the isohybrid command can also achieve an equivalent result for UEFI systems just as described for BIOS ones.
#The additional isohybrid feature for UEFI adds a partition to the MBR partition table pointing to the same file in the ISO 9660 filesystem as does the El Torito catalog entry for EFI. This file contains a FAT filesystem with boot equipment from which the UEFI firmware will be able to start the desired operating system. Furthermore, isohybrid for UEFI creates a GUID Partition Table (GPT) with a partition pointing to that file.
#It can be brought into the ISO 9660 filesystem as second boot image with options "-eltorito-alt-boot" and "-e" by Fedora's variant of genisoimage, or by xorriso:
#The isohybrid tool compiled from utils/isohybrid.c has an option to add a suitable MBR partition and GPT to such a UEFI bootable filesystem:

# isohybrid --uefi output.iso

# The ISO 9660 filesystem is then supposed to boot from optical media and from disk storage via BIOS and via UEFI. Unfortunately, there seem to be some UEFI implementations that boot from MBR and fail to boot if GPT is present. Therefore, some Linux distributions have special ISO images for amd64 containing only BIOS equipment.

# xorriso can add the GPT equipment by its "-isohybrid-gpt-basdat" option:

#-eltorito-alt-boot \
#-e isolinux/efiboot.img \
#-isohybrid-gpt-basdat \

    iso_dir="live"
    mkdir -pv "$iso_dir/boot/grub"
    cp grub0.cfg "$iso_dir/boot/grub/grub.cfg"

    efi_img=$(mktemp)

    grub-mkimage-efi -O x86_64-efi \
        -o "$efi_img" \
        -p /boot/grub \
        efi_gop efi_uga boot linux search normal configfile part_gpt btrfs ext2 fat iso9660 loopback test keystatus gfxmenu regexp probe all_video gfxterm font echo read ls cat png jpeg halt reboot

    export MTOOLS_SKIP_CHECK=1

    mkfs.vfat -C "$iso_dir/efi.img" \
        $(($(wc -c < $efi_img) / 1024 + 511))

    mmd -i "$iso_dir/efi.img" \
        efi \
        efi/boot

    mcopy -i "$iso_dir/efi.img" \
        "$efi_img" \
        ::efi/boot/bootx64.efi

#    -hfsplus \
#    -hfsplus-serial-no fc4d1567781ece66 \
#    -hfsplus-block-size 512 \
#    -apm-block-size 512

#    -iso-level 3 \
  xorriso -as mkisofs \
    -isohybrid-mbr /usr/share/syslinux/isohdpfx.bin \
    -b boot/syslinux/isolinux.bin \
    -c boot/syslinux/boot.cat \
    -no-emul-boot \
    -boot-load-size 4 \
    -boot-info-table \
    -V "$(cat id_label)" \
    -o /tmp/pkglinux-21Q1-$(uname -m).iso     \
    -eltorito-alt-boot \
    -no-emul-boot \
    -e efi.img \
    -isohybrid-gpt-basdat \
    live

#Captcha does not let me post answers. So as comment: "-boot-load-size 4 -boot-info-table" must be written before "-eltorito-alt-boot", because they are meant as modifying options for "-b". After "-eltorito-alt-boot" comes the realm of "-e". There you need another option "-no-emul-boot" (as with "-b") in order to avoid the error message about floppy emulation sizes. But do not use "-boot-load-size" or "-boot-info-table" for the EFI image. – Thomas Schmitt Dec 27, 2018 at 9:21

#    -eltorito-alt-boot \
#    -append_partition 1 0xef $iso_dir/efi.img \
#    -graft-points efi.img=live/efi.img \
# create a ISO with a EFI boot partition
# Stuff it into a FAT filesystem, making it as small as possible.  511KiB
# headroom seems to be enough; (x+31)/32*32 rounds up to multiple of 32.
#ebi="/usr/share/syslinux/efi64/syslinux.efi" && \
#mkfs.vfat -v -C efiboot.img $(( ($(stat -c %s "$ebi") / 1024 + 511)/ 32 * 32 )) > /dev/null
#libisofs: FAILURE : Invalid image size 608 Kb. Must be one of 1.2, 1.44or 2.88 Mb
#root@pkgLinux ~/iso]# echo $(( 1024 + 1024 / 5 ))
#1228
#[root@pkgLinux ~/iso]# echo $(( 1024 + 1024 * 44 / 100 ))
#1474
#[root@pkgLinux ~/iso]# echo $(( 1024 * 2 + 1024 * 88 / 100 ))
#2949
#mkfs.vfat -v -C efiboot.img 2949
#mkfs.vfat -v -C efiboot.img 360
#mkfs.vfat -v -C efiboot.img 1200
#mkfs.vfat -v -C efiboot.img 1440
#mkfs.vfat -v -C efiboot.img 2880

rm -rf live
rm -rf root.sfs
rm -rf initrd.img-5.14.13
