# $NetBSD$

DISTNAME=	flatpak-1.14.0
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=flatpak/flatpak/releases/download/1.14.0/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/flatpak/flatpak/releases/download/1.14.0/ # TODO: check
COMMENT=	building, distributing, and running sandboxed desktop applications on Linux
LICENSE=	gnu-gpl-v2

#DEPENDS+=	py39-pyparsing-[0-9]*:../../devel/py-pyparsing
BUILD_DEPENDS+=	py39-pyparsing-[0-9]*:../../devel/py-pyparsing
#BUILD_DEPENDS+=	xmlcatmgr-[0-9]*:../../textproc/xmlcatmgr

GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--with-curl
CONFIGURE_ARGS+=	--disable-documentation

USE_LIBTOOL=		yes
USE_TOOLS+=		gmake intltool msgfmt msgmerge perl pkg-config xgettext
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	flatpak.pc.in

.include "../../archivers/libarchive/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../security/polkit/buildlink3.mk"
.include "../../filesystems/fuse/buildlink3.mk"
.include "../../x11/libXau/buildlink3.mk"
.include "../../linux/ostree/buildlink3.mk"
.include "../../textproc/json-glib/buildlink3.mk"
#.include "../../devel/appstream-glib/buildlink3.mk"
.include "../../linux/appstream/buildlink3.mk"
.include "../../graphics/gdk-pixbuf2/buildlink3.mk"
.include "../../linux/libseccomp/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
