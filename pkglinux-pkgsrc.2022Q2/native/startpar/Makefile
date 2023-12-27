# $NetBSD$

DISTNAME=	startpar-0.65
CATEGORIES=	native
MASTER_SITES=	https://download-mirror.savannah.gnu.org/releases/sysvinit/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://download-mirror.savannah.gnu.org/releases/sysvinit/
COMMENT=	starts runlevel scripts (or programs) in parallel
LICENSE=	gnu-gpl-v2

WRKSRC=		${WRKDIR}/startpar
USE_LANGUAGES=	c c++
USE_TOOLS+=	gmake

#NO_BUILD=	yes
NO_CONFIGURE=	yes
GNU_CONFIGURE=	no

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

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDPRE} install-strip || ${GMAKE} DESTDIR=${BLDPRE} install)

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../mk/bsd.pkg.mk"
