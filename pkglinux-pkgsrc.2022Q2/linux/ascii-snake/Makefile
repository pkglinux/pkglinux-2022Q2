# $NetBSD$

DISTNAME=	ascii-snake-1.0
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=cyphar/ascii-snake/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/cyphar/ascii-snake/ # TODO: check
COMMENT=	A remake of the popular Nokia game
LICENSE=	gnu-gpl-v3

WRKSRC=	${WRKDIR}/ascii-snake

FORTIFY_SUPPORTED=	no
CFLAGS+=		-D _BSD_SOURCE
#CFLAGS+=		--shared -fPIC -Wno-implicit-function-declaration
#CFLAGS+=		-std=c89

do-build:
	cd ${WRKSRC} && ${CC} snake.c -o snake

do-install:
	${MKDIR} -pv ${DESTDIR}${PREFIX}/bin/
	${CP} -av ${WRKSRC}/snake ${DESTDIR}${PREFIX}/bin/

.include "../../mk/bsd.pkg.mk"
