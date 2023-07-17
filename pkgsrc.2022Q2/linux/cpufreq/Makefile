# $NetBSD$

DISTNAME=	cpufrequtils-008
CATEGORIES=	linux
MASTER_SITES=	https://mirrors.edge.kernel.org/pub/linux/utils/kernel/cpufreq/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://mirrors.edge.kernel.org/pub/linux/utils/kernel/cpufreq/
COMMENT=	programs to the cpufreq core and drivers
LICENSE=	gnu-gpl-v2

USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake
MAKE_ENV+=		prefix=${PREFIX}
MAKE_ENV+=		bindir=${PREFIX}/bin
MAKE_ENV+=		sbindir=${PREFIX}/sbin
MAKE_ENV+=		mandir=${PREFIX}/man
MAKE_ENV+=		includedir=${PREFIX}/include
MAKE_ENV+=		libdir=${PREFIX}/lib
MAKE_ENV+=		localedir=${PREFIX}/share/locale
MAKE_ENV+=		docdir=${PREFIX}/share/doc/packages/cpufrequtils
MAKE_ENV+=		confdir=${PREFIX}/etc/

post-install:
	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/bin ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/usr/lib ${DESTDIR}
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/bin/
#	cd ${DESTDIR}${PREFIX}/native/bin/ && ${LN} -sfv ../../bin/* .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/ && ${LN} -sfv ../../../lib/lib* .
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/ && ${LN} -sfv ../../../../lib/pkgconfig/*.pc .
#	lndir.sh ${DESTDIR}${PREFIX}/sbin ${DESTDIR}${PREFIX}/native/sbin
#	lndir.sh ${DESTDIR}${PREFIX}/bin ${DESTDIR}${PREFIX}/native/bin
#	lndir.sh ${DESTDIR}${PREFIX}/lib ${DESTDIR}${PREFIX}/native/usr/lib

.include "../../mk/bsd.pkg.mk"
