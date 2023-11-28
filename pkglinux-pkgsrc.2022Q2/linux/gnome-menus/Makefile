# $NetBSD$

DISTNAME=	gnome-menus-3.36.0
#DISTNAME=	gnome-menus-3.35.3
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gnome-menus/3.36/}
#MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gnome-menus/3.35/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://download.gnome.org/sources/gnome-menus/3.36/ # TODO: check
#HOMEPAGE=	https://download.gnome.org/sources/gnome-menus/3.35/ # TODO: check
COMMENT=	the libgnome-menu library
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake intltool msgfmt pkg-config
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	libmenu/libgnome-menu-3.0.pc.in

SUBST_CLASSES+=		paths
SUBST_STAGE.paths=	pre-configure
SUBST_MESSAGE.paths=	Fixing paths to installation prefix.
SUBST_SED.paths=	-e 's|/usr/|${PREFIX}/|g'
SUBST_SED.paths+=	-e 's|/etc/X11/applnk|${PREFIX}/share/kde/applnk/|g'

BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.6.0

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
