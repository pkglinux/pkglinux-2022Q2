# $NetBSD$

DISTNAME=	gnome-bluetooth-3.34.3
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gnome-bluetooth/3.34/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://download.gnome.org/sources/gnome-bluetooth/3.34/ # TODO: check
COMMENT=	Widgets for applications that want to select Bluetooth devices
LICENSE=	gnu-gpl-v2

USE_LIBTOOL=	yes
USE_TOOLS+=	gmake pkg-config intltools msgfmt xgettext perl
USE_TOOLS+=	gdbus-codegen
TOOLS_PLATFORM.msgfmt=

USE_PKGLOCALEDIR=	yes

.include "../../devel/meson/build.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../textproc/itstool/buildlink3.mk"
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../linux/eudev/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
