# $NetBSD$

DISTNAME=	gnome-shell-extensions-40.2
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gnome-shell-extensions/40/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	INSERT_YOUR_MAIL_ADDRESS_HERE # or use pkgsrc-users@NetBSD.org
HOMEPAGE=	https://download.gnome.org/sources/gnome-shell-extensions/40/ # TODO: check
COMMENT=	additional and optional functionality to GNOME Shell
LICENSE=	gnu-gpl-v2

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		# none

#post-install:
#	${CP} -av ${FILESDIR}/extensions/* ${DESTDIR}${PREFIX}/share/gnome-shell/extensions/

.include "../../devel/meson/build.mk"
.include "../../sysutils/libgtop/buildlink3.mk"
.include "../../www/sassc/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
