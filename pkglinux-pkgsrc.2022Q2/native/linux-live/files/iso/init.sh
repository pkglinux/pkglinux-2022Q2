#!/bin/busybox sh

set -e

ARCH="x86_64"

###########################################
copyBindMount() { # COPY/BIND LIVECD MODE #
###########################################

# This function bind-mounts directories which are designed to be capable of
# read-only access and copies the remaining directories to a tmpfs.
#
# The downside of this method is that the resulting root filesystem is not
# fully writable. So, for example, installation of new programs will not be
# possible.
#
# However, this function can be used without any modification to the kernel and
# is therefore perfect for use as a fallback if other options are not available.

# Mount a tmpfs where the new rootfs will be.
mount -t tmpfs tmpfs ${ROOT} # Allows remounting root in the bootscripts

# Bind mount read-only filesystems, copy the rest
cd /mnt/system
for dir in $(ls -1); do
    case ${dir} in
        lost+found)
            ;;
        bin | boot | lib | opt | sbin | usr)
            mkdir ${ROOT}/${dir}
            mount --bind ${dir} ${ROOT}/${dir}
            ;;
        *)
            cp -R ${dir} ${ROOT}
            ;;
    esac
done
cd /

#############################################
}; overlayMount() { # OVERLAYFS LIVECD MODE #
#############################################

# An overlay mount takes one or more directories and combines them transparantly
# in a third. This function creates a writable directory in memory (tmpfs) and
# uses it to overlay the read-only system image, resulting in a fully writable
# root file system.

mkdir -p /mnt/writable
mount -t tmpfs -o rw tmpfs /mnt/writable
mkdir -p /mnt/writable/upper
mkdir -p /mnt/writable/work

D_LOWER="/mnt/system"
D_UPPER="/mnt/writable/upper"
D_WORK="/mnt/writable/work"
OVERLAYFSOPT="lowerdir=${D_LOWER},upperdir=${D_UPPER},workdir=${D_WORK}"

mount -t overlay overlay -o ${OVERLAYFSOPT} ${ROOT} 2> /dev/null || {

    # If OverlayFS fails, fall back to copy/bind mounting
    copyBindMount
}

######################
} # END OF FUNCTIONS #
######################

#/bin/busybox mdev -s
# Make required applets easier to access
#for applet in cat chmod cp cut grep ls mkdir mknod mount umount switch_root; do
#    /bin/busybox ln -f /bin/busybox /bin/${applet}
#done

# Create mount points for filesystems
mkdir -p /mnt/medium
mkdir -p /mnt/system
mkdir -p /mnt/rootfs

mkdir -p /proc /dev /sys /run
#mount -n -t devtmpfs devtmpfs /dev
#mount -n -t proc     proc     /proc
#mount -n -t sysfs    sysfs    /sys
#mount -n -t tmpfs    tmpfs    /run

    mount -t proc proc /proc -o nosuid,noexec,nodev
    mount -t sysfs sysfs /sys -o nosuid,noexec,nodev
    mount -t devtmpfs dev /dev -o mode=0755,nosuid
    mount -t tmpfs run /run -o nosuid,nodev,mode=0755
    
# udevd location depends on version
if [ -x /sbin/udevd ]; then
  UDEVD=/sbin/udevd
elif [ -x /lib/udev/udevd ]; then
  UDEVD=/lib/udev/udevd
elif [ -x /lib/systemd/systemd-udevd ]; then
  UDEVD=/lib/systemd/systemd-udevd
else
  echo "Cannot find udevd nor systemd-udevd"
  problem
fi

    kmod static-nodes --format=tmpfiles --output=/run/tmpfiles.d/kmod.conf
#    systemd-tmpfiles --prefix=/dev --create --boot
#    /usr/lib/systemd/systemd-udevd --daemon --resolve-names=never
#    udevd_running=1

# PatrickVerner commented on Jul 10, 2013
#Thanks for the tip on the hwdb --update and the --daemon flag. I have these updated now. After about 20 hours worth of poking around I have the problem solved and it's not obvious. Gentoo should make a note of this on their udev doc so other people don't have the same issue. It's actually a kernel option that was doing it.
#    Device Drivers > Generic Driver Options
#        [ ] Fallback user-helper invocation for firmware loading
#This makes recent versions of eudev and systemd hang on "udevadm settle". I used this option on older versions of udev like 183. After disabling this, /sys/class/firmware/timeout is gone. In my scripts I would set the timeout like this "echo 120 > /sys/class/firmware/timeout". I rebuilt the kernel and edited out that line and it works perfect. No more hangs.


echo "Starting udev daemon..."
#udevadm hwdb --update
${UDEVD} --daemon --resolve-names=never
echo "Udevadm requesting events from the Kernel..."
udevadm trigger
udevadm trigger --type=subsystems --action=add
udevadm trigger --type=devices --action=add
udevadm trigger --type=devices --action=change
#echo "busybox sleep 1 ..."
#busybox sleep 1
echo "Udevadm waiting for the event queue to finish..."
#if [ -d /sys/bus/scsi ]; then
#  modprobe -q scsi_wait_scan && modprobe -r scsi_wait_scan
#  modprobe -r scsi_wait_scan
#fi
#udevadm settle || true
udevadm settle
#udevadm settle --timeout=10
#echo "${UDEVD}" > /proc/sys/kernel/hotplug

if [ -f /etc/mdadm.conf ] ; then mdadm -As                       ; fi
if [ -x /sbin/vgchange  ] ; then /sbin/vgchange -a y > /dev/null ; fi

DEVICE="$(busybox findfs LABEL=$(cat /boot/id_label))"
mount -o ro ${DEVICE} /mnt/medium || {
    echo "Failed to mount the boot medium."
    exec /bin/busybox sh
}

# Mount the system image
busybox mount -t squashfs -o ro,loop /mnt/medium/boot/${ARCH}/root.sfs /mnt/system || {
    if [ -r /mnt/medium/boot/${ARCH}/root.sfs ]; then
        echo "STOP: Unable to mount system image. The kernel probably lacks"
        echo "      SquashFS support. You may need to recompile it."
    else
        echo "STOP: Unable to mount system image. It seems to be missing."
    fi

    exec /bin/busybox sh
}

# Define where the new root filesystem will be
ROOT="/mnt/rootfs"

# Select LiveCD mode
overlayMount # Might fall back to copyBindMount

# Move current mounts to directories accessible in the new root
cd /mnt
for dir in $(ls -1); do
    if [ "${dir}" != "rootfs" ]; then
        mkdir -p ${ROOT}/mnt/.boot/${dir}
        mount --move /mnt/${dir} ${ROOT}/mnt/.boot/${dir}
    fi
done
cd /

# Switch to the new root and launch INIT!
#exec switch_root /.root "$init" "$@"
#exec busybox switch_root -c /dev/console /.root /sbin/init
#exec busybox sh
exec switch_root ${ROOT} /sbin/init
