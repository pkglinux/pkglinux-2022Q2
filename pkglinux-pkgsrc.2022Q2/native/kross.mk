
.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CROSS_MARCH?=		${MACHINE_GNU_PLATFORM:C/-.*-linux-gnu.*//g}
.else
CROSS_MARCH?=		${CROSS_TARGET:C/-.*-linux-gnu.*//g}
.endif
.if !empty(CROSS_MARCH:Mi[3-6]86)
CROSS_KARCH?=		${CROSS_MARCH:C/i[3-6]86/i386/g}
# i386 is not supported by glibc
.elif ${CROSS_MARCH} == "x86_64"
CROSS_KARCH?=		x86
CROSS_KIMAGE?=		bzImage
.elif ${CROSS_MARCH} == "ia64"
CROSS_KARCH?=		ia64
.elif !empty(CROSS_MARCH:Marm*)
CROSS_KARCH?=		arm
.elif ${CROSS_MARCH} == "aarch64"
CROSS_KARCH?=		${CROSS_MARCH:S/aarch/arm/}
.elif !empty(CROSS_MARCH:Mmips*)
CROSS_KARCH?=		mips
CROSS_KIMAGE?=		vmlinux.bin.gz
.elif !empty(CROSS_MARCH:Mriscv*)
CROSS_KARCH?=		riscv
.elif ${CROSS_MARCH} == "s390x"
CROSS_KARCH?=		s390
.elif !empty(CROSS_MARCH:Msh*)
CROSS_KARCH?=		sh
.else
CROSS_KARCH?=		${CROSS_MARCH:S/64//}
.endif
