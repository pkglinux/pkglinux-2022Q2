# $NetBSD$

DISTNAME=	portmap_5beta
PKGNAME=	portmap-5beta
#DISTNAME=	portmap-6.0
#PKGNAME=	portmap-6.0
#EXTRACT_SUFX=   .tar.gz
EXTRACT_SUFX=   .tar.bz2
PKGREVISION=	1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.porcupine.org/pub/security/
#MASTER_SITES=	http://neil.brown.name/portmap/portmap-6.0.tar.gz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	ftp://ftp.porcupine.org/pub/security/index.html
# http://ftp.lfs-matrix.net/pub/lfs/
# http://ftp.lfs-matrix.net/pub/blfs/
COMMENT=	RPC portmapper with access control

USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake
INSTALLATION_DIRS+=	sbin share/doc/portmap
#MAKE_FLAGS+=		WRAP_DIR=${BUILDLINK_PREFIX.tcp_wrappers}/lib
#MAKE_FLAGS+=		LIBS= -lwrap -Wl,-R/2022Q2/lib -lnsl -Wl,-R/2022Q2/native/lib
#MAKE_FLAGS+=		LIBS= -lwrap -Wl,-R${PREFIX}/lib -lnsl -Wl,-R${PREFIX}/native/lib
#MAKE_ENV+=		LIBS=" -L/lib -lnsl -L/pkg/lib -lwrap"
#MAKE_ENV+=		LIBS="-L${BUILDLINK_PREFIX}/lib"
MAKE_ENV+=		LDFLAGS+=-L/pkg/lib
NO_CONFIGURE=		yes
RCD_SCRIPTS=		portmap


post-extract:
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/portmap-5beta-compilation_fixes-3.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/portmap-5beta-glibc_errno_fix-1.patch
	
#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/portmap_5beta.patch

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/portmap ${DESTDIR}${PREFIX}/sbin/
	${INSTALL_PROGRAM} ${WRKSRC}/pmap_dump ${DESTDIR}${PREFIX}/sbin/
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${PREFIX}/share/doc/portmap/
	${INSTALL_PROGRAM} ${WRKSRC}/pmap_set ${DESTDIR}${PREFIX}/sbin/

.include "../../security/tcp_wrappers/buildlink3.mk"
.include "../../linux/libnsl/buildlink3.mk"
.include "../../linux/libtirpc/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
