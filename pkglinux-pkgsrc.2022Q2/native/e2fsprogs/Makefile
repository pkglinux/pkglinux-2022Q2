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

do-configure:
	cd ${BLDDIR} && ${WRKSRC}/configure	\
		--prefix=/usr	\
		--bindir=/bin	\
		--with-root-prefix=""	\
		--enable-elf-shlibs	\
		--disable-libblkid	\
		--disable-libuuid	\
		--disable-uuidd		\
		--disable-fsck

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDPRE} install-strip || ${GMAKE} DESTDIR=${BLDPRE} install)
	cd ${BLDDIR} && ${GMAKE} DESTDIR=${BLDPRE} install-libs
	chmod -v u+w ${BLDPRE}/usr/lib/{libcom_err,libe2p,libext2fs,libss}.a
	cd ${BLDDIR} && gunzip -v ${BLDPRE}/usr/share/info/libext2fs.info.gz
	cd ${BLDDIR} && install-info --dir-file=${BLDPRE}/usr/share/info/dir ${BLDPRE}/usr/share/info/libext2fs.info
	cd ${BLDDIR} && makeinfo -o doc/com_err.info ${WRKSRC}/lib/et/com_err.texinfo
	cd ${BLDDIR} && install -v -m644 doc/com_err.info ${BLDPRE}/usr/share/info
	cd ${BLDDIR} && install-info --dir-file=${BLDPRE}/usr/share/info/dir ${BLDPRE}/usr/share/info/com_err.info
	${RM} -v ${BLDPRE}/usr/share/info/dir

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libblkid/buildlink3.mk"
.include "../../devel/libuuid/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
