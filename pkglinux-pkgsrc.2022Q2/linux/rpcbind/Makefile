# $NetBSD$

DISTNAME=	rpcbind-1.2.7
CATEGORIES=	linux
MASTER_SITES=	https://jaist.dl.sourceforge.net/project/rpcbind/rpcbind/1.2.7/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://jaist.dl.sourceforge.net/project/rpcbind/rpcbind/1.2.7/
COMMENT=	converts RPC program numbers into universal addresse
LICENSE=	modified-bsd

USE_TOOLS+=	pkg-config
GNU_CONFIGURE=	yes

CONFIGURE_ARGS+= --prefix=${PREFIX}
CONFIGURE_ARGS+= --without-systemdsystemunitdir
CONFIGURE_ARGS+= --with-statedir=${PREFIX}/var/run/rpcbind

.include "../../linux/libtirpc/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
