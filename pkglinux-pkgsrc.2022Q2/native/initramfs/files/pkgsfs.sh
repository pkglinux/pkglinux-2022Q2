#!/bin/bash

v=""
#v="-v"
MNT="/tmp/pkgsfs.mnt"
rm -rf $v "$MNT"
mkdir -p $v "$MNT"

PREFIX="$(readlink /pkg)"
#REPO=$(grep -v -e "^#" -e "^$" "/pkg/etc/pkgin/repositories.conf")
REPO="http://192.168.31.140:8080/sda3/repos/packages.$PREFIX/All"

pkgstrap $v -p $PREFIX -d $MNT $REPO

pkgchroot $v -d $MNT /pkg/bin/pkgin up
pkgchroot $v -d $MNT /pkg/bin/pkgin in pkgiso -y
pkgchroot $v -d $MNT /pkg/bin/pkgin in firmware -y
pkgchroot $v -d $MNT /pkg/bin/pkgin clean
pkgchroot $v -d $MNT depmod -a
pkgchroot $v -d $MNT passwd -d root

(cd $MNT; ln $v -snf pkg/native/boot; rm -v libx32)
(cd $MNT/etc; cp $v inittab.bsd inittab)
(cd $MNT/etc; mv $v fstab.iso fstab)
(cd $MNT/lib/; ln $v -snf ../etc/modprobe.d)
(cd $MNT/pkg/etc/rc.d; cp $v ../../share/examples/rc.d/dhcpcd .)
(cd $MNT/pkg/etc/rc.d; cp $v ../../share/examples/rc.d/NetworkManager .)
(cd $MNT/pkg/etc/rc.d; cp $v ../../share/examples/rc.d/dbus .)
(cd $MNT/pkg/etc/rc.d; cp $v ../../share/examples/rc.d/sshd .)
(cd $MNT/pkg/etc; echo "#dhcpcd=YES" >> rc.conf)
(cd $MNT/pkg/etc; echo sshd=YES >> rc.conf)
(cd $MNT/pkg/etc; echo dbus=YES >> rc.conf)
(cd $MNT/pkg/etc; echo NetworkManager=YES >> rc.conf)
(cd $MNT; rm -f $v lib/*.a usr/lib/*.a pkg/lib/*.a)
(cd $MNT; rm -rf $v lib/pkgconfig usr/lib/pkgconfig pkg/lib/pkgconfig)
(cd $MNT; rm -rf $v pkg/include usr/include)

rm -f $v pkglinux.sfs
mksquashfs $MNT pkglinux.sfs -comp xz -b 1024K -always-use-fragments
