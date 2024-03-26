#!/bin/bash -ue
	
rebuild () {
	cd ~/pkglinux-pkgsrc/native/cross-$1
	bmake clean
	bmake CROSS_TARGET=$2 reinstall
	bmake clean
	pkgin up
	pkgin ug -y
}

gcc-final () {
	CROSS_MNAME=${1//-linux-gnu/}
	CROSS_MNAME=${CROSS_MNAME//-unknown/}
	pkg_delete cross-${CROSS_MNAME}-gcc
	cd ~/pkglinux-pkgsrc/native/cross-gcc
	bmake clean
	bmake FINAL=yes CROSS_TARGET=$1 reinstall
	bmake clean
}

rebuild headers $1
rebuild binutils $1
rebuild gcc $1
rebuild glibc $1
gcc-final $1
