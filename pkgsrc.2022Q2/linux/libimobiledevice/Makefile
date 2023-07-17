# $NetBSD$

DISTNAME=	libimobiledevice-1.3.0
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=libimobiledevice/libimobiledevice/releases/download/1.3.0/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/libimobiledevice/libimobiledevice/releases/download/1.3.0/ # TODO: check
COMMENT=	communicate with services on iOS devices using native protocols.*
LICENSE=	mit

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config gmake m4 autoreconf autoconf automake

#WRKSRC=		${WRKDIR}/libimobiledevice-1.3.0
#pre-configure:
#		cd ${WRKSRC} && ./autogen.sh --prefix=${PREFIX}

PKGCONFIG_OVERRIDE+=	src/libimobiledevice-1.0.pc.in

.include "../../mk/bsd.pkg.mk"
