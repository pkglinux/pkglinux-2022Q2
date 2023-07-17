# $NetBSD$

DISTNAME=	gnome-tweaks-40.10
PKGNAME=	${DISTNAME:S/gnome-tweaks/gnome-tweaks/}
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gnome-tweaks/40/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	INSERT_YOUR_MAIL_ADDRESS_HERE # or use pkgsrc-users@NetBSD.org
HOMEPAGE=	https://download.gnome.org/sources/gnome-tweaks/40/ # TODO: check
COMMENT=	Simple program used to tweak advanced GNOME settings
LICENSE=	gnu-gpl-v2

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		# none

.include "../../devel/meson/build.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../devel/py-gobject3/buildlink3.mk"
.include "../../sysutils/gsettings-desktop-schemas/buildlink3.mk"
.include "../../devel/libhandy1/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
