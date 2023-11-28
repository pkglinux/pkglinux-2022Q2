# $NetBSD$


LINUX_NAME=	linux
#LINUX_VERSION=	5.14.13
#LINUX_VERSION=	5.19.1
#LINUX_VERSION=	5.18.17
LINUX_VERSION=	6.1.19
DISTNAME=	${LINUX_NAME}-${LINUX_VERSION}
CATEGORY=	native
CATEGORIES=	${CATEGORY}
PKGNAME=	${CATEGORY}-${LINUX_NAME}-API-headers-${LINUX_VERSION}
#MASTER_SITES=	http://www.kernel.org/pub/linux/kernel/v5.x/
MASTER_SITES=	http://www.kernel.org/pub/linux/kernel/v6.x/
EXTRACT_SUFX=	.tar.xz
MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.kernel.org/
COMMENT=	Linux kernel headers
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

USE_TOOLS+=		gmake perl

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

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

do-build:
	cd ${WRKSRC} && ${GMAKE} mrproper && ${GMAKE} -j${MAKE_JOBS} headers && \
	${FIND} usr/include -name ".*" -exec ${RM} -rf {} \; && \
	${RM} -f usr/include/Makefile

do-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/
	cd ${WRKSRC} && ${CP} -rv usr/include ${DESTDIR}${PREFIX}/native/usr/
	${CP} -v ${FILESDIR}/cyclades.h ${DESTDIR}${PREFIX}/native/usr/include/linux/


.include "../../mk/bsd.pkg.mk"
