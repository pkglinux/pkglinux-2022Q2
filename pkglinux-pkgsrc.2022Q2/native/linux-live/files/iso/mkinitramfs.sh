#!/bin/bash
# This file based in part on the mkinitramfs script for the LFS LiveCD
# written by Alexander E. Patrakov and Jeremy Huntwork.

copy()
{
  local file

  if [ "$2" == "lib" ]; then
    file=$(PATH=/lib:/usr/lib type -p $1)
  else
    file=$(type -p $1)
  fi

  if [ -n $file ] ; then
    cp $file $WDIR/$2
  else
    echo "Missing required file: $1 for directory $2"
    rm -rf $WDIR
    exit 1
  fi
}

if [ -z $1 ] ; then
  INITRAMFS_FILE=initrd.img-no-kmods
else
  KERNEL_VERSION=$1
  INITRAMFS_FILE=initrd.img-$KERNEL_VERSION
fi

if [ -n "$KERNEL_VERSION" ] && [ ! -d "/lib/modules/$1/" ] ; then
  echo "No modules directory named $1"
  exit 1
fi

printf "Creating $INITRAMFS_FILE... "

binfiles="sh cat cp dd killall ls mkdir mknod mount "
binfiles="$binfiles umount sed sleep ln rm uname"
binfiles="$binfiles readlink basename"

# Systemd installs udevadm in /bin. Other udev implementations have it in /sbin
if [ -x /bin/udevadm ] ; then binfiles="$binfiles udevadm"; fi

sbinfiles="modprobe blkid switch_root"

#Optional files and locations
for f in mdadm mdmon udevd udevadm; do
  if [ -x /sbin/$f ] ; then sbinfiles="$sbinfiles $f"; fi
done

unsorted=$(mktemp /tmp/unsorted.XXXXXXXXXX)

#DATADIR=/usr/share/mkinitramfs
#DATADIR=/root/iso
DATADIR=/21Q1/native/linux-live/iso
INITIN=init0.in

# Create a temporary working directory
WDIR=$(mktemp -d /tmp/initrd-work.XXXXXXXXXX)

# Create base directory structure
mkdir -p $WDIR/{bin,dev,lib/firmware,run,sbin,sys,proc,usr}
mkdir -p $WDIR/etc/{modprobe.d,udev/rules.udev/hwdb.d}
touch $WDIR/etc/modprobe.d/modprobe.conf
ln -s lib $WDIR/lib64
ln -s ../bin $WDIR/usr/bin
cp -a /etc/selinux $WDIR/etc/

# Create necessary device nodes
mknod -m 640 $WDIR/dev/console c 5 1
mknod -m 664 $WDIR/dev/null    c 1 3

# Install the udev configuration files
if [ -f /etc/udev/udev.conf ]; then
  cp /etc/udev/udev.conf $WDIR/etc/udev/udev.conf
fi

for file in $(find /etc/udev/hwdb.d/ -type f) ; do
  cp $file $WDIR/etc/udev/hwdb.d
done
for file in $(find /etc/udev/rules.d/ -type f) ; do
  cp $file $WDIR/etc/udev/rules.d
done
rm -f $WDIR/etc/udev/rules.d/55-lfs.rules

#rm -f $WDIR/lib/udev/rules.d/50-udev-default.rules
#rm -f $WDIR/lib/udev/rules.d/60-block.rules
#rm -f $WDIR/lib/udev/rules.d/60-persistent-input.rules
#rm -f $WDIR/lib/udev/rules.d/60-persistent-storage.rules
#rm -f $WDIR/lib/udev/rules.d/60-persistent-storage-tape.rules
#rm -f $WDIR/lib/udev/rules.d/60-evdev.rules
#rm -f $WDIR/lib/udev/rules.d/60-persistent-v4l.rules
#rm -f $WDIR/lib/udev/rules.d/60-input-id.rules
#rm -f $WDIR/lib/udev/rules.d/60-sensor.rules
#rm -f $WDIR/lib/udev/rules.d/60-persistent-alsa.rules
#rm -f $WDIR/lib/udev/rules.d/60-serial.rules
#rm -f $WDIR/lib/udev/rules.d/80-drivers.rules
#rm -f $WDIR/lib/udev/rules.d/80-net-name-slot.rules
#rm -f $WDIR/lib/udev/rules.d/80-libinput-device-groups.rules
#rm -f $WDIR/lib/udev/rules.d/80-udisks2.rules


