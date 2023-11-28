# $NetBSD$

GLIBCNAME=	glibc
GLIBCVERSION=	2.31
#GLIBCVERSION=	2.34
DISTNAME=	${GLIBCNAME}-${GLIBCVERSION}
CATEGORY=	native
CATEGORIES=	${CATEGORY}
MASTER_SITES=	http://ftp.gnu.org/gnu/glibc/
EXTRACT_SUFX=	.tar.xz
PKGNAME=	${CATEGORY}-${GLIBCNAME}-x32-${GLIBCVERSION}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ftp.gnu.org/gnu/glibc/
COMMENT=	GNU C library
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1

ONLY_FOR_PLATFORM=	Linux-*-*

#USE_LANGUAGES=		c c++
#GCC_REQD+=		6	

#USE_LIBTOOL=		yes
USE_TOOLS+=		grep gmake makeinfo sed:run tar:build m4 autoconf automake
USE_TOOLS+=		pkg-config intltools msgfmt xgettext perl
TOOLS_PLATFORM.msgfmt=
.include "../../lang/python/tool.mk"

PYTHON_FOR_BUILD_ONLY=	tool

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

#GNU_CONFIGURE=		no
#NO_BUILD=		yes
#NO_CONFIGURE=		yes
#GNU_CONFIGURE_PREDIR=	${PREFIX}
PREDIR=			${PREFIX}/native
BLDDIR=			${WRKDIR}/build
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

#	gsed -e '/NOTIFY_REMOVED)/s/)/ \&\& data.attr != NULL)/' \
#	    -i ${WRKSRC}/sysdeps/unix/sysv/linux/mq_notify.c
#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/elf_get_dynamic_info.patch

post-extract:
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/perlnever.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/glibc-2.31-fhs-1.patch
	${MKDIR} -v ${BLDPRE}

# fix a security problem identified upstream for glibc-2.34
#	gsed -e '/NOTIFY_REMOVED)/s/)/ \&\& data.attr != NULL)/' \
#	    -i ${WRKSRC}/sysdeps/unix/sysv/linux/mq_notify.c
#		--host=x86_64-pc-linux-gnux32			\
#	cd ${BLDDIR} && CC="/pkg/gcc6/bin/gcc -specs=${FILESDIR}/gcc6.specs -fno-pie -fno-PIE -mx32" CXX="/pkg/gcc6/bin/g++ -mx32" \

do-configure:
	cd ${BLDDIR} && CC="/pkg/gcc6/bin/gcc -specs=${FILESDIR}/gcc6.specs -fno-pie -fno-PIE -mx32" CXX="/pkg/gcc6/bin/g++ -mx32" \
	${WRKSRC}/configure					\
		--prefix=${PREDIR}/usr				\
		--host=x86_64-unknown-linux-gnux32		\
		--build=$(${WRKSRC}/scripts/config.guess)	\
		--enable-kernel=3.2				\
		--disable-werror				\
		--with-headers=/usr/include			\
		--enable-multi-arch				\
		--libdir=${PREDIR}/usr/libx32			\
		--libexecdir=${PREDIR}/usr/libx32		\
		libc_cv_slibdir=${PREDIR}/libx32

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDDIR} install-strip || ${GMAKE} DESTDIR=${BLDDIR} install)

do-install:
	${MKDIR} -v ${DSTPRE}/libx32/
	${MKDIR} -v ${DSTPRE}/usr/libx32/
	${MKDIR} -v ${DSTPRE}/usr/include/gnu/
	${MKDIR} -v ${DSTPRE}/lib/
	${CP} -av ${BLDPRE}/libx32/* ${DSTPRE}/libx32/
	${CP} -av ${BLDPRE}/usr/libx32/* ${DSTPRE}/usr/libx32/
	${CP} -av ${BLDPRE}/usr/include/gnu/{lib-names,stubs}-x32.h ${DSTPRE}/usr/include/gnu/
	${LN} -sfv ../libx32/ld-linux-x32.so.2 ${DSTPRE}/lib/ld-linux-x32.so.2
	${MKDIR} -v ${DSTPRE}/etc/ld.so.conf.d/
	${CP} -v ${FILESDIR}/libx32.conf ${DSTPRE}/etc/ld.so.conf.d/


.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
