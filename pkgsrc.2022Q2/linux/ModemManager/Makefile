# $NetBSD$

DISTNAME=	ModemManager-1.14.10
CATEGORIES=	linux
MASTER_SITES=	https://www.freedesktop.org/software/ModemManager/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.freedesktop.org/software/ModemManager/
COMMENT=	Unified high level API for communicating with mobile broadband modems
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
#USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=	gmake pkg-config intltools msgfmt xgettext perl

TOOLS_PLATFORM.msgfmt=

PKGCONFIG_OVERRIDE+=	data/ModemManager.pc.in
PKGCONFIG_OVERRIDE+=	data/mm-glib.pc.in

CONFIGURE_ARGS+=	--with-systemd-journal=no
CONFIGURE_ARGS+=	--with-systemd-suspend-resume=no

.include "../../linux/libgudev/buildlink3.mk"
.include "../../linux/libmbim/buildlink3.mk"
.include "../../linux/libqmi/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../lang/vala/buildlink3.mk"
.include "../../security/polkit/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
