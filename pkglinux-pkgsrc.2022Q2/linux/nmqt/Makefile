# $NetBSD$

GITHUB_TAG=	refs/tags/v${PKGVERSION_NOREV}
DISTNAME=	networkmanager-qt-0.9.8.4
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=KDE/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/KDE/networkmanager-qt/
COMMENT=	Qt wrapper for NetworkManager DBus API
LICENSE=        gnu-gpl-v2

WRKSRC=		${WRKDIR}/${DISTNAME}

USE_CMAKE=	yes
USE_LANGUAGES=	c c++

USE_TOOLS+=     flex gmake

#CMAKE_ARGS+=	-DDISABLE_MODEMMANAGERQT
CMAKE_ARGS+=	-Wno-dev

# BUILD_MAKE_FLAGS+= VERBOSE=1

BUILDLINK_DEPMETHOD.qt4-tools=          full
.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../linux/libnma/buildlink3.mk"
.include "../../linux/NetworkManager/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
