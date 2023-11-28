# $NetBSD$

DISTNAME=	busybox-1.35.0
CATEGORIES=	native
MASTER_SITES=	https://busybox.net/downloads/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://busybox.net/downloads/
COMMENT=	common UNIX utilities into a single small executable
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

USE_LANGUAGES=		c c++

#NO_BUILD=	yes
#NO_CONFIGURE=	yes
#GNU_CONFIGURE=	no
USE_TOOLS+=	gmake

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

#GNU_CONFIGURE=		no
#NO_BUILD=		yes
#NO_CONFIGURE=		yes
#GNU_CONFIGURE_PREDIR=	${PREFIX}
PREDIR=			${PREFIX}/native
BLDDIR=			${WRKSRC}
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

#MAKE_ENV+=	LIBDIR=${BLDPRE}/lib

post-extract:
	${MKDIR} -v ${BLDPRE}

do-configure:
	cd ${BLDDIR} &&  ${GMAKE} distclean -j${MAKE_JOBS}
	cd ${BLDDIR} &&  ${GMAKE} defconfig -j${MAKE_JOBS}
	${RM} -rf ${BLDPRE}

#	cd ${BLDDIR} &&  sed 's/# CONFIG_STATIC is not set/CONFIG_STATIC=y/' -i .config

do-build:
	${MKDIR} -v ${BLDPRE}
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && ${GMAKE} install -j${MAKE_JOBS}
#	cd ${BLDDIR} && ${GMAKE} DESTDIR=${BLDPRE} install -j${MAKE_JOBS}

do-install:
	${MKDIR} -v ${DSTPRE}/bin/
	${CP} -v ${BLDDIR}/_install/bin/busybox ${DSTPRE}/bin/
#	${CP} -v ${BLDPRE}/bin/busybox ${DSTPRE}/bin/

.include "../../mk/bsd.pkg.mk"
