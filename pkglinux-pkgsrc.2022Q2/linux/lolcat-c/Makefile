# $NetBSD$

DISTNAME=	lolcat-1.5
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=jaseg/lolcat/}
PKGNAME=	${DISTNAME:C/-.*//}-c-${DISTNAME:C/.*-//}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/jaseg/lolcat/ # TODO: check
COMMENT=	High-performance implementation of lolcat
LICENSE=	mit

do-install:
	${MKDIR} -pv ${DESTDIR}${PREFIX}/sbin/
	cd ${WRKSRC} && DESTDIR=${DESTDIR}${PREFIX}/sbin gmake install

.include "../../mk/bsd.pkg.mk"
