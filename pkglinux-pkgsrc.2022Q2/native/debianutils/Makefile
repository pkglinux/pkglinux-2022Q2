# $NetBSD$

DISTNAME=	debianutils_5.14
PKGNAME=	debianutils-5.14
CATEGORIES=	native
MASTER_SITES=	http://deb.debian.org/debian/pool/main/d/debianutils/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://deb.debian.org/debian/pool/main/d/debianutils/
COMMENT=	utils primarily for the installation scripts of Debian
LICENSE=	gnu-gpl-v2

USE_TOOLS+=		grep gmake makeinfo sed:run tar:build m4 autoconf automake

WRKSRC=			${WRKDIR}/${PKGNAME}
USE_PKGLOCALEDIR=	yes

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

#NO_BUILD=	yes
#NO_CONFIGURE=	yes
GNU_CONFIGURE=	yes

USE_NATIVE_GCC=	yes
#USE_NATIVE_GCC=	no
USE_PKGSRC_GCC=		no
#GCC_REQD+=		6

PKGSRC_USE_SSP=		no
MKPIE_SUPPORTED=	no
PKGSRC_MKPIE=		no
#STACK_CHECK_SUPPORTED=	no
#PKGSRC_USE_STACK_CHECKD=	no
#SSP_SUPPORTED=		yes

PREDIR=			${PREFIX}/native
BLDDIR=			${WRKSRC}
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

post-extract:
	${MKDIR} -v ${BLDPRE}

pre-configure:
	cd ${WRKSRC} && autoreconf -ivf

do-configure:
	cd ${WRKSRC} && ./configure --prefix=/usr

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDPRE} install-strip || ${GMAKE} DESTDIR=${BLDPRE} install)

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../mk/bsd.pkg.mk"
