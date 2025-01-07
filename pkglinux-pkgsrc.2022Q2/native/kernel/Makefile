# $NetBSD$

LINUX_NAME=	linux
#LINUX_VERSION=	5.14.13
#LINUX_VERSION=	5.19.1
LINUX_VERSION=	5.18.17
DISTNAME=	${LINUX_NAME}-${LINUX_VERSION}
CATEGORY=	native
CATEGORIES=	${CATEGORY}
PKGNAME=	${CATEGORY}-${LINUX_NAME}-kernel-${LINUX_VERSION}
MASTER_SITES=	http://www.kernel.org/pub/linux/kernel/v5.x/
EXTRACT_SUFX=	.tar.xz
MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.kernel.org/
COMMENT=	The Linux kernel
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

USE_TOOLS+=		gmake perl
PLIST_SUBST+=		LINUX_VERSION=${LINUX_VERSION:Q}

DISTINFO_FILE?=		${.CURDIR}/../../native/kernel/distinfo
PATCHDIR?=		${.CURDIR}/../../native/kernel/patches
FILESDIR=		${.CURDIR}/../../native/kernel/files

#BUILD_DEPENDS+=	kmod-[0-9]*:../../linux/kmod

#HAS_CONFIGURE=		no
#NO_BUILD=		yes
#NO_CONFIGURE=		yes
#GNU_CONFIGURE=		no

USE_LANGUAGES=		c c++
#USE_NATIVE_GCC=	yes
#USE_NATIVE_GCC=	no
USE_PKGSRC_GCC=		yes
GCC_REQD+=		6

# Don't let the Linux kernel get accidently deinstalled.
# XXX todo: fix pkg_info to not be so noisy about this
# XXX       maybe say "Package preserve option is set" or ...?
#PKG_PRESERVE=	# defined

PKGSRC_USE_SSP=		no
MKPIE_SUPPORTED=	no
PKGSRC_MKPIE=		no
#STACK_CHECK_SUPPORTED=	no
#PKGSRC_USE_STACK_CHECKD=	no
#SSP_SUPPORTED=		yes

.include "../../mk/bsd.prefs.mk"

PLIST_SUBST+=		LINUXBASE=${LINUXBASE:Q}
MESSAGE_SUBST+=		PKGBASE=${PKGBASE}

#MAKE_DIRS+=	${LINUXBASE}/lib/modules
#MAKE_DIRS+=	${LINUXBASE}/boot

BLDPRE=		${WRKDIR}${PREFIX}/native
DSTPRE=		${DESTDIR}${PREFIX}/native
MAKE_ENV+=	INSTALL_MOD_PATH=${BLDPRE}

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
.include "../kross.mk"

HAS_CONFIGURE=		no
#NO_BUILD=		yes
NO_CONFIGURE=		yes
GNU_CONFIGURE=		no
USE_PKGSRC_GCC=		no

#MAK_ENV+= 	PATH=${PREFIX}/sbin:${PREFIX}/bin:${PREFIX}/gcc6/bin:${TOOLDIR}/bin:/pkg/sbin:/pkg/bin:$$PATH
MAK_ENV+= 	PATH=/pkg/gcc6/bin:/pkg/sbin:/pkg/bin:${TOOLDIR}/bin:$$PATH
MAK_ENV+=	ARCH=${CROSS_KARCH} CROSS_COMPILE=${MACHINE_GNU_PLATFORM}-
MAK_ENV+=	INSTALL_MOD_PATH=${BLDPRE}
#CFLAGS+=	-Werror

# INSTALL_MOD_PATH=./-mips64abi64/native ARCH=mips CROSS_COMPILE=/pkg/native/cross-mips64abi64/bin/mips64-unknown-linux-gnuabi64- make -j12 modules
# ARCH=mips CROSS_COMPILE=/pkg/native/cross-mips64abi64/bin/mips64-unknown-linux-gnuabi64- make -j12 menuconfig

