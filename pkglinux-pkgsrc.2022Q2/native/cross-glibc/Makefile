# $NetBSD$

.include "../../native/cross.mk"
BUILD64=
GLIBCNAME=	glibc
GLIBCVERSION=	2.31
DISTNAME=	${GLIBCNAME}-${GLIBCVERSION}
PKGNAME=	${CROSS_MNAME}-${DISTNAME}
CATEGORY=	native
CATEGORIES=	${CATEGORY}
MASTER_SITES=	http://ftp.gnu.org/gnu/glibc/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ftp.gnu.org/gnu/glibc/
COMMENT=	GNU C library
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1

ONLY_FOR_PLATFORM=	Linux-*-*

USE_CWRAPPERS=		no
#USE_LANGUAGES=		c
#USE_NATIVE_GCC=		yes
##USE_NATIVE_GCC=		no
#USE_PKGSRC_GCC=		no	
##USE_PKGSRC_GCC=		yes

#GCC_REQD+=		6
#GCC_REQD+=		8

.if !empty(CROSS_TARGET:Mriscv*)
GCC_REQD+=		7
.else
GCC_REQD+=		6
.endif
MKPIE_SUPPORTED=	no
PKGSRC_MKPIE=		no
PKGSRC_USE_FORTIFY=	no
PKGSRC_USE_SSP=		no
#SSP_SUPPORTED=		yes

#STACK_CHECK_SUPPORTED=	no
#PKGSRC_USE_STACK_CHECKD=	no

FILESDIR=		${.CURDIR}/../glibc/files

USE_TOOLS+=		gmake makeinfo sed:run tar:build perl

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

PREDIR=		${PREFIX}/native/${CROSS_MNAME}
BLDDIR=		${WRKDIR}/build
BLDPRE=		${BLDDIR}${PREDIR}
DSTPRE=		${DESTDIR}${PREDIR}

post-extract:
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/glibc-2.31-fhs-1.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/perlnever.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/elf__get_dynamic_info_h.patch
	${MKDIR} -v ${BLDPRE}/lib
	cd ${WRKSRC} && cp -v timezone/Makefile{,.orig} && \
		sed 's/\\$$(pwd)/`pwd`/' timezone/Makefile.orig > timezone/Makefile

