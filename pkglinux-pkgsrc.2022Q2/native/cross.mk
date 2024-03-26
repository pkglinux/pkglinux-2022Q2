
#CROSS_TARGET?=		aarch64-unknown-linux-gnu
#CROSS_TARGET?=		arm-unknown-linux-gnueabi
CROSS_TARGET?=		armeb-unknown-linux-gnueabi
#CROSS_TARGET?=		armv6-unknown-linux-gnueabi
#CROSS_TARGET?=		armv6-unknown-linux-gnueabihf
#CROSS_TARGET?=		armv7-rpi2-linux-gnueabihf
#CROSS_TARGET?=		armv8-rpi3-linux-gnueabihf
#CROSS_TARGET?=		armv8-rpi4-linux-gnueabihf
#CROSS_TARGET?=		x86_64-unknown-linux-gnu
#CROSS_TARGET?=		i686-unknown-linux-gnu
#CROSS_TARGET?=		mipseb-unknown-linux-gnu
#CROSS_TARGET?=		mipsel-unknown-linux-gnu
#CROSS_TARGET?=		mips64-unknown-linux-gnu
#CROSS_TARGET?=		mips64el-unknown-linux-gnu
#CROSS_TARGET?=		powerpc-unknown-linux-gnu
#CROSS_TARGET?=		powerpc64-unknown-linux-gnu
#CROSS_TARGET?=		riscv64-unknown-linux-gnu
#CROSS_TARGET?=		s390-unknown-linux-gnu
#CROSS_TARGET?=		s390x-unknown-linux-gnu
#CROSS_TARGET?=		sh-unknown-linux-gnu
#CROSS_TARGET?=		sparc-unknown-linux-gnu
#CROSS_TARGET?=		sparc64-unknown-linux-gnu
CROSS_MNAME?=		cross-${CROSS_TARGET:S/-linux-gnu//:S/-unknown//}