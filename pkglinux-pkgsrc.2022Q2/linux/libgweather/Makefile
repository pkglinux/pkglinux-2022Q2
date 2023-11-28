# $NetBSD$

DISTNAME=	libgweather-4.0.0
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libgweather/4.0/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://download.gnome.org/sources/libgweather/4.0/ # TODO: check
COMMENT=	Weather information access library
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	pkg-config xgettext

PYTHON_FOR_BUILD_ONLY=	tool
PYTHON_VERSIONS_INCOMPATIBLE=	27

#PKGCONFIG_OVERRIDE_STAGE=	pre-install
#PKGCONFIG_OVERRIDE+=		output/meson-private/gweather-3.0.pc
USE_PKGLOCALEDIR=	yes
PKGCONFIG_OVERRIDE+=	subprojects/gi-docgen/gi-docgen.pc.in

BUILD_DEPENDS+=		py${PYTHON_VERSION_DEFAULT}-gobject3-[0-9]*:../../devel/py-gobject3

.include "../../devel/meson/build.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../geography/geocode-glib/buildlink3.mk"
.include "../../net/libsoup/buildlink3.mk"
.include "../../lang/python/tool.mk"
.include "../../lang/vala/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
