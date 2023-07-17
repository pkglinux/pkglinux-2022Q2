# $NetBSD$

DISTNAME=	libgusb-0.3.10
CATEGORIES=	linux
MASTER_SITES=	https://people.freedesktop.org/~hughsient/releases/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://people.freedesktop.org/~hughsient/releases/
COMMENT=	GObject wrappers for libusb-1.0
LICENSE=	gnu-gpl-v2

USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config gmake intltool msgfmt

MESON_ARGS+=	-Ddocs=false
MESON_ARGS+=	-Dtests=false

.include "../../devel/meson/build.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libusb1/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
