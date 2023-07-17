# $NetBSD$

DISTNAME=	android-file-transfer-linux-continuous
PKGNAME=	android-file-transfer-2022.01.09
CATEGORIES=	linux
MASTER_SITES=	https://codeload.github.com/whoozle/
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://codeload.github.com/whoozle/
COMMENT=	reliable MTP client with minimalistic UI similar to Android File Transfer.
LICENSE=	gnu-gpl-v2

USE_CMAKE=	yes
USE_LANGUAGES=	c c++
GCC_REQD+=	7

.include "../../mk/fuse.buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
