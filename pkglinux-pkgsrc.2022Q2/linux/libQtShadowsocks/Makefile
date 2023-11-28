# $NetBSD$

DISTNAME=	libQtShadowsocks-2.1.0
CATEGORIES=	linux
MASTER_SITES=	https://codeload.github.com/shadowsocks/libQtShadowsocks/releases/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://codeload.github.com/shadowsocks/libQtShadowsocks/releases/
COMMENT=	lightweight [shadowsocks][ss] library.
LICENSE=	gnu-gpl-v2

USE_CMAKE=	yes
USE_TOOLS+=	pkg-config gmake
USE_LANGUAGES=	c++

#GCC_REQD+=	8

post-extract:
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/libQtShadowsocks-2.1.0.patch

PKGCONFIG_OVERRIDE+=	lib/QtShadowsocks.pc.in

#.include "../../x11/qt5/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../linux/botan2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
