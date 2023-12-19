# $NetBSD$

LINUX_NAME=	linux
LINUX_VERSION=	5.18.17
DISTNAME=	${LINUX_NAME}-${LINUX_VERSION}
PKGNAME=	kernel-build-${LINUX_VERSION}
CATEGORY=	native
CATEGORIES=	${CATEGORY}
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

#DISTINFO_FILE?=		${.CURDIR}/../../native/kernel-build/distinfo
#PATCHDIR?=		${.CURDIR}/../../native/kernel-build/patches
#FILESDIR=		${.CURDIR}/../../native/kernel-build/files

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

#USE_CWRAPPERS=		no

.include "../../mk/bsd.prefs.mk"

PLIST_SUBST+=		LINUXBASE=${LINUXBASE:Q}
MESSAGE_SUBST+=		PKGBASE=${PKGBASE}

DSTPRE=		${DESTDIR}${PREFIX}/native

WRKSRC=		${WRKDIR}/${DISTNAME}
WRKSRC2=	${WRKDIR}/build
#WRKSRC2=	${PREFIX}/native/kernel-source-${LINUX_VERSION}


post-extract:
	mkdir -pv ${WRKSRC2}
	cd ${WRKSRC2} && ${CAT} ${FILESDIR}/.configs > .config

#	cd ${WRKSRC2} && ${GMAKE} -j${MAKE_JOBS} -f ${WRKSRC}/Makefile menuconfig

do-build:
	cd ${WRKSRC} && ${GMAKE} mrproper && ${GMAKE} -j${MAKE_JOBS} headers && \
	${FIND} usr/include -name ".*" -exec ${RM} -rf {} \; && \
	${RM} -f usr/include/Makefile

	cd ${WRKSRC2} && ${GMAKE} -j${MAKE_JOBS} bzImage && \
	${GMAKE} -j${MAKE_JOBS} modules
	cd ${WRKSRC2} && ${LN} -snvf ${PREFIX}/native/kernel-source-${LINUX_VERSION} source
	${CP} -av ${FILESDIR}/Makefile ${WRKSRC2}/

do-install:
	${MKDIR} -pv ${DSTPRE}/
	${CP} -av ${WRKSRC2} ${DSTPRE}/${PKGNAME}

#	cd ${DSTPRE}/${PKGNAME} && find . -name ".tmp*" | xargs -I& rm -v &

.include "../../mk/bsd.pkg.mk"
