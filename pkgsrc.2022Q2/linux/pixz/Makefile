# $NetBSD$

DISTNAME=	pixz-1.0.7
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=vasi/pixz/releases/download/v1.0.7/}
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/vasi/pixz/releases/download/v1.0.7/ # TODO: check
COMMENT=	smaller blocks which makes random access
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config gmake autoconf automake m4

pre-configure:
	cd ${WRKSRC} && autoreconf -fiv

.include "../../archivers/libarchive/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
