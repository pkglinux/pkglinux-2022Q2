# $NetBSD$

.include "../../native/cross.mk"
DISTVERS=	2.38
DISTNAME=	binutils-${DISTVERS}
PKGNAME=	${CROSS_MNAME}-${DISTNAME}
CATEGORY=	native
CATEGORIES=	${CATEGORY}
MASTER_SITES=	${MASTER_SITE_GNU:=binutils/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.gnu.org/software/binutils/
COMMENT=	GNU binary utilities
LICENSE=	gnu-gpl-v2 AND gnu-gpl-v3 AND gnu-lgpl-v2 AND gnu-lgpl-v3

ONLY_FOR_PLATFORM=	Linux-*-*

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

USE_LANGUAGES=		c c++
USE_NATIVE_GCC=		yes
USE_PKGSRC_GCC=		no
.if !empty(CROSS_TARGET:Mriscv*)
GCC_REQD+=		7
.else
GCC_REQD+=		6
.endif
USE_TOOLS+=		gmake bison
USE_TOOLS+=		gmake makeinfo sed:run tar:build perl

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

#HAS_CONFIGURE=		no
#NO_BUILD=		yes
#NO_CONFIGURE=		yes
#GNU_CONFIGURE=		no
#GNU_CONFIGURE_PREFIX=	${PREFIX}/native
PREDIR=			${PREFIX}/native/${CROSS_MNAME}
BLDDIR=			${WRKDIR}/build
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

post-extract:
	${MKDIR} -v ${BLDPRE}

CONFIG_ENV+=		AR=ar
CONFIG_ENV+=		AS=as
CONFIG_ARGS+=		--prefix=${PREDIR}
CONFIG_ARGS+=		--target=${CROSS_TARGET}
CONFIG_ARGS+=		--disable-werror
#CONFIG_ARGS+=		--disable-static
CONFIG_ARGS+=		--enable-gold=yes
CONFIG_ARGS+=		--disable-nls
CONFIG_ARGS+=		--enable-ld=default
.if !empty(CROSS_TARGET:Mmips64*-gnuabin32)
CONFIG_ARGS+=		--enable-64-bit-bfd=no
.elif !empty(CROSS_TARGET:M*64*)
CONFIG_ARGS+=		--enable-64-bit-bfd
.endif
CONFIG_ARGS+=		--with-lib-path=/usr/lib
CONFIG_ARGS+=		--with-sysroot=${PREDIR}/sysroot
.if !empty(CROSS_TARGET:Marm*)
CONFIG_ARGS+=		--enable-64-bit-bfd=no
CONFIG_ARGS+=		--enable-threads
CONFIG_ARGS+=		--enable-plugins
CONFIG_ARGS+=		--enable-deterministic-archives
CONFIG_ARGS+=		--disable-multilib
CONFIG_ARGS+=		--disable-sim
CONFIG_ARGS+=		--disable-gdb
CONFIG_ARGS+=		--without-zstd
.endif
.if !empty(CROSS_TARGET:Marm-*-gnueabi)
CONFIG_ARGS+=		--with-float=soft
.endif
.if !empty(CROSS_TARGET:Msh-*)
CONFIG_ARGS+=		--disable-werror
CONFIG_ARGS+=		--enable-ld=yes
CONFIG_ARGS+=		--enable-gold=no
CONFIG_ARGS+=		--enable-plugins
CONFIG_ARGS+=		--enable-deterministic-archives
CONFIG_ARGS+=		--enable-multilib
CONFIG_ARGS+=		--disable-sim
CONFIG_ARGS+=		--disable-gdb
CONFIG_ARGS+=		--disable-nls
CONFIG_ARGS+=		--without-zstd
.endif

do-configure:
	cd ${BLDDIR} && ${SETENV} ${CONFIG_ENV} ${WRKSRC}/configure ${CONFIG_ARGS}

do-build:
	cd ${BLDDIR} && ${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDDIR} install-strip || ${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDDIR} install)
	${RM} ${BLDPRE}/share/info/dir

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

GENERATE_PLIST+= \
   	cd ${DESTDIR}${PREFIX} && \
	${FIND} native \( -type f -o -type l \) -print | ${SORT} ;

.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
