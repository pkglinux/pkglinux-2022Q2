# $NetBSD$

DISTNAME=	libadwaita-1.1.5
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libadwaita/1.1/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://download.gnome.org/sources/libadwaita/1.1/ # TODO: check
COMMENT=	Building blocks for modern GNOME applications
LICENSE=	gnu-lgpl-v2

USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config gmake
USE_TOOLS+=		msgfmt msgmerge xgettext
USE_TOOLS+=		gdbus-codegen

USE_PKGLOCALEDIR=	yes

PYTHON_FOR_BUILD_ONLY=	tool

#post-extract:
#	chown -R root:root ${WRKSRC}

#MAKE_ENV+=	LD_LIBRARY_PATH=${WRKSRC}/output/subprojects/src
#LDFLAGS+=	${COMPILER_RPATH_FLAG}${PREFIX}/lib/gnome-shell

#MESON_ARGS+=	-Dtests=false
#MESON_ARGS+=	-Dexamples=false
#MESON_ARGS+=	-Dintrospection=disabled
#MESON_ARGS+=	-Dvapi=false

.include "../../devel/meson/build.mk"
.include "../../x11/gtk4/buildlink3.mk"
.include "../../x11/libXi/buildlink3.mk"
.include "../../x11/libXcursor/buildlink3.mk"
.include "../../x11/libXcomposite/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
