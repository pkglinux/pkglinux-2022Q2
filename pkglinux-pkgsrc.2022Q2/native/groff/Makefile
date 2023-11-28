# $NetBSD$

DISTNAME=	groff-1.22.4
CATEGORIES=	native
MASTER_SITES=	https://ftp.gnu.org/gnu/groff/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://ftp.gnu.org/gnu/groff/

COMMENT=	programs for processing and formatting text
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-* # Uses Linux kernel headers

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

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

USE_TOOLS+=		makeinfo gmake pkg-config intltools msgfmt xgettext perl

#GNU_CONFIGURE=		no
#NO_BUILD=		yes
#NO_CONFIGURE=		yes
#GNU_CONFIGURE_PREDIR=	${PREFIX}
PREDIR=			${PREFIX}/native
BLDDIR=			${WRKDIR}/build
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

post-extract:
	${MKDIR} -v ${BLDPRE}

do-configure:
	cd ${BLDDIR} && PAGE=A4 ${WRKSRC}/configure --prefix=/usr

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDPRE} install-strip || ${GMAKE} DESTDIR=${BLDPRE} install)
	${RM} -rfv ${BLDPRE}/usr/share/info/dir

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

#.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
