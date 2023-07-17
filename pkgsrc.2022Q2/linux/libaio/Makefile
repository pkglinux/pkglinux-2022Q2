# $NetBSD$

DISTNAME=	libaio_0.3.112.orig
PKGNAME=	libaio-0.3.112
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_DEBIAN:=pool/main/liba/libaio/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	use pkgsrc-users@NetBSD.org
HOMEPAGE=	https://ftp.debian.org/debian/pool/main/liba/libaio/ # TODO: check
COMMENT=	The Linux-native asynchronous I/O facility
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	gmake

WRKSRC=	${WRKDIR}/libaio-0.3.112

USE_PKGLOCALEDIR=	yes

#MAKE_ENV+=		prefix=

post-extract:
	gsed -i "s:prefix=/usr:prefix=/${PREFIX}:g" ${WRKSRC}/Makefile

.include "../../mk/bsd.pkg.mk"
