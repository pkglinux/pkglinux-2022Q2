# $NetBSD$

DISTNAME=	colord-1.4.6
CATEGORIES=	linux
MASTER_SITES=	https://www.freedesktop.org/software/colord/releases/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.freedesktop.org/software/colord/releases/
COMMENT=	Device color profile management daemon
LICENSE=	gnu-gpl-v2

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++

#GCC_REQD+=	8

USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config gmake intltool msgfmt

BUILD_DEPENDS+=	gtk-doc-[0-9]*:../../textproc/gtk-doc

MESON_ARGS+=	-Dsystemd=false
MESON_ARGS+=	-Ddaemon_user=colord
MESON_ARGS+=	-Dlibcolordcompat=true
MESON_ARGS+=	-Dargyllcms_sensor=false
MESON_ARGS+=	-Dbash_completion=false
#MESON_ARGS+=	-Dprint_profiles=true
MESON_ARGS+=	-Dvapi=true
MESON_ARGS+=	-Ddocs=false
MESON_ARGS+=	-Dman=false

MAKE_ENV+=	LD_LIBRARY_PATH=${WRKSRC}/output/lib:${WRKSRC}/output/lib/colord

post-install:
	${INSTALL_DATA} ${WRKSRC}/output/lib/colord/colord.vapi ${DESTDIR}${PREFIX}/share/vala/vapi/

.include "../../devel/glib2/schemas.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../graphics/lcms2/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../security/polkit/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../sysutils/consolekit/buildlink3.mk"
.include "../../linux/libgudev/buildlink3.mk"
.include "../../linux/libgusb/buildlink3.mk"

.include "../../devel/meson/build.mk"
.include "../../mk/bsd.pkg.mk"