#rm -f $WDIR/etc/udev/rules.d/50-udev-default.rules
#rm -f $WDIR/etc/udev/rules.d/60-block.rules
#rm -f $WDIR/etc/udev/rules.d/60-persistent-input.rules
#rm -f $WDIR/etc/udev/rules.d/60-persistent-storage.rules
#rm -f $WDIR/etc/udev/rules.d/60-persistent-storage-tape.rules
#rm -f $WDIR/etc/udev/rules.d/60-evdev.rules
#rm -f $WDIR/etc/udev/rules.d/60-persistent-v4l.rules
#rm -f $WDIR/etc/udev/rules.d/60-input-id.rules
#rm -f $WDIR/etc/udev/rules.d/60-sensor.rules
#rm -f $WDIR/etc/udev/rules.d/60-persistent-alsa.rules
#rm -f $WDIR/etc/udev/rules.d/60-serial.rules
#rm -f $WDIR/etc/udev/rules.d/80-drivers.rules
#rm -f $WDIR/etc/udev/rules.d/80-net-name-slot.rules
#rm -f $WDIR/etc/udev/rules.d/80-libinput-device-groups.rules
#rm -f $WDIR/etc/udev/rules.d/80-udisks2.rules

# Install any firmware present
#cp -a /lib/firmware $WDIR/lib
cp -a ./firmware $WDIR/lib

# Copy the RAID configuration file if present
if [ -f /etc/mdadm.conf ] ; then
  cp /etc/mdadm.conf $WDIR/etc
fi

# Install the init file
#install -m0755 $DATADIR/$INITIN $WDIR/init
#install -m0755 $INITIN $WDIR/init
install -m0755 init.sh $WDIR/init

mkdir -pv $WDIR/{bin,boot,lib}
cp -v id_label $WDIR/boot/
cp -v /bin/busybox $WDIR/bin/
cp -v /21Q1/bin/unsquashfs $WDIR/bin/
mkdir -pv $WDIR/mnt/{medium,system,rootfs}
chmod 777 $WDIR/mnt/{medium,system,rootfs}


if [  -n "$KERNEL_VERSION" ] ; then
  if [ -x /bin/kmod ] ; then
    binfiles="$binfiles kmod"
  else
    binfiles="$binfiles lsmod"
    sbinfiles="$sbinfiles insmod"
  fi
fi

# Install basic binaries
for f in $binfiles ; do
  ldd /bin/$f | sed "s/\t//" | cut -d " " -f1 >> $unsorted
  copy $f bin
done

# Add lvm if present
if [ -x /sbin/lvm ] ; then sbinfiles="$sbinfiles lvm dmsetup"; fi

for f in $sbinfiles ; do
  ldd /sbin/$f | sed "s/\t//" | cut -d " " -f1 >> $unsorted
  copy $f sbin
done

# Add udevd libraries if not in /sbin
if [ -x /lib/udev/udevd ] ; then
  ldd /lib/udev/udevd | sed "s/\t//" | cut -d " " -f1 >> $unsorted
elif [ -x /lib/systemd/systemd-udevd ] ; then
  ldd /lib/systemd/systemd-udevd | sed "s/\t//" | cut -d " " -f1 >> $unsorted
fi

# Add module symlinks if appropriate
if [ -n "$KERNEL_VERSION" ] && [ -x /bin/kmod ] ; then
  ln -s kmod $WDIR/bin/lsmod
  ln -s kmod $WDIR/bin/insmod
fi

