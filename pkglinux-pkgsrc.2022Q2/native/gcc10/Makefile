# $NetBSD$

NATIVE_GCC_VER=	10.3.0
DISTNAME=	gcc-${NATIVE_GCC_VER}
PKGNAME=	native-gcc10-${NATIVE_GCC_VER}
CATEGORIES=	native
MASTER_SITES=	http://ftp.gnu.org/gnu/gcc/${DISTNAME}/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	use pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ftp.gnu.org/gnu/gcc/gcc-${NATIVE_GCC_VER}/
COMMENT=	The GNU Compiler Collection (GCC)
LICENSE=	gnu-gpl-v2 AND gnu-gpl-v3 AND gnu-lgpl-v2 AND gnu-lgpl-v3

ONLY_FOR_PLATFORM=	Linux-*-*

#USE_CWRAPPERS=		no
USE_LANGUAGES=		c c++
USE_NATIVE_GCC=		yes
#USE_NATIVE_GCC=		no
USE_PKGSRC_GCC=		no
#USE_PKGSRC_GCC=		yes
GCC_REQD+=		6

MKPIE_SUPPORTED=	no
PKGSRC_MKPIE=		no
PKGSRC_USE_FORTIFY=	no
PKGSRC_USE_SSP=		no
#SSP_SUPPORTED=		yes

#STACK_CHECK_SUPPORTED=	no
#PKGSRC_USE_STACK_CHECKD=	no

#TOOLS_PLATFORM.awk?=		${PREFIX}/bin/nawk
#TOOLS_PLATFORM.sed?=		${PREFIX}/bin/nbsed
#TOOLS_PLATFORM.awk?=		${PREFIX}/bin/gawk
#TOOLS_PLATFORM.sed?=		${PREFIX}/bin/gsed

USE_TOOLS+=		gmake makeinfo sed:run tar:build perl
USE_TOOLS+=		pkg-config
USE_TOOLS+=		gpwd gmkdir
#USE_LIBTOOL=		yes
#HAS_CONFIGURE=		no
#NO_BUILD=		yes
#NO_CONFIGURE=		yes
#GNU_CONFIGURE=		no
#GNU_CONFIGURE_PREFIX=	${PREFIX}/native
PREDIR=			${PREFIX}/native
BLDDIR=			${WRKDIR}/build
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

.include "../../devel/gmp/inplace.mk"
.include "../../math/mpfr/inplace.mk"
.include "../../math/mpcomplex/inplace.mk"

ISL16 =		isl-0.16.1

#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/01_all_default-fortify-source.patch
post-extract:
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/02_all_default-warn-format-security.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/03_all_default-warn-trampolines.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/04_all_nossp-on-nostdlib.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/05_all_alpha-mieee-default.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/06_all_ia64_note.GNU-stack.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/07_all_i386_libgcc_note.GNU-stack.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/08_all_libiberty-asprintf.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/09_all_libiberty-pic.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/10_all_nopie-all-flags.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/11_all_sh-drop-sysroot-suffix.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/12_all_ia64-TEXTREL.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/13_all_disable-systemtap-switch.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/14_all_m68k-textrel-on-libgcc.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/15_all_respect-build-cxxflags.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/16_all_libgfortran-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/17_all_libgomp-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/18_all_libitm-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/19_all_libatomic-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/20_all_libbacktrace-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/21_all_libsanitizer-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/22_all_libstdcxx-no-vtv.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/23_all_disable-riscv32-ABIs.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/24_all_default_ssp-buffer-size.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/25_all_hppa-faster-synth_mult.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/26_all_libcpp-ar.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/27_all_EXTRA_OPTIONS-z-now.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/28_all_EXTRA_OPTIONS-fstack-clash-protection.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/29_all_lto-intl-workaround-PR95194.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/30_all_plugin-objdump.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/31_all_fno-delayed-branch.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/32_all_vtv-slibtool.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/33_all_ctor-union-PR100489.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/34_all_ICE-tsubst-PR100102.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/35_all_remove-cyclades.patch
	${MKDIR} -v ${BLDPRE}
	${TAR} -jxf ${DISTDIR}/${ISL16}.tar.bz2 -C ${WRKSRC}
	${MV} ${WRKSRC}/${ISL16} ${WRKSRC}/isl

