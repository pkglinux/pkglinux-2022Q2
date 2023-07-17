# $NetBSD$

DISTNAME=	AppStream-0.15.5
CATEGORIES=	linux
MASTER_SITES=	https://www.freedesktop.org/software/appstream/releases/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.freedesktop.org/software/appstream/releases/
COMMENT=	making machine-readable software metadata easily available
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	gmake pkg-config itstool

#GCC_REQD+=	7

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++

#MESON_ARGS+=	-Dapidocs=false
#MESON_ARGS+=	-Dinstall-docs=false

MAKE_ENV+=	LD_LIBRARY_PATH=${WRKSRC}/output/src
#LDFLAGS+=	${COMPILER_RPATH_FLAG}${PREFIX}/lib/gnome-shell

.include "../../devel/meson/build.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/libyaml/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../linux/libxmlb/buildlink3.mk"
.include "../../textproc/libstemmer/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
