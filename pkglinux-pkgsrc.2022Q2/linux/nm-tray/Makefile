# $NetBSD$

GITHUB_PROJECT=	nm-tray
GITHUB_TAG=	refs/tags/0.5.0
DISTNAME=	0.5.0
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME}
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=palinek/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/palinek/nm-tray/
COMMENT=	pure Qt application interacting with NetworkManager
LICENSE=	gnu-gpl-v2

WRKSRC=		${WRKDIR}/${PKGNAME}
USE_CMAKE=	yes
USE_LANGUAGES=	c c++

USE_LIBTOOL=		yes
USE_TOOLS+=		pkgconf gmake
USE_PKGLOCALEDIR=	yes

# Disables AppIndicator support because it requires libindicator
#MESON_ARGS+=		-Dappindicator=no
MESON_ARGS+=		-Dselinux=true
# Disable WWAN support if you do not have ModemManager installed. 
#MESON_ARGS+=		-Dwwan=false	

.include "../../linux/NetworkManager/buildlink3.mk"
.include "../../linux/libnma/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../security/libsecret/buildlink3.mk"
.include "../../devel/libindicator/buildlink3.mk"
.include "../../devel/libappindicator/buildlink3.mk"
.include "../../devel/libdbusmenu-gtk3/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../linux/ModemManager/buildlink3.mk"
.include "../../linux/eudev/buildlink3.mk"
.include "../../linux/libgudev/buildlink3.mk"

.include "../../linux/selinux-libselinux/buildlink3.mk"
.include "../../linux/selinux-libsepol/buildlink3.mk"
.include "../../linux/selinux-libsemanage/buildlink3.mk"
.include "../../linux/audit/buildlink3.mk"
.include "../../linux/semodule-utils/buildlink3.mk"

.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

