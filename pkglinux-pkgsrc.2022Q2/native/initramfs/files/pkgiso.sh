#!/bin/bash

SFSID=2E3BBAD13EE71185111385472854A0FF
#ISOID=PKGLINUX-"$(tr -dc 'A-F0-9' < /dev/urandom | head -c23)"
PREFIX="$(readlink /pkg)"
ISOID="PKGLINUX-$PREFIX"-"$(tr -dc 'A-F0-9' < /dev/urandom | head -c16)"
echo "ISOID=$ISOID"
ISOFILE="$ISOID.iso"
ISODIR="/tmp/pkglinux.iso.d"
KVER="$(uname -r)"
rm -rf "$ISODIR"

mkdir -p $ISODIR/boot/{syslinux,$(uname -m)}
touch $ISODIR/boot/$ISOID
#cp -r /usr/share/syslinux/* $ISODIR/boot/syslinux
cp /usr/share/syslinux/* $ISODIR/boot/syslinux
cat << EOF > "$ISODIR/boot/syslinux/syslinux.cfg"
SERIAL 0
PROMPT 1
TIMEOUT 50
DEFAULT pkglinux

SAY
SAY   ##################################################################
SAY   #                                                                #
SAY   #  Press <ENTER> to boot pkgLinux-2022Q2 or wait 5 seconds.      #
SAY   #                                                                #
SAY   #  Press <TAB> to view available boot entries or enter Syslinux  #
SAY   #  commands directly.                                            #
SAY   #                                                                #
SAY   ##################################################################
SAY

LABEL pkglinux
	LINUX  /boot/x86_64/vmlinuz
	APPEND tpm_tis.interrupts=0 acpi=0 sfs root=LABEL=$ISOID rootdelay=2
#	APPEND root=live:LABEL=$ISOID rd.live.debug=1 rd.live.overlay.overlayfs=1 rd.live.overlay.readonly=1 rd.live.dir=/$SFSID rd.live.squashimg=pkglinux.sfs
	INITRD /boot/x86_64/initram.fs

LABEL rescue
	LINUX  /boot/x86_64/vmlinuz
	APPEND single root=LABEL=$ISOID rootdelay=2
	INITRD /boot/x86_64/initram.fs
EOF

cp -v /pkg/native/boot/vmlinuz-* $ISODIR/boot/$(uname -m)/vmlinuz
cp -v /pkg/native/boot/*-linux-kernel-*.config  $ISODIR/boot/$(uname -m)/config

mkdir -p $ISODIR/$SFSID
cp -v /root/pkglinux.sfs $ISODIR/$SFSID/pkglinux.sfs
#cp -v "/pkg/native/boot/initramfs-$KVER" "$ISODIR/boot/$(uname -m)/initram.fs"
#dracut -a dmsquash-live -N -m "kernel-modules base" --filesystems "squashfs" initrd.dracut.img
#dracut -a metalmdsquash -N -m "kernel-modules base" --filesystems "squashfs" initrd.dracut.img --force
#require_binaries blkid cut curl efibootmgr head lsblk mdadm mkfs.ext4 mkfs.vfat mkfs.xfs mount parted partprobe sort tail vgs vgscan xfs_admin || return 1
#[root@pkgLinux ~]# cd /usr/bin
#[root@pkgLinux /usr/bin]# ln -snvf /pkg/bin/curl
#'./curl' -> '/pkg/bin/curl'
#[root@pkgLinux /usr/bin]# cd /sbin
#[root@pkgLinux /sbin]# ln -snvf /pkg/sbin/mkfs.vfat
#'./mkfs.vfat' -> '/pkg/sbin/mkfs.vfat'
#[root@pkgLinux /sbin]# ln -snvf /pkg/sbin/mkfs.xfs
#'./mkfs.xfs' -> '/pkg/sbin/mkfs.xfs'
#[root@pkgLinux /sbin]# ln -snvf /pkg/sbin/xfs_admin
#'./xfs_admin' -> '/pkg/sbin/xfs_admin'
#~/sda3/pkgsrc.2022Q2/net/isc-dhclient4

#cp -v "/root/initrd.dracut.img" "$ISODIR/boot/$(uname -m)/initram.fs"
cp -v "/pkg/native/boot/initramfs-$KVER" "$ISODIR/boot/$(uname -m)/initram.fs"

#-eltorito-alt-boot \
#-e isolinux/efiboot.img \
#-isohybrid-gpt-basdat \

mkdir -pv "$ISODIR/boot/grub"
cat << EOF > "$ISODIR/boot/grub/grub.cfg"
# Begin /boot/grub/grub.cfg
set default=0
set timeout=5

#insmod ext2
#insmod ext4
#set root=(hd0,1)

insmod part_msdos
insmod fat
insmod iso9660
insmod search
insmod probe

search --no-floppy --set=__ISOROOT_ --file '/boot/$ISOID'
probe --set __ISO_UUID --fs-uuid "\${__ISOROOT}"

menuentry "pkgLinux / KERNEL $KVER" {
#	linux   /boot/x86_64/vmlinuz sfs root=UUID=\${__ISO_UUID} rootdelay=2
	linux   /boot/x86_64/vmlinuz sfs root=LABEL=$ISOID rootdelay=2
#	linux   /boot/x86_64/vmlinuz root=live:LABEL=$ISOID rd.live.debug=1 rd.live.overlay.overlayfs=1 rd.live.overlay.readonly=1 rd.live.dir=/$SFSID rd.live.squashimg=pkglinux.sfs
	initrd  /boot/x86_64/initram.fs
}
menuentry "pkgLinux / KERNEL $KVER (RESCUE mode)" {
#	linux   /boot/x86_64/vmlinuz single root=UUID=\${__ISO_UUID} rootdelay=2
	linux   /boot/x86_64/vmlinuz single root=LABEL=$ISOID rootdelay=2
	initrd  /boot/x86_64/initram.fs
}
EOF

EFI_IMG=$(mktemp)

grub-mkimage-efi -O x86_64-efi \
	-o "$EFI_IMG" \
	-p /boot/grub \
	efi_gop efi_uga boot linux search normal configfile part_gpt btrfs ext2 fat iso9660 loopback test keystatus gfxmenu regexp probe all_video gfxterm font echo read ls cat png jpeg halt reboot

export MTOOLS_SKIP_CHECK=1

mkfs.vfat -C "$ISODIR/efi.img" \
	$(($(wc -c < $EFI_IMG) / 1024 + 511))

mmd -i "$ISODIR/efi.img" \
	efi \
	efi/boot

	mcopy -i "$ISODIR/efi.img" \
	"$EFI_IMG" \
	::efi/boot/bootx64.efi


rm -v PKGLINUX-$PREFIX-*

#	-hfsplus \
#	-hfsplus-serial-no fc4d1567781ece66 \
#	-hfsplus-block-size 512 \
#	-apm-block-size 512

#	-iso-level 3 \
xorriso -as mkisofs \
	-isohybrid-mbr /usr/share/syslinux/isohdpfx.bin \
	-b boot/syslinux/isolinux.bin \
	-c boot/syslinux/boot.cat \
	-no-emul-boot \
	-boot-load-size 4 \
	-boot-info-table \
	-V "$ISOID" \
	-o "$ISOFILE" \
	-eltorito-alt-boot \
	-no-emul-boot \
	-e efi.img \
	-isohybrid-gpt-basdat \
	$ISODIR

md5sum $ISOFILE > $ISOFILE.md5

#Captcha does not let me post answers. So as comment: "-boot-load-size 4 -boot-info-table" must be written before "-eltorito-alt-boot", because they are meant as modifying options for "-b". After "-eltorito-alt-boot" comes the realm of "-e". There you need another option "-no-emul-boot" (as with "-b") in order to avoid the error message about floppy emulation sizes. But do not use "-boot-load-size" or "-boot-info-table" for the EFI image. – Thomas Schmitt Dec 27, 2018 at 9:21

#	-eltorito-alt-boot \
#	-append_partition 1 0xef $ISODIR/efi.img \
#	-graft-points efi.img=iso/efi.img \
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

