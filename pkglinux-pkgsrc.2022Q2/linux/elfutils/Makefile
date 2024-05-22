# $NetBSD$

DISTNAME=	elfutils-0.178
CATEGORIES=	linux
MASTER_SITES=	https://sourceware.org/ftp/elfutils/0.178/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://sourceware.org/ftp/elfutils/0.178/
COMMENT=	libraries and tools for ELF files and DWARF data
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config gmake
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

PKGCONFIG_OVERRIDE+=	config/libdebuginfod.pc.in
PKGCONFIG_OVERRIDE+=	config/libdw.pc.in
PKGCONFIG_OVERRIDE+=	config/libelf.pc.in

CONFIGURE_ARGS+=	--disable-debuginfod
CONFIGURE_ARGS+=	--disable-shared
CONFIGURE_ARGS+=	--disable-compat
CONFIGURE_ARGS+=	--disable-nls

post-install:
	cd ${DESTDIR}${PREFIX}/lib/ && ln -sv libelf.so libelf.so.0
	lndir.sh -l sf ${PREFIX}/include ${PREFIX}/native/usr/include ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/usr/lib ${DESTDIR}
#	lndir.sh ${DESTDIR}${PREFIX}/include ${DESTDIR}${PREFIX}/native/usr/include
#	lndir.sh ${DESTDIR}${PREFIX}/lib ${DESTDIR}${PREFIX}/native/usr/lib

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
USE_BUILTIN.zlib=	no
.include "../../devel/zlib/buildlink3.mk"
CONFIGURE_ARGS+=	--host=${MACHINE_GNU_PLATFORM}
CONFIGURE_ARGS+=	--with-sysroot=${TOOLS_CROSS_DESTDIR}
CONFIGURE_ENV+=		BUILD_CC=${PREFIX}/gcc6/bin/gcc
CONFIGURE_ENV+=		CC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
#CFLAGS+=		--shared -fPIC
CFLAGS+=		-fPIC
LDFLAGS+=		-ldl -lpthread
#MAKE_ENV+= 		PATH=${TOOLDIR}/bin:$$PATH
#MAKE_ENV+=		AS_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-as"
#MAKE_ENV+=		LD_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld"
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

.include "../../mk/bsd.pkg.mk"
