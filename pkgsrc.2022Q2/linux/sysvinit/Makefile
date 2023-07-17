# $NetBSD$

DISTNAME=	sysvinit-2.96
CATEGORIES=	linux
MASTER_SITES=	http://download.savannah.gnu.org/releases/sysvinit/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://download.savannah.gnu.org/releases/sysvinit/
COMMENT=	The Linux System V init and miscellaneous Linux tools
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

USE_TOOLS+=		gmake
MAKE_ENV+=		ROOT=${DESTDIR}${PREFIX} MANDIR=${DESTDIR}${PREFIX}/share/man \
			ROOT_GROUP=${ROOT_GROUP} ROOT_USER=${ROOT_USER}

#post-extract:
#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/sysvinit-2.96-consolidated-1.patch

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/sysvinit

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/sbin/
	(cd ${DESTDIR}${PREFIX}/native/sbin/;${LN} -svf ../../sbin/* .)
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/
	(cd ${DESTDIR}${PREFIX}/native/usr/include/;${LN} -svf ../../../include/* .)

.include "../../mk/bsd.pkg.mk"
