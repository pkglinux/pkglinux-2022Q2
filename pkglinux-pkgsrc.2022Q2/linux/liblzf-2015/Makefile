# $NetBSD$

DISTNAME=	liblzf-2015
CATEGORIES=	linux
MASTER_SITES=	https://repos.pkglinux.top/distfiles/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://repos.pkglinux.top/distfiles/
COMMENT=	extremely fast (not that much slower than a pure memcpy) compression algorithm
LICENSE=	mit

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake pkg-config autoconf automake m4 intltools msgfmt xgettext
USE_LIBTOOL=		no
GNU_CONFIGURE=		yes
WRKSRC=			${WRKDIR}/${DISTNAME}

BLDDIR=			${WRKDIR}/build
BLDPRE=			${BLDDIR}${PREFIX}
DSTPRE=			${DESTDIR}${PREFIX}

post-extract:
		${MKDIR} -v ${BLDPRE}

do-configure:
		cd ${WRKSRC} && autoreconf -fiv
		cd ${WRKSRC} && ./configure \
			--prefix=${BLDPRE} \
			--sysconfdir=${PREFIX}/etc


do-build:
		cd ${WRKSRC} && ${GMAKE} -j${MAKE_JOBS}
		cd ${WRKSRC} && ${GMAKE} DESTDIR=${BLDPRE} install
		cd ${BLDPRE}/lib/ && ${CC} -shared -o liblzf.so liblzf.a
		${MKDIR} -v ${BLDPRE}/native/usr/bin/
		cd ${BLDPRE}/native/usr/bin/ && ${LN} -sfv ../../../bin/lzf .

do-install:
		${MKDIR} -v ${DSTPRE}
		${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../mk/bsd.pkg.mk"