#	cd ${WRKSRC} && ${SETENV} ${MAK_ENV} ${GMAKE} -j${MAKE_JOBS} allmodconfig
#	cd ${WRKSRC} && ${CAT} .config > ${MACHINE_GNU_PLATFORM:C/-.*-linux-gnu//g}.config
#	cd ${WRKSRC} && ${SETENV} ${MAK_ENV} ${GMAKE} -j${MAKE_JOBS} defconfig
#	cd ${WRKSRC} && ${CAT} .config | ggrep -v "is not set" >> ${MACHINE_GNU_PLATFORM:C/-.*-linux-gnu//g}.config
#	cd ${WRKSRC} && ${CAT} ${MACHINE_GNU_PLATFORM:C/-.*-linux-gnu//g}.config > .config
#	cd ${WRKSRC} && ${SETENV} ${MAK_ENV} ${GMAKE} -j${MAKE_JOBS} menuconfig
#	cd ${WRKSRC} && ${CAT} .config > ${FILESDIR}/${MACHINE_GNU_PLATFORM:C/-.*-linux-gnu//g}.config

post-patch:
	cd ${WRKSRC} && ${CAT} ${FILESDIR}/${MACHINE_GNU_PLATFORM:C/-.*-linux-gnu//g}.config > .config
	cd ${WRKSRC} && ${SETENV} ${MAK_ENV} ${GMAKE} -j${MAKE_JOBS} menuconfig

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAK_ENV} ${GMAKE} -j${MAKE_JOBS} vmlinuz
	cd ${WRKSRC} && ${SETENV} ${MAK_ENV} ${GMAKE} -j${MAKE_JOBS} modules

post-build:
	${INSTALL_DATA_DIR} ${BLDPRE}/boot
	${CP} ${WRKSRC}/vmlinuz \
		${BLDPRE}/boot/vmlinuz-${LINUX_VERSION}
	${CP} ${WRKSRC}/System.map \
		${BLDPRE}/boot/System.map-${LINUX_VERSION}
	${INSTALL_DATA} ${WRKSRC}/.config ${BLDPRE}/boot/${PKGNAME}.config
	cd ${WRKSRC} && ${SETENV} ${MAK_ENV} ${GMAKE} -j${MAKE_JOBS} modules_install

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.else

#	cd ${WRKSRC} && patch -p1 < ${FILESDIR}/linux-hardened-5.15.98-hardened1.patch
#post-extract:
#	cd ${WRKSRC} && ${CAT} ${FILESDIR}/.configs > .config

#	${CP} -v ${FILESDIR}/panda2_ascii_224.ppm ${WRKSRC}/drivers/video/logo/logo_linux_clut224.ppm

#do-build:
#	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS} bzImage && \
#	${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS} modules
#	${INSTALL_DATA_DIR} ${BLDPRE}/boot
#	${CP} ${WRKSRC}/arch/x86/boot/bzImage \
#		${BLDPRE}/boot/vmlinuz-${LINUX_VERSION}
#	${CP} ${WRKSRC}/System.map \
#		${BLDPRE}/boot/System.map-${LINUX_VERSION}
#	${INSTALL_DATA} ${WRKSRC}/.config ${BLDPRE}/boot/${PKGNAME}.config
#	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS} modules_install

WRKSRC2=	${PREFIX}/native/kernel-build-${LINUX_VERSION}

do-extract:

do-patch:

do-build:
	${INSTALL_DATA_DIR} ${BLDPRE}/boot
	${CP} ${WRKSRC2}/arch/x86/boot/bzImage \
		${BLDPRE}/boot/vmlinuz-${LINUX_VERSION}
	${CP} ${WRKSRC2}/System.map \
		${BLDPRE}/boot/System.map-${LINUX_VERSION}
	${INSTALL_DATA} ${WRKSRC2}/.config ${BLDPRE}/boot/${PKGNAME}.config
	cd ${WRKSRC2} && ${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS} modules_install

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.endif

PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} native \( -type f -o -type l \) -print | ${SORT} ;

.include "../../mk/bsd.pkg.mk"
