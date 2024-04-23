# $NetBSD$

.include "../../native/cross.mk"
CROSS_MARCH?=		${CROSS_TARGET:C/-.*-linux-gnu.*//g}
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
LINUX_NAME=		linux
LINUX_VERSION=		5.18.17
DISTNAME=		${LINUX_NAME}-${LINUX_VERSION}
CATEGORY=		native
CATEGORIES=		${CATEGORY}
.if !empty(NATIVE:M[yY][eE][sS])
PKGNAME=		native-linux-API-headers-${LINUX_VERSION}
.else
PKGNAME=		${CROSS_MNAME}-headers-${LINUX_VERSION}
.endif
MASTER_SITES=		http://www.kernel.org/pub/linux/kernel/v5.x/
EXTRACT_SUFX=		.tar.xz
MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://www.kernel.org/
COMMENT=		Linux kernel headers
LICENSE=		gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

USE_TOOLS+=		gmake perl

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

HAS_CONFIGURE=		no
NO_BUILD=		yes
NO_CONFIGURE=		yes
GNU_CONFIGURE=		no

USE_LANGUAGES=		c
#USE_LANGUAGES=		c c++
#USE_NATIVE_GCC=	no
#USE_PKGSRC_GCC=	yes
#GCC_REQD+=		6

.if !empty(NATIVE:M[yY][eE][sS])

do-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/
	cd ${WRKSRC} && ${GMAKE} mrproper && ${GMAKE} -j${MAKE_JOBS} ARCH=${CROSS_KARCH} \
	INSTALL_HDR_PATH=${DESTDIR}${PREFIX}/native/usr headers_install

.else

do-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/${CROSS_MNAME}/
	cd ${WRKSRC} && ${GMAKE} mrproper && ${GMAKE} -j${MAKE_JOBS} ARCH=${CROSS_KARCH} \
	INSTALL_HDR_PATH=${DESTDIR}${PREFIX}/native/${CROSS_MNAME}/sysroot/usr headers_install

.endif

GENERATE_PLIST+= \
   	cd ${DESTDIR}${PREFIX} && \
	${FIND} native \( -type f -o -type l \) -print | ${SORT} ;

.include "../../mk/bsd.pkg.mk"