CONFIG_ENV+=		SED=${PREFIX}/bin/gsed
.if !empty(CROSS_TARGET:Mriscv*)
CONFIG_ENV+=		BUILD_CC="${PREFIX}/gcc7/bin/gcc"
.else
CONFIG_ENV+=		BUILD_CC="${PREFIX}/native/usr/bin/gcc"
.endif
CONFIG_ENV+=		CC="${PREDIR}/bin/${CROSS_TARGET}-gcc ${BUILD64}"
CONFIG_ENV+=		AR="${PREDIR}/bin/${CROSS_TARGET}-ar"
CONFIG_ENV+=		AS="${PREDIR}/bin/${CROSS_TARGET}-as"
CONFIG_ENV+=		LD="${PREDIR}/bin/${CROSS_TARGET}-ld"
CONFIG_ENV+=		OBJDUMP="${PREDIR}/bin/${CROSS_TARGET}-objdump"
CONFIG_ENV+=		READELF="${PREDIR}/bin/${CROSS_TARGET}-readelf"
CONFIG_ENV+=		STRIP="${PREDIR}/bin/${CROSS_TARGET}-strip"
CONFIG_ENV+=		RANLIB="${PREDIR}/bin/${CROSS_TARGET}-ranlib"
CONFIG_ENV+=		PWD_COMMAND=${PREFIX}/bin/gpwd
CONFIG_ARGS+=		--prefix=${PREDIR}/sysroot/usr
.if !empty(CROSS_TARGET:Msparc-*)
CONFIG_ARGS+=		--host=${CROSS_TARGET:S/sparc-/sparcv9-/}
CONFIG_ARGS+=		--target=${CROSS_TARGET:S/sparc-/sparcv9-/}
.elif !empty(CROSS_TARGET:Msh-*)
CONFIG_ARGS+=		--host=${CROSS_TARGET:S/sh-/sh4-/}
CONFIG_ARGS+=		--target=${CROSS_TARGET:S/sh-/sh4-/}
.else
CONFIG_ARGS+=		--host=${CROSS_TARGET}
CONFIG_ARGS+=		--target=${CROSS_TARGET}
.endif
CONFIG_ARGS+=		--with-binutils=${PREDIR}/bin
CONFIG_ARGS+=		--with-headers=${PREDIR}/sysroot/usr/include
.if !empty(CROSS_TARGET:Msparc-*)
CONFIG_ARGS+=		--without-cvs
CONFIG_ARGS+=		--disable-profile
CONFIG_ARGS+=		--without-gd
CONFIG_ARGS+=		--disable-debug
CONFIG_ARGS+=		--with-__thread
CONFIG_ARGS+=		--with-tls
CONFIG_ARGS+=		libc_cv_forced_unwind=yes
CONFIG_ARGS+=		libc_cv_ctors_header=yes
CONFIG_ARGS+=		libc_cv_c_cleanup=yes
.endif
.if !empty(CROSS_TARGET:Marm*)
CONFIG_ARGS+=		--enable-add-ons=no
.if !empty(CROSS_TARGET:Marm-*-*-gnueabi)
CONFIG_ARGS+=		--without-fp
.endif
.if !empty(CROSS_TARGET:Marm-*-*-gnueabihf)
CONFIG_ARGS+=		--with-fp
.endif
.endif
CONFIG_ARGS+=		--enable-shared
.if !empty(CROSS_TARGET:Marmeb-*-*-gnueabi)
CONFIG_ARGS+=		--without-fp
#CONFIG_ARGS+=		--disable-werror
.endif
.if !empty(CROSS_TARGET:Marm*) || !empty(CROSS_TARGET:Msh*)
CONFIG_ARGS+=		--without-cvs
CONFIG_ARGS+=		--disable-profile
CONFIG_ARGS+=		--without-gd
CONFIG_ARGS+=		--disable-debug
CONFIG_ARGS+=		--disable-sanity-checks
#CONFIG_ARGS+=		--enable-obsolete-rpc
CONFIG_ARGS+=		--with-__thread
CONFIG_ARGS+=		--with-tls
CONFIG_ARGS+=		--enable-add-ons=no
.if !empty(CROSS_TARGET:Msh*)
CONFIG_ARGS+=		--disable-werror
CONFIG_ARGS+=		--with-fp
#CONFIG_ARGS+=		--disable-multi-arch
#CONFIG_ARGS+=		--disable-multilib
.endif
.else
CONFIG_ARGS+=		--enable-static
CONFIG_ARGS+=		libc_cv_forced_unwind=yes
.endif
CONFIG_ARGS+=		--enable-kernel=3.2
#CONFIG_ARGS+=		libc_cv_slibdir=${PREDIR}/sysroot/lib
#CONFIG_ARGS+=		--enable-obsolete-rpc
#CONFIG_ARGS+=		--enable-shared
#CONFIG_ARGS+=		--disable-multi-arch
#CONFIG_ARGS+=		--disable-multilib
#CONFIG_ARGS+=		--disable-werror
#CONFIG_ARGS+=		--disable-profile
#CONFIG_ARGS+=		--enable-stack-protector=strong
#CONFIG_ARGS+=		--cache-file=config.cache
#CONFIG_ARGS+=		--with-default-link
#CONFIG_ARGS+=		--without-selinux

do-configure:
	cd ${BLDDIR} && \
	${SETENV} ${CONFIG_ENV} ${WRKSRC}/configure ${CONFIG_ARGS}

do-build:
	cd ${BLDDIR} && ${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDDIR} install-strip || ${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDDIR} install)

post-build:
.if !empty(CROSS_TARGET:M*64*)
	${MKDIR} -v ${BLDPRE}/sysroot/usr/lib64/
	cd ${BLDPRE}/sysroot/usr/lib64/ && ln -snvf ../lib/* .
	${MKDIR} -v ${BLDPRE}/sysroot/lib64/
	cd ${BLDPRE}/sysroot/lib64/ && ln -snvf ../usr/lib/* .
.endif
	${MKDIR} -v ${BLDPRE}/sysroot/lib/
	cd ${BLDPRE}/sysroot/lib/ && ln -snvf ../usr/lib/* .
	${MKDIR} -v ${BLDPRE}/${CROSS_TARGET}/lib/
	cd ${BLDPRE}/${CROSS_TARGET}/lib/ && cp -av ../../sysroot/usr/lib/* .
	echo "${PREDIR}/sysroot/usr/lib" > ${BLDPRE}/${CROSS_TARGET}/lib/COPIED

#	${MKDIR} -v ${BLDPRE}/sysroot/usr/lib64/
#	cd ${BLDPRE}/sysroot/usr/lib64/ && ${LN} -snvf ../lib/* .
#	${MKDIR} -v ${BLDPRE}/sysroot/lib/
#	cd ${BLDPRE}/sysroot/lib/ && ${LN} -snvf ../usr/lib/* .
#	${MKDIR} -v ${BLDPRE}/sysroot/lib64/
#	cd ${BLDPRE}/sysroot/lib64/ && ${LN} -snvf ../usr/lib/* .

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

GENERATE_PLIST+= \
 	cd ${DESTDIR}${PREFIX} && \
	${FIND} native \( -type f -o -type l \) -print | ${SORT} ;

.include "../../mk/bsd.pkg.mk"
