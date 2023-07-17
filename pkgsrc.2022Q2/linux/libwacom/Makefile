# $NetBSD$

DISTNAME=	libwacom-1.8
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=linuxwacom/libwacom/releases/download/libwacom-1.8/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/linuxwacom/libwacom/releases/download/libwacom-1.8/ # TODO: check
COMMENT=	Identify Wacom tablets and their model-specific features
LICENSE=	gnu-gpl-v2


GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

#BUILD_DEPENDS+=	doxygen-[0-9]*:../../devel/doxygen

#MESON_ARGS+=	-Dudev-dir=${PREFIX}/lib/udev
MESON_ARGS+=	-Dtests=disabled

MAKE_ENV+=	LD_LIBRARY_PATH=${WRKSRC}/output

#LDFLAGS+=	${COMPILER_RPATH_FLAG}${PREFIX}/lib

PKGCONFIG_OVERRIDE+=	libwacom.pc.in

.include "../../devel/meson/build.mk"
.include "../../linux/libgudev/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
