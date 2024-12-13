# $NetBSD$

GITHUB_PROJECT=	lsof
DISTNAME=	lsof-4.99.3
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=lsof-org/}
GITHUB_RELEASE=	4.99.3

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/lsof-org/lsof/
COMMENT=	a command listing open files
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes

CFLAGS+=	-ltirpc
LDFLAGS+=	-ltirpc

.include "../../linux/libtirpc/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
