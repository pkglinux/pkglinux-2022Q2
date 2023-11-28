# $NetBSD$

DISTNAME=	lfs-bootscripts-20191031
PKGNAME=	native-booting-20191031
CATEGORIES=	native
MASTER_SITES=	http://www.linuxfromscratch.org/lfs/downloads/9.1/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	use pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.linuxfromscratch.org/lfs/downloads/9.1/
COMMENT=	Scripts to start/stop the LFS system at bootup/shutdow
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

USE_TOOLS+=		gmake

HAS_CONFIGURE=		no
NO_BUILD=		yes
NO_CONFIGURE=		yes
GNU_CONFIGURE=		no

do-install:
	cd ${WRKSRC} && ${GMAKE} -j${MAKE_JOBS} DESTDIR=${DESTDIR}${PREFIX}/native install

#	${CP} -av ${FILESDIR}/native/* ${DESTDIR}${PREFIX}/native/
#	${CP} -av ${FILESDIR}/lndir ${DESTDIR}${PREFIX}/native/sbin/


#	cd ${FILESDIR} && gcc -o lndir.sh lndir.c abs2rel.c
#	cd ${FILESDIR}/native && ${FIND} . -type d -exec ${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/native/{} \;
#	cd ${FILESDIR}/native && ${FIND} . \! -type d -exec ${INSTALL_DATA} {} ${DESTDIR}${PREFIX}/native/{} \;

.include "../../mk/bsd.pkg.mk"
