# $NetBSD$

DISTNAME=	libtirpc-1.2.5
#DISTNAME=	libtirpc-1.3.3
CATEGORIES=	linux
MASTER_SITES=	https://downloads.sourceforge.net/libtirpc/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://downloads.sourceforge.net/libtirpc/
COMMENT=	SunLib's transport-independent RPC (TI-RPC) documentation
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--sysconfdir=${PREFIX}/etc
#DEPENDS+=	dovecot2-gssapi-[0-9]*:../../mail/dovecot2-gssapi
CONFIGURE_ARGS+=	--disable-gssapi

PKGCONFIG_OVERRIDE+=	libtirpc.pc.in

post-install:
	${MKDIR} -pv ${DESTDIR}${PREFIX}/include/rpc/
	cd ${DESTDIR}${PREFIX}/include/rpc && ${LN} -snvf ../tirpc/rpc/* .
	cd ${DESTDIR}${PREFIX}/include && ${LN} -snvf tirpc/netconfig.h .
	lndir.sh -l sf ${PREFIX}/include ${PREFIX}/native/usr/include ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/etc ${PREFIX}/native/etc ${DESTDIR}

.include "../../mk/bsd.pkg.mk"
