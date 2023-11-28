# $NetBSD$

DISTNAME=	sysstat-12.5.5
CATEGORIES=	linux
MASTER_SITES=	http://sebastien.godard.pagesperso-orange.fr/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://sebastien.godard.pagesperso-orange.fr/
COMMENT=	utilities to monitor system performance and usage activity
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
#USE_PKGLOCALEDIR=	yes
USE_TOOLS+=	gmake pkg-config

CONFIGURE_ARGS+=	--disable-file-attr

CONFIGURE_ENV+=		"sa_lib_dir=${PREFIX}/lib/sa"
CONFIGURE_ENV+=		"sa_dir=${PREFIX}/var/log/sa"
CONFIGURE_ENV+=		"conf_dir=${PREFIX}/etc/sysconfig"

.include "../../mk/bsd.pkg.mk"
