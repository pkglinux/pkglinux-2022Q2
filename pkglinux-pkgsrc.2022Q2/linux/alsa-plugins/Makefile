# $NetBSD$

DISTNAME=	alsa-plugins-1.2.6
CATEGORIES=	linux
MASTER_SITES=	https://www.alsa-project.org/files/pub/plugins/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.alsa-project.org/files/pub/plugins/
COMMENT=	plugins for various audio libraries and sound servers
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	gmake pkg-config
GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes

CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--sysconfdir=${PREFIX}/etc

.include "../../audio/alsa-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
