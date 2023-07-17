# $NetBSD: Makefile,v 1.7 2021/01/13 09:17:24 nia Exp $

DISTNAME=	argp-standalone-1.3
PKGNAME=	argp-1.3
#DISTNAME=	argp-standalone-1.4.1
#PKGNAME=	argp-1.4.1
PKGREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	http://www.lysator.liu.se/~nisse/misc/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.gnu.org/software/libc/manual/html_node/Argp.html
COMMENT=	Argument parsing function from glibc
LICENSE=	gnu-lgpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_LANGUAGES=	c99

INSTALLATION_DIRS=	include lib

post-extract:
	${CP} -v ${FILESDIR}/argp-standalone-1.4.1/argp.h ${WRKSRC}
	${CP} -v ${FILESDIR}/argp-standalone-1.4.1/argp-parse.c ${WRKSRC}

do-install:
	libtool --mode=install ${INSTALL_LIB} ${WRKSRC}/libargp.la ${DESTDIR}${PREFIX}/lib/
	${INSTALL_DATA} ${WRKSRC}/argp.h ${DESTDIR}${PREFIX}/include/

#CFLAGS+=	-D_GNU_SOURCE -D_BSD_SOURCE
#CFLAGS+=	-D_BSD_SOURCE
#CFLAGS+=	-D_GNU_SOURCE

.include "../../mk/bsd.pkg.mk"
