# $NetBSD$

DISTNAME=	e2fsprogs-1.45.5
CATEGORIES=	native
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=e2fsprogs/e2fsprogs/v1.45.5/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://e2fsprogs.sourceforge.net/
COMMENT=	the second extended file system management programs
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

USE_TOOLS+=		pkg-config
USE_TOOLS+=		gmake makeinfo sed:run tar:build perl

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

CONFIG_ARGS+=		--prefix=/usr
CONFIG_ARGS+=		--bindir=/bin
CONFIG_ARGS+=		--with-root-prefix=""
CONFIG_ARGS+=		--enable-elf-shlibs
CONFIG_ARGS+=		--disable-libblkid
CONFIG_ARGS+=		--disable-libuuid
CONFIG_ARGS+=		--disable-uuidd
CONFIG_ARGS+=		--disable-fsck
.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CONFIG_ARGS+=		--host=${MACHINE_GNU_PLATFORM}
CONFIG_ARGS+=		--enable-libblkid
CONFIG_ARGS+=		--enable-libuuid
CONFIG_ARGS+=		--enable-fsck
CONFIG_ARGS+=		--enable-subset
CONFIG_ENV+=		BUILD_CC=${PREFIX}/gcc6/bin/gcc
.endif

do-configure:
	cd ${BLDDIR} && ${SETENV} ${CONFIG_ENV} ${WRKSRC}/configure ${CONFIG_ARGS}

do-build:
	cd ${BLDDIR} && ${SETENV} ${MAK_ENV} ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${SETENV} ${MAK_ENV} ${GMAKE} DESTDIR=${BLDPRE} install-strip || ${SETENV} ${MAK_ENV} ${GMAKE} DESTDIR=${BLDPRE} install)
	cd ${BLDDIR} && ${GMAKE} DESTDIR=${BLDPRE} install-libs
.if empty(USE_CROSS_COMPILE:M[yY][eE][sS])
	chmod -v u+w ${BLDPRE}/usr/lib/{libcom_err,libe2p,libext2fs,libss}.a
	cd ${BLDDIR} && gunzip -v ${BLDPRE}/usr/share/info/libext2fs.info.gz
	cd ${BLDDIR} && install-info --dir-file=${BLDPRE}/usr/share/info/dir ${BLDPRE}/usr/share/info/libext2fs.info
	cd ${BLDDIR} && makeinfo -o doc/com_err.info ${WRKSRC}/lib/et/com_err.texinfo
	cd ${BLDDIR} && install -v -m644 doc/com_err.info ${BLDPRE}/usr/share/info
	cd ${BLDDIR} && install-info --dir-file=${BLDPRE}/usr/share/info/dir ${BLDPRE}/usr/share/info/com_err.info
	${RM} -v ${BLDPRE}/usr/share/info/dir
.endif

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

.include "../../devel/libuuid/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libblkid/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
