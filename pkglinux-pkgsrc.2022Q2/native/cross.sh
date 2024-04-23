#!/bin/bash -ue
	
rebuild () {
	cd ~/pkglinux-pkgsrc/native/cross-$1
	bmake clean
	bmake CROSS_TARGET=$2 reinstall
	bmake clean
	pkg-sum $(readlink /pkg)
	sync
	pkgin ug -y
}

gcc-final () {
	CROSS_MNAME=${1//-unknown-linux-gnu/}
	pkg_delete cross-${CROSS_MNAME}-gcc
	cd ~/pkglinux-pkgsrc/native/cross-gcc
	bmake clean
	bmake FINAL=yes CROSS_TARGET=$1 reinstall
	bmake clean
}

if [ "$#" -eq 0 ]; then
	args=(
		#"aarch64-unknown-linux-gnu"
		#"arm-unknown-linux-gnueabi"
		#"armeb-unknown-linux-gnueabi"
		#"armv6-unknown-linux-gnueabi"
		#"armv6-unknown-linux-gnueabihf"
		#"armv7-rpi2-linux-gnueabihf"
		#"armv8-rpi3-linux-gnueabihf"
		#"armv8-rpi4-linux-gnueabihf"
		#"x86_64-unknown-linux-gnu"
		#"i686-unknown-linux-gnu"
		#"mipseb-unknown-linux-gnu"
		#"mipsel-unknown-linux-gnu"
		"mips64-unknown-linux-gnuabin32"
		"mips64el-unknown-linux-gnuabin32"
		"mips64-unknown-linux-gnuabi64"
		"mips64el-unknown-linux-gnuabi64"
		#"powerpc-unknown-linux-gnu"
		#"powerpc64-unknown-linux-gnu"
		#"riscv64-unknown-linux-gnu"
		#"s390-unknown-linux-gnu"
		#"s390x-unknown-linux-gnu"
		#"sparc-unknown-linux-gnu"
		#"sparc64-unknown-linux-gnu"
	)
else
	args="$@"
fi

for i in "${args[@]}"; do
	printf 'Building cross tool chain for %s\n' "$i"
		rebuild headers $i
		rebuild binutils $i
		rebuild gcc $i
		rebuild glibc $i
		gcc-final $i
done
