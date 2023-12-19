# $NetBSD$

DISTNAME=	Linux-PAM-1.5.3
CATEGORIES=	native
MASTER_SITES=	${MASTER_SITE_GITHUB:=linux-pam/linux-pam/releases/download/v1.5.3/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	INSERT_YOUR_MAIL_ADDRESS_HERE # or use pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/linux-pam/linux-pam/releases/download/v1.5.3/ # TODO: check
COMMENT=	TODO: Short description of the package
#LICENSE=	# TODO: (see mk/license.mk)

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	libpam/pam.pc.in
PKGCONFIG_OVERRIDE+=	libpam_misc/pam_misc.pc.in
PKGCONFIG_OVERRIDE+=	libpamc/pamc.pc.in

.include "../../mk/bsd.pkg.mk"