# Add lvm symlinks if appropriate
# Also copy the lvm.conf file
if  [ -x /sbin/lvm ] ; then
  ln -s lvm $WDIR/sbin/lvchange
  ln -s lvm $WDIR/sbin/lvrename
  ln -s lvm $WDIR/sbin/lvextend
  ln -s lvm $WDIR/sbin/lvcreate
  ln -s lvm $WDIR/sbin/lvdisplay
  ln -s lvm $WDIR/sbin/lvscan

  ln -s lvm $WDIR/sbin/pvchange
  ln -s lvm $WDIR/sbin/pvck
  ln -s lvm $WDIR/sbin/pvcreate
  ln -s lvm $WDIR/sbin/pvdisplay
  ln -s lvm $WDIR/sbin/pvscan

  ln -s lvm $WDIR/sbin/vgchange
  ln -s lvm $WDIR/sbin/vgcreate
  ln -s lvm $WDIR/sbin/vgscan
  ln -s lvm $WDIR/sbin/vgrename
  ln -s lvm $WDIR/sbin/vgck
  # Conf file(s)
  cp -a /etc/lvm $WDIR/etc
fi

# Install libraries
sort $unsorted | uniq | while read library ; do
  if [ "$library" == "linux-vdso.so.1" ] ||
     [ "$library" == "linux-gate.so.1" ]; then
    continue
  fi

  copy $library lib
done

if [ -d /lib/udev ]; then
  cp -aL /lib/udev $WDIR/lib
fi
mkdir -p $WDIR/usr/lib/
if [ -d /usr/lib/udev ]; then
  cp -aL /usr/lib/udev $WDIR/usr/lib
fi
if [ -d /lib/systemd ]; then
  cp -a /lib/systemd $WDIR/lib
fi

# Install the kernel modules if requested
#     /lib/modules/$KERNEL_VERSION/kernel/{crypto,fs,lib}                      \
#     /lib/modules/$KERNEL_VERSION/kernel/drivers/{block,ata,md,firewire,pci}  \
#     /lib/modules/$KERNEL_VERSION/kernel/drivers/{scsi,message,pcmcia,virtio} \
#     /lib/modules/$KERNEL_VERSION/kernel/drivers/usb/{core,common,host,storage}           \

#     /lib/modules/$KERNEL_VERSION/kernel/{crypto,fs,lib,drivers}              \
if [ -n "$KERNEL_VERSION" ]; then
  find                                                                        \
     /lib/modules/$KERNEL_VERSION/kernel/{crypto,fs,lib,drivers}              \
     -type f | grep -v "/drivers/net/" 2> /dev/null | cpio --make-directories -p --quiet $WDIR

  cp /lib/modules/$KERNEL_VERSION/modules.{builtin,order}                     \
            $WDIR/lib/modules/$KERNEL_VERSION

  depmod -b $WDIR $KERNEL_VERSION
fi

mkdir -p $WDIR/21Q1/native/
( cd $WDIR/21Q1/native/; ln -sf ../../usr .)
( cd $WDIR/21Q1/native/; ln -sf ../../lib .)
( cd $WDIR/21Q1/native/; ln -sf ../../lib64 .)
( cd $WDIR/usr/; ln -sf ../21Q1 pkg)
( cd $WDIR/21Q1/; ln -sf ../etc .)
( cd $WDIR/21Q1/; ln -sf ../lib .)
( cd $WDIR/21Q1/; ln -sf ../lib64 .)

( cd $WDIR ; find . | cpio -o -H newc --quiet | gzip -9 ) > $INITRAMFS_FILE

# Prepare early loading of microcode if available
if ls /lib/firmware/intel-ucode/* >/dev/null 2>&1 ||
   ls /lib/firmware/amd-ucode/*   >/dev/null 2>&1; then

# first empty WDIR to reuse it
  rm -r $WDIR/*

  DSTDIR=$WDIR/kernel/x86/microcode
  mkdir -p $DSTDIR

  if [ -d /lib/firmware/amd-ucode ]; then
    cat /lib/firmware/amd-ucode/microcode_amd*.bin > $DSTDIR/AuthenticAMD.bin
  fi

  if [ -d /lib/firmware/intel-ucode ]; then
    cat /lib/firmware/intel-ucode/* > $DSTDIR/GenuineIntel.bin
  fi

  ( cd $WDIR; find . | cpio -o -H newc --quiet ) > microcode.img
  cat microcode.img $INITRAMFS_FILE > tmpfile
  mv tmpfile $INITRAMFS_FILE
  rm microcode.img
fi

# Remove the temporary directory and file
rm -rf $WDIR $unsorted
printf "done.\n"

