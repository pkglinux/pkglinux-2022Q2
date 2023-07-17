# $NetBSD$

DISTNAME=	libatasmart-0.19
CATEGORIES=	linux
MASTER_SITES=	http://0pointer.de/public/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://0pointer.de/public/
COMMENT=	only does ATA S.M.A.R.T.
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config gmake

PKGCONFIG_OVERRIDE+=	libatasmart.pc.in

.include "../../linux/eudev/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
