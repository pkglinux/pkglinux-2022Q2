# $NetBSD$

DISTNAME=	acpica-unix-20230628
CATEGORIES=	linux
MASTER_SITES=	https://repos.pkglinux.top/distfiles/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://repos.pkglinux.top/distfiles/
COMMENT=	entire ACPICA source, makefiles, and ACPI utilities 
LICENSE=	intel

ONLY_FOR_PLATFORM=	Linux-*-*

USE_LANGUAGES=		c c++

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

#NO_BUILD=	yes
NO_CONFIGURE=	yes
GNU_CONFIGURE=	no

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

PKGSRC_USE_FORTIFY=	no

post-extract:
	${MKDIR} -v ${BLDPRE}

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDPRE} install-strip || ${GMAKE} DESTDIR=${BLDPRE} install)

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../devel/bison/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
