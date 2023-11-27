# $NetBSD: $

DISTNAME=		tightvnc-1.3.10
PKGNAME=		mkshadow-1.3.10
CATEGORIES=		native
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=vnc-tight/}
DISTFILES=		${DISTNAME}_unixsrc.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://www.tightvnc.com/
COMMENT=		mkshadow config util

ONLY_FOR_PLATFORM=	Linux-*-*

#USE_TOOLS+=		gmake

USE_LANGUAGES=		c c++
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

GNU_CONFIGURE=		no
#NO_BUILD=		yes
NO_CONFIGURE=		yes
#GNU_CONFIGURE_PREDIR=	${PREFIX}
PREDIR=			${PREFIX}/native
BLDDIR=			${WRKSRC}
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

post-extract:
	${LN} -sv ${WRKDIR}/vnc_unixsrc ${WRKSRC}
	${MKDIR} -v ${BLDPRE}

do-build:
	${MKDIR} -v ${BLDPRE}/sbin/
	cd ${BLDDIR}/Xvnc/config/util/mkshadow/ && gcc -o mkshadow mkshadow.c savedir.c wildmat.c
	${CP} -v ${BLDDIR}/Xvnc/config/util/mkshadow/mkshadow ${BLDPRE}/sbin/

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../mk/bsd.pkg.mk"