CONFIG_ENV+=	SED=${PREFIX}/bin/gsed
CONFIG_ENV+=	AWK=${PREFIX}/bin/gawk
CONFIG_ENV+=	GAWK=${PREFIX}/bin/gawk
CONFIG_ENV+=	BISON=${PREFIX}/bin/bison
CONFIG_ENV+=	FLEX=${PREFIX}/bin/flex
.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
#https://gcc.gnu.org/bugzilla/show_bug.cgi?id=65794
#https://gcc.gnu.org/bugzilla/show_bug.cgi?id=67590
pre-configure:
	gsed -e "s|\$$gcc_cv_objdump |${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-objdump |g" -i ${WRKSRC}/libcc1/configure

#	cd ${WRKSRC} && \
#		echo -en '\n#undef STANDARD_STARTFILE_PREFIX_1\n#define STANDARD_STARTFILE_PREFIX_1 \
#			"${TOOLDIR}/sysroot/lib/"\n' >> gcc/config/linux.h && \
#		echo -en '\n#undef STANDARD_STARTFILE_PREFIX_2\n#define STANDARD_STARTFILE_PREFIX_2 \
#			""\n' >> gcc/config/linux.h

MAKE_ENV+= 		PWD_COMMAND=${PREFIX}/bin/gpwd
MAKE_ENV+= 		PATH=${TOOLDIR}/bin:$$PATH
.if !empty(MACHINE_GNU_PLATFORM:Marm*)
MAKE_ENV+=		AS_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-as"
MAKE_ENV+=		LD_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld"
#CONFIG_ENV+=		CC_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-gcc"
#CONFIG_ENV+=		GCC_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-gcc"
#CONFIG_ENV+=		CXX_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-g++"
#CONFIG_ENV+=		AR_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ar"
#CONFIG_ENV+=		NM_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-nm"
#CONFIG_ENV+=		OBJCOPY_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-objcopy"
#CONFIG_ENV+=		OBJDUMP_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-objdump"
#CONFIG_ENV+=		STRIP_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-strip"
#CONFIG_ENV+=		RANLIB_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ranlib"
#CONFIG_ENV+=		AS_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-as"
#CONFIG_ENV+=		LD_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld"
CONFIG_ENV+=		CC="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-gcc"
CONFIG_ENV+=		GCC="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-gcc"
CONFIG_ENV+=		CXX="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-g++"
CONFIG_ENV+=		AR="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ar"
CONFIG_ENV+=		NM="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-nm"
CONFIG_ENV+=		OBJCOPY="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-objcopy"
CONFIG_ENV+=		OBJDUMP="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-objdump"
CONFIG_ENV+=		STRIP="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-strip"
CONFIG_ENV+=		RANLIB="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ranlib"
CONFIG_ENV+=		READELF="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-readelf"
CONFIG_ENV+=		AS="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-as"
CONFIG_ENV+=		LD="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld"
.endif
CONFIG_ENV+=		PWD_COMMAND=${PREFIX}/bin/gpwd
CONFIG_ENV+=		CC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
CONFIG_ENV+=		GCC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
CONFIG_ENV+=		CXX_FOR_BUILD=${PREFIX}/gcc6/bin/g++
CONFIG_ENV+=		AR_FOR_BUILD=${PREFIX}/bin/gar
CONFIG_ENV+=		AS_FOR_BUILD=${PREFIX}/bin/gas
CONFIG_ENV+=		LD_FOR_BUILD=${PREFIX}/bin/gld
CONFIG_ENV+=		NM_FOR_BUILD=${PREFIX}/bin/gnm
CONFIG_ENV+=		OBJCOPY_FOR_BUILD=${PREFIX}/bin/gobjcopy
CONFIG_ENV+=		OBJDUMP_FOR_BUILD=${PREFIX}/bin/gobjdump
CONFIG_ENV+=		RANLIB_FOR_BUILD=${PREFIX}/bin/granlib
CONFIG_ENV+=		READELF_FOR_BUILD=${PREFIX}/bin/greadelf
CONFIG_ENV+=		STRIP_FOR_BUILD=${PREFIX}/bin/gstrip
CONFIG_ARGS+=		--prefix=${PREDIR}/usr
CONFIG_ARGS+=		--host=${MACHINE_GNU_PLATFORM}
CONFIG_ARGS+=		--target=${MACHINE_GNU_PLATFORM}
CONFIG_ARGS+=		--with-build-sysroot=${TOOLS_CROSS_DESTDIR}
CONFIG_ARGS+=		--disable-bootstrap
CONFIG_ARGS+=		--enable-threads=posix
CONFIG_ARGS+=		--enable-languages=c,c++
.if !empty(MACHINE_GNU_PLATFORM:MarmXXX*)
CONFIG_ARGS+=		--disable-test
CONFIG_ARGS+=		--disable-multilib
CONFIG_ARGS+=		--enable-__cxa_atexit
CONFIG_ARGS+=		--disable-sjlj-exceptions
CONFIG_ARGS+=		--disable-tm-clone-registry
CONFIG_ARGS+=		--disable-libsanitizer
CONFIG_ARGS+=		--disable-libmudflap
CONFIG_ARGS+=		--disable-libgomp
CONFIG_ARGS+=		--disable-libssp
CONFIG_ARGS+=		--disable-libquadmath
CONFIG_ARGS+=		--disable-libquadmath-support
CONFIG_ARGS+=		--disable-libmpx
CONFIG_ARGS+=		--disable-bootstrap
CONFIG_ARGS+=		--with-system-zlib
CONFIG_ARGS+=		--enable-checking=release
CONFIG_ARGS+=		--disable-libstdcxx-pch
CONFIG_ARGS+=		--without-zstd
CONFIG_ARGS+=		--enable-target-optspace
CONFIG_ARGS+=		--enable-plugin
CONFIG_ARGS+=		--enable-gold
#CONFIG_ARGS+=		--enable-libstdcxx-time
CONFIG_ARGS+=		--disable-libstdcxx
CONFIG_ARGS+=		--disable-libstdc++-v3
CONFIG_ARGS+=		--enable-long-long
#CONFIG_ARGS+=		--enable-obsolete
#CONFIG_ARGS+=		--disable-libiberty
#CONFIG_ARGS+=		--disable-static
#CONFIG_ARGS+=		--with-libiconv-prefix=/${MACHINE_GNU_PLATFORM}
#CONFIG_ARGS+=		--with-libiconv-prefix=${TOOLS_CROSS_DESTDIR}/sysroot/${MACHINE_GNU_PLATFORM}
CONFIG_ARGS+=		--build=x86_64-unknown-linux
.else
CONFIG_ARGS+=		--build=x86_64-unknown-linux
.endif
.if !empty(MACHINE_GNU_PLATFORM:M*-gnueabi)
CONFIG_ARGS+=		--with-float=soft
.endif
.else
CONFIG_ARGS+=		--prefix=${PREDIR}/usr
CONFIG_ARGS+=		--build=x86_64-unknown-linux
CONFIG_ARGS+=		--enable-multilib
CONFIG_ARGS+=		--with-multilib-list=m64,m32,mx32
CONFIG_ARGS+=		--with-arch=k8
CONFIG_ARGS+=		--with-tune=k8
CONFIG_ARGS+=		--enable-threads=posix
CONFIG_ARGS+=		--enable-libssp	
CONFIG_ARGS+=		--enable-libmpx	
CONFIG_ARGS+=		--with-system-zlib
CONFIG_ARGS+=		--enable-languages=c,c++
.endif

