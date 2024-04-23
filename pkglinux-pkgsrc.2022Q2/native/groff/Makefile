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

CONFIG_ENV+=		PAGE=A4
CONFIG_ARGS+=		--prefix=/usr
.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CONFIG_ARGS+=		--host=${MACHINE_GNU_PLATFORM}
CONFIG_ARGS+=		--with-sysroot=${TOOLS_CROSS_DESTDIR}
CONFIG_ARGS+=		--with-doc=no
.endif

do-configure:
	cd ${BLDDIR} && ${SETENV} ${CONFIG_ENV} ${WRKSRC}/configure ${CONFIG_ARGS}

#	cd ${BLDDIR} && PAGE=A4 ${WRKSRC}/configure --prefix=/usr

do-build:
	cd ${BLDDIR} && ${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDPRE} install-strip || ${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDPRE} install)
	${RM} -rfv ${BLDPRE}/usr/share/info/dir

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
MAK_ENV+= 		PATH=${TOOLDIR}/bin:$$PATH
MAK_ENV+=		AS_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-as"
MAK_ENV+=		LD_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld"
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

#.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
