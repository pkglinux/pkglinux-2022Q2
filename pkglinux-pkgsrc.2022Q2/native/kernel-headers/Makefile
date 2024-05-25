# $NetBSD$


LINUX_NAME=	linux
#LINUX_VERSION=	5.14.13
#LINUX_VERSION=	5.19.1
LINUX_VERSION=	5.18.17
DISTNAME=	${LINUX_NAME}-${LINUX_VERSION}
CATEGORY=	native
CATEGORIES=	${CATEGORY}
PKGNAME=	${CATEGORY}-${LINUX_NAME}-API-headers-${LINUX_VERSION}
MASTER_SITES=	http://www.kernel.org/pub/linux/kernel/v5.x/
EXTRACT_SUFX=	.tar.xz
MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.kernel.org/
COMMENT=	Linux kernel headers
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

USE_TOOLS+=		gmake perl

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed

#BUILD_DEPENDS+=	kmod-[0-9]*:../../linux/kmod

HAS_CONFIGURE=		no
#NO_BUILD=		yes
NO_CONFIGURE=		yes
GNU_CONFIGURE=		no

#USE_LANGUAGES=		c c++
#USE_NATIVE_GCC=	no
#USE_PKGSRC_GCC=	yes
#GCC_REQD+=		6

# Don't let the Linux kernel get accidently deinstalled.
# XXX todo: fix pkg_info to not be so noisy about this
# XXX       maybe say "Package preserve option is set" or ...?
#PKG_PRESERVE=	# defined

#GNU_CONFIGURE_PREFIX=	${PREFIX}/native

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])

CROSS_MARCH?=		${MACHINE_GNU_PLATFORM:C/-.*-linux-gnu.*//g}
.if !empty(CROSS_MARCH:Mi[3-6]86)
CROSS_KARCH?=		${CROSS_MARCH:C/i[3-6]86/i386/g}
# i386 is not supported by glibc
.elif ${CROSS_MARCH} == "x86_64"
CROSS_KARCH?=		x86_64
.elif ${CROSS_MARCH} == "ia64"
CROSS_KARCH?=		ia64
.elif !empty(CROSS_MARCH:Marm*)
CROSS_KARCH?=		arm
.elif ${CROSS_MARCH} == "aarch64"
CROSS_KARCH?=		${CROSS_MARCH:S/aarch/arm/}
.elif !empty(CROSS_MARCH:Mmips*)
CROSS_KARCH?=		mips
.elif !empty(CROSS_MARCH:Mriscv*)
CROSS_KARCH?=		riscv
.elif ${CROSS_MARCH} == "s390x"
CROSS_KARCH?=		s390
.elif !empty(CROSS_MARCH:Msh*)
CROSS_KARCH?=		sh
.else
CROSS_KARCH?=		${CROSS_MARCH:S/64//}
.endif

MAK_ENV+=		BUILD_CC=${PREFIX}/gcc6/bin/gcc
MAK_ENV+=		HOSTCC=${PREFIX}/gcc6/bin/gcc
MAK_ENV+=		CC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
MAK_ENV+=		GCC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
MAK_ENV+=		CXX_FOR_BUILD=${PREFIX}/gcc6/bin/g++
MAK_ENV+=		AR_FOR_BUILD=${PREFIX}/bin/gar
MAK_ENV+=		AS_FOR_BUILD=${PREFIX}/bin/gas
MAK_ENV+=		LD_FOR_BUILD=${PREFIX}/bin/gld
MAK_ENV+=		NM_FOR_BUILD=${PREFIX}/bin/gnm
MAK_ENV+=		OBJCOPY_FOR_BUILD=${PREFIX}/bin/gobjcopy
MAK_ENV+=		OBJDUMP_FOR_BUILD=${PREFIX}/bin/gobjdump
MAK_ENV+=		READELF_FOR_BUILD=${PREFIX}/bin/greadelf
MAK_ENV+=		RANLIB_FOR_BUILD=${PREFIX}/bin/granlib
MAK_ENV+=		STRIP_FOR_BUILD=${PREFIX}/bin/gstrip
MAK_ENV+=		CC_FOR_TARGET=${PREFIX}/gcc6/bin/gcc
MAK_ENV+=		GCC_FOR_TARGET=${PREFIX}/gcc6/bin/gcc
MAK_ENV+=		CXX_FOR_TARGET=${PREFIX}/gcc6/bin/g++
MAK_ENV+=		AR_FOR_TARGET=${PREFIX}/bin/gar
MAK_ENV+=		AS_FOR_TARGET=${PREFIX}/bin/gas
MAK_ENV+=		LD_FOR_TARGET=${PREFIX}/bin/gld
MAK_ENV+=		NM_FOR_TARGET=${PREFIX}/bin/gnm
MAK_ENV+=		OBJCOPY_FOR_TARGET=${PREFIX}/bin/gobjcopy
MAK_ENV+=		OBJDUMP_FOR_TARGET=${PREFIX}/bin/gobjdump
MAK_ENV+=		READELF_FOR_TARGET=${PREFIX}/bin/greadelf
MAK_ENV+=		RANLIB_FOR_TARGET=${PREFIX}/bin/granlib
MAK_ENV+=		STRIP_FOR_TARGET=${PREFIX}/bin/gstrip
MAK_ENV+=		CC=${PREFIX}/gcc6/bin/gcc
MAK_ENV+=		GCC=${PREFIX}/gcc6/bin/gcc
MAK_ENV+=		CXX=${PREFIX}/gcc6/bin/g++
MAK_ENV+=		AR=${PREFIX}/bin/gar
MAK_ENV+=		AS=${PREFIX}/bin/gas
MAK_ENV+=		LD=${PREFIX}/bin/gld
MAK_ENV+=		NM=${PREFIX}/bin/gnm
MAK_ENV+=		OBJCOPY=${PREFIX}/bin/gobjcopy
MAK_ENV+=		OBJDUMP=${PREFIX}/bin/gobjdump
MAK_ENV+=		READELF=${PREFIX}/bin/greadelf
MAK_ENV+=		RANLIB=${PREFIX}/bin/granlib
MAK_ENV+=		STRIP=${PREFIX}/bin/gstrip

NO_BUILD=		yes
USE_LANGUAGES=		c

do-install:
	${ECHO} "Building ${PKGNAME} of ${CROSS_KARCH} for ${MACHINE_GNU_PLATFORM} ..."
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/
	cd ${WRKSRC} && ${SETENV} ${MAK_ENV} ${GMAKE} mrproper
	cd ${WRKSRC} && ${SETENV} ${MAK_ENV} ${GMAKE} -j${MAKE_JOBS} ARCH=${CROSS_KARCH} \
	INSTALL_HDR_PATH=${DESTDIR}${PREFIX}/native/usr headers_install

PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} native \( -type f -o -type l \) -print | ${SORT} ;

.else

TOOLS_PLATFORM.sed=		/pkg/bin/gsed

do-build:
	cd ${WRKSRC} && ${GMAKE} mrproper && ${GMAKE} -j${MAKE_JOBS} headers && \
	${FIND} usr/include -name ".*" -exec ${RM} -rf {} \; && \
	${RM} -f usr/include/Makefile

do-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/
	cd ${WRKSRC} && ${CP} -rv usr/include ${DESTDIR}${PREFIX}/native/usr/
	${CP} -v ${FILESDIR}/cyclades.h ${DESTDIR}${PREFIX}/native/usr/include/linux/

.endif

.include "../../mk/bsd.pkg.mk"
