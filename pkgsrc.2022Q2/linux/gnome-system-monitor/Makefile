# $NetBSD$

#DISTNAME=	gnome-system-monitor-40.0
DISTNAME=	gnome-system-monitor-3.38.0
CATEGORIES=	linux
#MASTER_SITES=	https://download-fallback.gnome.org/sources/gnome-system-monitor/40/
MASTER_SITES=	https://download-fallback.gnome.org/sources/gnome-system-monitor/3.38/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	https://download-fallback.gnome.org/sources/gnome-system-monitor/40/
HOMEPAGE=	https://download-fallback.gnome.org/sources/gnome-system-monitor/3.38/
COMMENT=	GNOME process viewer and system monitor
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	itstool

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++

MESON_ARGS+=		-Dsystemd=false

.include "../../devel/meson/build.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../graphics/adwaita-icon-theme/buildlink3.mk"
.include "../../x11/gtkmm3/buildlink3.mk"
.include "../../sysutils/libgtop/buildlink3.mk"
.include "../../textproc/itstool/buildlink3.mk"
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
