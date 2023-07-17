# $NetBSD$

DISTNAME=	gnome-tweaks-3.34.1
PKGNAME=	${DISTNAME:S/gnome-tweaks/gnome-tweaks-tools/}
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gnome-tweaks/3.34/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://download.gnome.org/sources/gnome-tweaks/3.34/ # TODO: check
COMMENT=	Simple program used to tweak advanced GNOME settings
LICENSE=	gnu-gpl-v2

DEPENDS+=	unzip-[0-9]*:../../archivers/unzip
DEPENDS+=	jq-[0-9]*:../../devel/jq

GCC_REQD+=	7

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		# none

#post-extract:
#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/gnome-tweaks-3.34.1-port_to_libhandy1-1.patch

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/bin/
	${CP} -v ${FILESDIR}/gnome-ext-install ${DESTDIR}${PREFIX}/bin/

.include "../../devel/meson/build.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../devel/py-gobject3/buildlink3.mk"
.include "../../sysutils/gsettings-desktop-schemas/buildlink3.mk"
.include "../../devel/libhandy1/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
