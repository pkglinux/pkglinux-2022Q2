# $NetBSD$

DISTNAME=	connect4
CATEGORIES=	linux
PKGNAME=	${DISTNAME}-1.0
MASTER_SITES=	${MASTER_SITE_GITHUB:=badescunicu/connect4/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/badescunicu/connect4/ # TODO: check
COMMENT=	is a two-player slot game	
LICENSE=	mit

NO_CONFIGURE=	yes
GNU_CONFIGURE=	no

USE_TOO+=	gmake

do-build:
	cd ${WRKSRC} && gmake build

do-install:
	${MKDIR} -pv ${DESTDIR}${PREFIX}/bin/
	${CP} -av ${WRKSRC}/${DISTNAME} ${DESTDIR}${PREFIX}/bin/

.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