do-configure:
	cd ${BLDDIR} && ${SETENV} ${CONFIG_ENV} ${WRKSRC}/configure ${CONFIG_ARGS}

do-build:
	cd ${BLDDIR} && ${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDDIR} install-strip || ${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDDIR} install)

pre-install:
	${MKDIR} -v ${BLDPRE}/lib/
	${LN} -svf ../usr/bin/cpp ${BLDPRE}/lib
	${LN} -svf gcc ${BLDPRE}/usr/bin/cc
	${INSTALL_DATA_DIR} -v -m755 ${BLDPRE}/usr/lib/bfd-plugins/
	${LN} -sfv ../../libexec/gcc/${MACHINE_GNU_PLATFORM}/${NATIVE_GCC_VER}/liblto_plugin.so \
		${BLDPRE}/usr/lib/bfd-plugins/

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

GENERATE_PLIST+= \
 	cd ${DESTDIR}${PREFIX} && \
	${FIND} native \( -type f -o -type l \) -print | ${SORT} ;

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
#.if !empty(MACHINE_GNU_PLATFORM:Marm*)
#.include "../../converters/libiconv/buildlink3.mk"
#.endif
.else
.include "../../mk/pthread.buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../devel/libffi/buildlink3.mk"
.include "../../devel/binutils/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.endif
.include "../../mk/bsd.pkg.mk"
