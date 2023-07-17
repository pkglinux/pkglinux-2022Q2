# $NetBSD$

DISTNAME=	libsoup-3.0.8
PKGNAME=	libsoup30-3.0.8
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libsoup/3.0/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://download.gnome.org/sources/libsoup/3.0/ # TODO: check
COMMENT=	HTTP library implementation in C
LICENSE=	gnu-lgpl-v2

DEPENDS+=	glib-networking-[0-9]*:../../net/glib-networking

USE_LANGUAGES=	c99
USE_TOOLS+=	pkg-config msgfmt

# disable vala detection
MESON_ARGS+=		-Dvapi=disabled
MESON_ARGS+=		-Dgssapi=disabled

PYTHON_FOR_BUILD_ONLY=	tool

USE_PKGLOCALEDIR=	yes

.include "../../archivers/brotli/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.58.0
.include "../../devel/glib2/buildlink3.mk"
BUILDLINK_API_DEPENDS.gobject-introspection+=	gobject-introspection>=0.9.5
BUILDLINK_DEPMETHOD.gobject-introspection=	build
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../www/libpsl/buildlink3.mk"
.include "../../www/nghttp2/buildlink3.mk"
#.include "../../security/mit-krb5/buildlink3.mk"
.include "../../devel/meson/build.mk"
.include "../../mk/bsd.pkg.mk"

