#!/bin/bash

# This command should instantly create a 10GB sparse file. The file will not actually take up 10GB of your precious free disk space. It's actual size will initially be zero. Once it has a file system, has been mounted and starts to contain actual files it will automatically grow and use real disk space as needed (up to 10GB). This means that the actual size of the file will never be greater than the minimum size needed to contain your system. 

dd if=/dev/zero of=rootfs-$(uname -m).img bs=1G seek=10 count=0

# This command should work on any machine with a recent kernel: 

#mkfs.ext4 -F rootfs-$(uname -m).img

# However, if you want to optimize for size at this stage (this does NOT affect the size of the final ISO image) and have btrfs available you could issue this one in stead:
# A compressed btrfs system image will take up about 500MB of space if you just install a basic LFS system on it, compared to 1.3GB for an uncompressed ext4 image.
# Any file system for Linux should work just fine, and it does not even matter if the OS you will install in it has support for the file system you have selected. Later on, the image will be converted to SquashFS anyway. 

#mkfs.ext4 -F rootfs-$(uname -m).img
mkfs.btrfs rootfs-$(uname -m).img

mkdir -pv /mnt

#mount -o loop rootfs-$(uname -m).img /mnt

# Or if you used btrfs: 

modprobe loop
mount -o loop,compress rootfs-$(uname -m).img /mnt

# Install your system to the image

/root/mylinux/iso.install.sh

# It is a bad idea to keep SSH keys on your Live CD, so remove them: 

rm -rvf /mnt/iso/etc/ssh/ssh_host_*_key

umount /mnt/iso
