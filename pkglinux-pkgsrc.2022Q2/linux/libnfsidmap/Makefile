# $NetBSD$

GITHUB_PROJECT=	libnfsidmap
GITHUB_TAG=	refs/tags/libnfsidmap-0-25
DISTNAME=	libnfsidmap-0-25
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=Distrotech/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/Distrotech/libnfsidmap/
COMMENT=	Library to help mapping id's, mainly for NFSv4.
LICENSE=	gnu-gpl-v2

WRKSRC=		${WRKDIR}/libnfsidmap-libnfsidmap-0-25
USE_TOOLS+=	pkg-config autoconf automake m4 gmake
GNU_CONFIGURE=	yes

PKGCONFIG_OVERRIDE+=	libnfsidmap.pc.in

pre-configure:
	cd ${WRKSRC} && ./autogen.sh -ivf

.include "../../mk/bsd.pkg.mk"
