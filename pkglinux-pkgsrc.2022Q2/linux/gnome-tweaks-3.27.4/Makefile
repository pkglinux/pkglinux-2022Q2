# $NetBSD$

DISTNAME=	gnome-tweaks-3.27.4
CATEGORIES=	linux
MASTER_SITES=	https://gitlab.gnome.org/GNOME/gnome-tweaks/-/archive/3.27.4/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	INSERT_YOUR_MAIL_ADDRESS_HERE # or use pkgsrc-users@NetBSD.org
HOMEPAGE=	https://gitlab.gnome.org/GNOME/gnome-tweaks/-/archive/3.27.4/
COMMENT=	Simple program used to tweak advanced GNOME settings
LICENSE=	gnu-gpl-v2

GCC_REQD+=	7

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		# none

.include "../../devel/meson/build.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../devel/py-gobject3/buildlink3.mk"
.include "../../sysutils/gsettings-desktop-schemas/buildlink3.mk"
#.include "../../devel/libhandy1/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
