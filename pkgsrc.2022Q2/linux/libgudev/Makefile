# $NetBSD$

DISTNAME=	libgudev-237
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libgudev/237/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://download.gnome.org/sources/libgudev/237/ # TODO: check
COMMENT=	GObject bindings for libudev
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	pkg-config

PKGCONFIG_OVERRIDE+=	gudev-1.0.pc.in

.include "../../linux/eudev/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../devel/meson/build.mk"
.include "../../mk/bsd.pkg.mk"
