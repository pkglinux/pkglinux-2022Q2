# $NetBSD$

#DISTNAME=	libgudev-234
DISTNAME=	libgudev-237
CATEGORIES=	linux
#MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libgudev/234/}
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libgudev/237/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	https://download.gnome.org/sources/libgudev/234/ # TODO: check
HOMEPAGE=	https://download.gnome.org/sources/libgudev/237/ # TODO: check
COMMENT=	GObject bindings for libudev
LICENSE=	gnu-gpl-v2


GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	gmake pkg-config

CONFIGURE_ARGS+=	--disable-umockdev
#CONFIGURE_ARGS+=	--disable-dependency-tracking

PKGCONFIG_OVERRIDE+=	gudev-1.0.pc.in

#pre-configure:
#	${LN} -s /usr/include/libudev.h ${WRKDIR}/.buildlink/include/ &
#	${LN} -s /usr/lib/libudev* ${WRKDIR}/.buildlink/lib/ &
#	${LN} -s /usr/lib/pkgconfig/libudev.pc ${WRKDIR}/.buildlink/lib/pkgconfig/

.include "../../linux/eudev/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
