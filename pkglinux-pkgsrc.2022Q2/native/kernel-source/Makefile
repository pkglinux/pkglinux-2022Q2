# $NetBSD$

LINUX_NAME=	linux
LINUX_VERSION=	5.18.17
DISTNAME=	${LINUX_NAME}-${LINUX_VERSION}
PKGNAME=	kernel-source-${LINUX_VERSION}
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
#TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
#TOOLS_PLATFORM.sed=		/pkg/bin/gsed

HAS_CONFIGURE=		no
NO_BUILD=		yes
NO_CONFIGURE=		yes
GNU_CONFIGURE=		no

DSTPRE=		${DESTDIR}${PREFIX}/native
do-install:
	${MKDIR} -pv ${DSTPRE}/${PKGNAME}
	${CP} -av ${WRKSRC}/* ${DSTPRE}/${PKGNAME}/

.include "../../mk/bsd.pkg.mk"
