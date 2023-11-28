# $NetBSD$

DISTNAME=	libmbim-1.24.6
CATEGORIES=	linux
MASTER_SITES=	https://www.freedesktop.org/software/libmbim/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.freedesktop.org/software/libmbim/
COMMENT=	Glib-based library for talking to WWAN modems and devices
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	gmake pkg-config intltools msgfmt xgettext perl

TOOLS_PLATFORM.msgfmt=

PKGCONFIG_OVERRIDE+=	data/pkg-config/mbim-glib.pc.in

CONFIGURE_ARGS+=	--disable-gtk-doc

.include "../../linux/libgudev/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
