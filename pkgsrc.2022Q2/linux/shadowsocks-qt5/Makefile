# $NetBSD$

DISTNAME=	shadowsocks-qt5-3.0.1
CATEGORIES=	linux
MASTER_SITES=	https://codeload.github.com/shadowsocks/shadowsocks-qt5/releases/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://codeload.github.com/shadowsocks/shadowsocks-qt5/releases/
COMMENT=	shadowsocks GUI client with advanced features
LICENSE=	gnu-gpl-v2

USE_TOOLS=	pkg-config gmake
USE_CMAKE=	yes
USE_LANGUAGES=	c++

.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../libQtShadowsocks/buildlink3.mk"
.include "../../converters/qrencode/buildlink3.mk"
.include "../../graphics/zbar/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
