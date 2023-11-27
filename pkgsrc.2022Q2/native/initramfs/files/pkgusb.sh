#!/bin/bash

USB=/dev/sdb
[[ "$#" -eq 1 ]] || { echo "no device specified"; exit; }
[[ "$#" -gt 0 ]] && { USB=$1; }
USB1="$USB""1"
USB2="$USB""2"
USB3="$USB""3"
SFSID=2E3BBAD13EE71185111385472854A0FF
PREFIX="$(readlink /pkg)"
USBLABEL="$PREFIX"-"$(cat /dev/urandom | base64 | head -c7)"
echo "USBLABEL=$USBLABEL"
e2label $USB2 ""
e2label $USB3 "$USBLABEL"
USBDIR1="/mnt/usb1"
USBDIR2="/mnt/usb2"
USBDIR3="/mnt/usb3"
rm -rfv $USBDIR1 $USBDIR2 $USBDIR3
mkdir -pv $USBDIR1 $USBDIR2 $USBDIR3
mount $USB1 $USBDIR1
mount $USB2 $USBDIR2
mount $USB3 $USBDIR3
chattr -R -a -i $USBDIR1/* $USBDIR2/* $USBDIR3/*
rm -rfv $USBDIR1/* $USBDIR2/* $USBDIR3/*
KVER="$(uname -r)"

grub-install-efi --boot-directory=$USBDIR1/boot --efi-directory=$USBDIR1 --target=x86_64-efi $USB
grub-install --boot-directory=$USBDIR2/boot $USB

cp -v /pkg/native/boot/vmlinuz-* $USBDIR1/boot/
cp -v /pkg/native/boot/vmlinuz-* $USBDIR2/boot/
cp -v /pkg/native/boot/initramfs-$KVER $USBDIR1/boot/
cp -v /pkg/native/boot/initramfs-$KVER $USBDIR2/boot/
cp -v /pkg/native/boot/*-linux-kernel-*.config  $USBDIR1/boot/
cp -v /pkg/native/boot/*-linux-kernel-*.config  $USBDIR1/boot/

mkdir -p $USBDIR3/$SFSID
rsync -av /$SFSID/pkglinux.sfs $USBDIR3/$SFSID/pkglinux.sfs


mkdir -pv "$USBDIR2/boot/grub"
cat << EOF > "$USBDIR2/boot/grub/grub.cfg"
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
insmod ext2
insmod ext4

#search --no-floppy --set=__USBROOT_ --file '/boot/$USBLABEL'
#probe --set __USB_UUID --fs-uuid "\${__USBROOT}"

menuentry "pkgLinux / KERNEL $KVER" {
	linux   /boot/vmlinuz-$KVER sfs root=LABEL=$USBLABEL rootdelay=2
	initrd  /boot/initramfs-$KVER
}
menuentry "pkgLinux / KERNEL $KVER (RESCUE mode)" {
	linux   /boot/vmlinuz-$KVER single root=LABEL=$USBLABEL rootdelay=2
	initrd  /boot/initramfs-$KVER
}
EOF

mkdir -pv "$USBDIR1/boot/grub"
cat << EOF > "$USBDIR1/boot/grub/grub.cfg"
set default=0
set timeout=5

#loadfont "unicode"
#set gfxmode=auto
#set gfxpayload=keep
#insmod all_video
#insmod gfxterm
#terminal_output gfxterm
#GRUB_TERMINAL=console

#no suitable video mode found
#Booting in blind mode

insmod all_video
set gfxmode=0


#search --no-floppy --set=__USBROOT_ --file '/boot/$USBLABEL'
#probe --set __USB_UUID --fs-uuid "${__USBROOT}"

menuentry "pkgLinux / KERNEL 5.18.17" {
	linux   /boot/vmlinuz-5.18.17 sfs root=LABEL=$USBLABEL rootdelay=2
	initrd  /boot/initramfs-5.18.17
}
menuentry "pkgLinux / KERNEL 5.18.17 (RESCUE mode)" {
	linux   /boot/vmlinuz-5.18.17 single root=LABEL=$USBLABEL rootdelay=2
	initrd  /boot/initramfs-5.18.17
}
EOF

#dd bs=440 count=1 if=/usr/share/syslinux/mbr.bin of=${USB%?}
#dd bs=432 count=1 if=/usr/share/syslinux/isohdpfx.bin of=${USB%?}
#printf '\x5' | cat /usr/lib/syslinux/bios/altmbr.bin - | sudo dd bs=440 count=1 iflag=fullblock of=${USB%?}
#extlinux --install $USBDIR

#cfdisk /dev/sdc
#/dev/sdc2 bootable
#fdisk /dev/sdc
#t 1 ef w
#mkfs.fat -F 32 /dev/sdc1
#mkfs.ext4 /dev/sdc2
#mount /dev/sdc1 /mnt/usb
#grub-install-efi --boot-directory=/mnt/usb/boot --efi-directory=/mnt/usb --target=x86_64-efi /dev/sdc
#mount /dev/sdc2 /mnt/usb
#grub-install --boot-directory=/mnt/usb/boot /dev/sdc
umount $USBDIR1 $USBDIR2 $USBDIR3
rmdir -v $USBDIR1 $USBDIR2 $USBDIR3
echo "Sync disks ..."
sync
sync
