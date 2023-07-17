# $NetBSD$

#DISTNAME=	libnma-1.8.30
DISTNAME=	libnma-1.8.32
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libnma/1.8/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://download.gnome.org/sources/libnma/1.8/ # TODO: check
COMMENT=	Implementation of the NetworkManager GUI functions
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	src/libnma-gtk4.pc.in
PKGCONFIG_OVERRIDE+=	src/libnma.pc.in

MESON_ARGS+=		-Dgtk_doc=false
MESON_ARGS+=		-Dmobile_broadband_provider_info=false

.include "../../devel/meson/build.mk"
.include "../../linux/NetworkManager/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../security/gcr/buildlink3.mk"
.include "../../textproc/iso-codes/buildlink3.mk"
.include "../../lang/vala/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
