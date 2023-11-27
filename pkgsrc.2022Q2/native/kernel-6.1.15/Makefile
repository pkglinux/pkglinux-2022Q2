# $NetBSD$

LINUX_NAME=	linux
#LINUX_VERSION=	5.14.13
#LINUX_VERSION=	5.19.1
#LINUX_VERSION=	5.18.17
#LINUX_VERSION=	6.1.19
LINUX_VERSION=	6.1.15
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

DISTINFO_FILE?=		${.CURDIR}/../../native/kernel-${LINUX_VERSION}/distinfo
PATCHDIR?=		${.CURDIR}/../../native/kernel-${LINUX_VERSION}/patches
FILESDIR=		${.CURDIR}/../../native/kernel-${LINUX_VERSION}/files

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

BLDPRE=		${WRKSRC}${PREFIX}/native
DSTPRE=		${DESTDIR}${PREFIX}/native
MAKE_ENV+=	INSTALL_MOD_PATH=${BLDPRE}
MAKE_ENV+=	LC_CTYPE=en_US.UTF-8

#	cd ${WRKSRC} && patch -p1 < ${FILESDIR}/linux-hardened-5.15.98-hardened1.patch
post-extract:
	cd ${WRKSRC} && patch -p1 < ${FILESDIR}/linux-hardened-6.1.15-hardened1.patch
	cd ${WRKSRC} && ${CAT} ${FILESDIR}/.config > .config

#	${CP} -v ${FILESDIR}/panda2_ascii_224.ppm ${WRKSRC}/drivers/video/logo/logo_linux_clut224.ppm


do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS} bzImage && \
	${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS} modules
	${INSTALL_DATA_DIR} ${BLDPRE}/boot
	${CP} ${WRKSRC}/arch/x86/boot/bzImage \
		${BLDPRE}/boot/vmlinuz-${LINUX_VERSION}
	${CP} ${WRKSRC}/System.map \
		${BLDPRE}/boot/System.map-${LINUX_VERSION}
	${INSTALL_DATA} ${WRKSRC}/.config ${BLDPRE}/boot/${PKGNAME}.config
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS} modules_install

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../mk/bsd.pkg.mk"
