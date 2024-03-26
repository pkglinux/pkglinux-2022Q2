# $NetBSD$

.include "../../native/cross.mk"
.if !empty(CROSS_TARGET:Mriscv*)
NATIVE_GCC_VER=	7.5.0
.elif !empty(CROSS_TARGET:Marm*)
# April 2022: GCC below 10 from pkgsrc is broken on 32-bit arm NetBSD.
#NATIVE_GCC_VER=	10.3.0
NATIVE_GCC_VER=	6.5.0
.else
NATIVE_GCC_VER=	6.5.0
.endif
DISTNAME=	gcc-${NATIVE_GCC_VER}
PKGNAME=	${CROSS_MNAME}-${DISTNAME}
CATEGORIES=	native
MASTER_SITES=	http://ftp.gnu.org/gnu/gcc/${DISTNAME}/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	use pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ftp.gnu.org/gnu/gcc/gcc-${NATIVE_GCC_VER}/
COMMENT=	The GNU Compiler Collection (GCC)
LICENSE=	gnu-gpl-v2 AND gnu-gpl-v3 AND gnu-lgpl-v2 AND gnu-lgpl-v3

ONLY_FOR_PLATFORM=	Linux-*-*

USE_CWRAPPERS=		no
USE_LANGUAGES=		c c++
#USE_NATIVE_GCC=		yes
##USE_NATIVE_GCC=		no
#USE_PKGSRC_GCC=		no
##USE_PKGSRC_GCC=		yes
.if !empty(CROSS_TARGET:Mriscv*)
GCC_REQD+=		7
FILESDIR=		${.CURDIR}/../gcc7/files
.elif !empty(CROSS_TARGET:Marm*)
#GCC_REQD+=		10
GCC_REQD+=		6
#FILESDIR=		${.CURDIR}/../gcc10/files
FILESDIR=		${.CURDIR}/../gcc6/files
.else
GCC_REQD+=		6
FILESDIR=		${.CURDIR}/../gcc6/files
.endif

#MKPIE_SUPPORTED=	no
#PKGSRC_MKPIE=		no
#PKGSRC_USE_FORTIFY=	no
#PKGSRC_USE_SSP=		no
##SSP_SUPPORTED=		yes

#STACK_CHECK_SUPPORTED=	no
#PKGSRC_USE_STACK_CHECKD=	no

#TOOLS_PLATFORM.awk?=		${PREFIX}/bin/nawk
#TOOLS_PLATFORM.sed?=		${PREFIX}/bin/nbsed
#TOOLS_PLATFORM.awk?=		${PREFIX}/bin/gawk
#TOOLS_PLATFORM.sed?=		${PREFIX}/bin/gsed

USE_TOOLS+=		gmake makeinfo sed:run tar:build perl
USE_TOOLS+=		pkg-config
USE_TOOLS+=		gpwd
#USE_LIBTOOL=		yes
#HAS_CONFIGURE=		no
#NO_BUILD=		yes
#NO_CONFIGURE=		yes
#GNU_CONFIGURE=		no
#GNU_CONFIGURE_PREFIX=	${PREFIX}/native
PREDIR=			${PREFIX}/native/${CROSS_MNAME}
BLDDIR=			${WRKDIR}/build
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

.include "../../devel/gmp/inplace.mk"
.include "../../math/mpfr/inplace.mk"
.include "../../math/mpcomplex/inplace.mk"

ISL14 =		isl-0.14
ISL16 =		isl-0.16.1
ISL18 =		isl-0.18

.if !empty(CROSS_TARGET:Mriscv*)
#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/01_all_default-fortify-source.patch
post-extract:
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/02_all_default-warn-format-security.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/03_all_default-warn-trampolines.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/04_all_default-ssp-fix.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/05_all_alpha-mieee-default.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/06_all_ia64_note.GNU-stack.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/07_all_libiberty-asprintf.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/08_all_libiberty-pic.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/09_all_nopie-all-flags.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/10_all_extra-options.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/11_all_pr55930-dependency-tracking.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/12_all_sh-drop-sysroot-suffix.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/13_all_respect-build-cxxflags.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/14_all_libgfortran-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/15_all_libgomp-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/16_all_libitm-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/17_all_libatomic-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/18_all_libbacktrace-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/19_all_libsanitizer-libbacktrace-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/20_all_libstdcxx-no-vtv.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/21_all_lto-ctor-dtor-target.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/22_all_libsanitizer-p1.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/23_all_libsanitizer-p2.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/24_all_libcpp-ar.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/25_all_plugin-objdump.patch
	cd ${WRKSRC} && gsed	-e '/m64=/s/lib64/lib/' \
				-i.orig gcc/config/i386/t-linux64
	${MKDIR} -v ${BLDPRE}
	${TAR} -jxf ${DISTDIR}/${ISL18}.tar.bz2 -C ${WRKSRC}
	${MV} ${WRKSRC}/${ISL18} ${WRKSRC}/isl
.elif !empty(CROSS_TARGET:MXXXarm*)
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
.else
#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/01_all_default-fortify-source.patch
post-extract:
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/02_all_default-warn-format-security.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/03_all_default-warn-trampolines.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/04_all_default-ssp-fix.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/05_all_alpha-mieee-default.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/06_all_arm_armv4t-default.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/07_all_ia64_note.GNU-stack.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/08_all_superh_default-multilib.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/09_all_libiberty-asprintf.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/10_all_libiberty-pic.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/11_all_nopie-all-flags.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/12_all_extra-options.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/13_all_pr55930-dependency-tracking.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/14_all_asan-signal_h.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/15_all_respect-build-cxxflags.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/16_all_libgfortran-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/17_all_libgomp-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/18_all_libitm-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/19_all_libatomic-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/20_all_libbacktrace-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/21_all_libsanitizer-libbacktrace-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/22_all_libstdcxx-no-vtv.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/23_all_std_pair_ABI.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/24_all_libsanitizer-p1.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/25_all_libsanitizer-p2.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/26_all_libcpp-ar.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/27_all_whitespace-pa.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/28_all_libjava-multilib.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/29_all_plugin-objdump.patch
	cd ${WRKSRC} && gsed	-e '/m64=/s/lib64/lib/' \
				-i.orig gcc/config/i386/t-linux64
	${MKDIR} -v ${BLDPRE}
	${TAR} -jxf ${DISTDIR}/${ISL14}.tar.bz2 -C ${WRKSRC}
	${MV} ${WRKSRC}/${ISL14} ${WRKSRC}/isl
.endif

pre-configure:
	# Change the StartFile Spec so that GCC looks in /tools:
	cd ${WRKSRC} && \
	echo -en '\n#undef STANDARD_STARTFILE_PREFIX_1\n#define STANDARD_STARTFILE_PREFIX_1 \
		"${PREDIR}/lib/"\n' >> gcc/config/linux.h && \
	echo -en '\n#undef STANDARD_STARTFILE_PREFIX_2\n#define STANDARD_STARTFILE_PREFIX_2 \
		""\n' >> gcc/config/linux.h

CONFIG_ENV+=		AR=${PREFIX}/bin/gar
CONFIG_ENV+=		LDFLAGS="-Wl,-rpath,${PREDIR}/lib"
.if !empty(FINAL:M[yY][eE][sS])
CONFIG_ENV+=		BUILD_CC="${PREFIX}/native/usr/bin/gcc"
CONFIG_ENV+=		CC_FOR_BUILD="${PREFIX}/native/usr/bin/gcc"
CONFIG_ENV+=		GCC_FOR_BUILD="${PREFIX}/native/usr/bin/gcc"
CONFIG_ENV+=		CXX_FOR_BUILD="${PREFIX}/native/usr/bin/g++"
CONFIG_ENV+=		AS_FOR_BUILD="${PREFIX}/bin/gas"
CONFIG_ENV+=		LD_FOR_BUILD="${PREFIX}/bin/gld"
CONFIG_ENV+=		AR_FOR_BUILD="${PREFIX}/bin/gar"
CONFIG_ENV+=		RANLIB_FOR_BUILD="${PREFIX}/bin/granlib"
CONFIG_ENV+=		STRIP_FOR_BUILD="${PREFIX}/bin/gstrip"
CONFIG_ENV+=		OBJCOPY_FOR_BUILD="${PREFIX}/bin/gobjcopy"
CONFIG_ENV+=		OBJDUMP_FOR_BUILD="${PREFIX}/bin/gobjdump"
CONFIG_ENV+=		CC_FOR_TARGET="${PREDIR}/bin/${CROSS_TARGET}-gcc"
CONFIG_ENV+=		GCC_FOR_TARGET="${PREDIR}/bin/${CROSS_TARGET}-gcc"
CONFIG_ENV+=		AS_FOR_TARGET="${PREDIR}/bin/${CROSS_TARGET}-as"
CONFIG_ENV+=		LD_FOR_TARGET="${PREDIR}/bin/${CROSS_TARGET}-ld"
CONFIG_ENV+=		AR_FOR_TARGET="${PREDIR}/bin/${CROSS_TARGET}-ar"
CONFIG_ENV+=		RANLIB_FOR_TARGET="${PREDIR}/bin/${CROSS_TARGET}-ranlib"
CONFIG_ENV+=		STRIP_FOR_TARGET="${PREDIR}/bin/${CROSS_TARGET}-strip"
CONFIG_ENV+=		OBJCOPY_FOR_TARGET="${PREDIR}/bin/${CROSS_TARGET}-objcopy"
CONFIG_ENV+=		OBJDUMP_FOR_TARGET="${PREDIR}/bin/${CROSS_TARGET}-objdump"
CONFIG_ENV+=		PWD_COMMAND=${PREFIX}/bin/gpwd
.endif
.if !empty(FINAL:M[yY][eE][sS])
CONFIG_ARGS+=		--prefix=${PREDIR}
CONFIG_ARGS+=		--target=${CROSS_TARGET}
CONFIG_ARGS+=		--with-sysroot=${PREDIR}/sysroot
CONFIG_ARGS+=		--with-local-prefix=${PREDIR}/sysroot
CONFIG_ARGS+=		--with-native-system-header-dir=/usr/include
CONFIG_ARGS+=		--with-libs=${PREDIR}/sysroot/usr/lib
CONFIG_ARGS+=		--disable-nls
CONFIG_ARGS+=		--enable-languages=c,c++,fortran,objc,obj-c++
CONFIG_ARGS+=		--enable-__cxa_atexit
CONFIG_ARGS+=		--enable-threads=posix
CONFIG_ARGS+=		--with-system-zlib
CONFIG_ARGS+=		--enable-libstdcxx-time
CONFIG_ARGS+=		--enable-checking=release
CONFIG_ARGS+=		--disable-libstdcxx-pch
.if !empty(CROSS_TARGET:Mx86_64-*)
CONFIG_ARGS+=		--disable-multilib
.endif
.if !empty(CROSS_TARGET:Mmips64el-*)
CONFIG_ARGS+=		--disable-multilib
.endif
.if !empty(CROSS_TARGET:Mmips64-*)
CONFIG_ARGS+=		--disable-multilib
.endif
.if !empty(CROSS_TARGET:Msparc64-*)
CONFIG_ARGS+=		--disable-multilib
.endif
.if !empty(CROSS_TARGET:Mpowerpc64-*)
CONFIG_ARGS+=		--disable-multilib
.endif
.if !empty(CROSS_TARGET:Ms390x-*)
CONFIG_ARGS+=		--disable-multilib
.endif
.if !empty(CROSS_TARGET:Mriscv64-*)
CONFIG_ARGS+=		--disable-multilib
.endif
.if !empty(CROSS_TARGET:Msparc-*)
CONFIG_ARGS+=		--with-cpu=v9
.endif
.if !empty(CROSS_TARGET:Marm*) || !empty(CROSS_TARGET:Msh*)
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
CONFIG_ARGS+=		--without-zstd
CONFIG_ARGS+=		--enable-target-optspace
CONFIG_ARGS+=		--enable-plugin
CONFIG_ARGS+=		--enable-gold
CONFIG_ARGS+=		--enable-long-long
.if !empty(CROSS_TARGET:Msh*)
CONFIG_ARGS+=		--disable-multiarch
CONFIG_ARGS+=		--with-cpu=sh4
.if !empty(CROSS_TARGET:Mshbe*)
CONFIG_ARGS+=		--with-endian=big
.else
CONFIG_ARGS+=		--with-endian=little
.endif
.endif
.endif
.if !empty(CROSS_TARGET:Marmeb-*)
CONFIG_ARGS+=		--with-arch=armv5te
.endif
.if !empty(CROSS_TARGET:Marm-*-*-gnueabi)
CONFIG_ARGS+=		--with-float=soft
.endif
.if !empty(CROSS_TARGET:Marmv6-*-*-gnueabi*)
CONFIG_ARGS+=		--with-cpu=arm1176jzf-s
CONFIG_ARGS+=		--with-fpu=vfp
.if !empty(CROSS_TARGET:Marmv6-*-*-gnueabihf)
CONFIG_ARGS+=		--with-float=hard
.endif
.endif
.if !empty(CROSS_TARGET:Marmv7-*-*-gnueabihf)
CONFIG_ARGS+=		--with-cpu=cortex-a7
CONFIG_ARGS+=		--with-fpu=neon-vfpv4
CONFIG_ARGS+=		--with-float=hard
.endif
.if !empty(CROSS_TARGET:Marmv8-rpi3-*-gnueabihf)
CONFIG_ARGS+=		--with-cpu=cortex-a53
CONFIG_ARGS+=		--with-fpu=neon-vfpv4
CONFIG_ARGS+=		--with-float=hard
.endif
.if !empty(CROSS_TARGET:Marmv8-rpi4-*-gnueabihf)
CONFIG_ARGS+=		--with-cpu=cortex-a72
CONFIG_ARGS+=		--with-fpu=neon-vfpv4
CONFIG_ARGS+=		--with-float=hard
.endif
.else			# static/core cross-gcc
CONFIG_ARGS+=		--prefix=${PREDIR}
CONFIG_ARGS+=		--target=${CROSS_TARGET}
CONFIG_ARGS+=		--with-sysroot=${PREDIR}/sysroot
CONFIG_ARGS+=		--with-local-prefix=${PREDIR}/sysroot
CONFIG_ARGS+=		--with-native-system-header-dir=/usr/include
CONFIG_ARGS+=		--without-headers
CONFIG_ARGS+=		--with-newlib 
CONFIG_ARGS+=		--disable-threads
CONFIG_ARGS+=		--disable-shared 
CONFIG_ARGS+=		--enable-__cxa_atexit
CONFIG_ARGS+=		--disable-tm-clone-registry
CONFIG_ARGS+=		--disable-decimal-float
CONFIG_ARGS+=		--disable-libgomp
CONFIG_ARGS+=		--disable-libmudflap
CONFIG_ARGS+=		--disable-libmpx
CONFIG_ARGS+=		--enable-libssp
CONFIG_ARGS+=		--disable-libatomic
CONFIG_ARGS+=		--disable-libitm
CONFIG_ARGS+=		--disable-libsanitizer
CONFIG_ARGS+=		--disable-libquadmath
CONFIG_ARGS+=		--disable-libquadmath-support
CONFIG_ARGS+=		--disable-libvtv
CONFIG_ARGS+=		--disable-libcilkrts
CONFIG_ARGS+=		--disable-libstdcxx
CONFIG_ARGS+=		--disable-libstdc++-v3
CONFIG_ARGS+=		--disable-target-optspace
CONFIG_ARGS+=		--disable-nls
CONFIG_ARGS+=		--disable-target-zlib
CONFIG_ARGS+=		--with-system-zlib
CONFIG_ARGS+=		--disable-option-checking
CONFIG_ARGS+=		--enable-checking=release
#CONFIG_ARGS+=		--enable-lto
CONFIG_ARGS+=		--enable-languages=c
CONFIG_ARGS+=		--disable-libstdcxx-pch
.if !empty(CROSS_TARGET:Mx86_64-*)
CONFIG_ARGS+=		--disable-multilib
.endif
.if !empty(CROSS_TARGET:Msparc-*)
CONFIG_ARGS+=		--with-cpu=v9
.endif
.if !empty(CROSS_TARGET:Msh*)
CONFIG_ARGS+=		--disable-multiarch
CONFIG_ARGS+=		--with-cpu=sh4
#CONFIG_ARGS+=		--with-endian=little,big
.if !empty(CROSS_TARGET:Mshbe*)
CONFIG_ARGS+=		--with-endian=big
.else
CONFIG_ARGS+=		--with-endian=little
.endif
.endif
.if !empty(CROSS_TARGET:Marm-*-*-gnueabi)
CONFIG_ARGS+=		--with-float=soft
.endif
.if !empty(CROSS_TARGET:Marmeb-*)
CONFIG_ARGS+=		--with-arch=armv5te
.endif
.if !empty(CROSS_TARGET:Marmv6-*-*-gnueabi*)
CONFIG_ARGS+=		--with-cpu=arm1176jzf-s
CONFIG_ARGS+=		--with-fpu=vfp
.if !empty(CROSS_TARGET:Marmv6-*-*-gnueabihf)
CONFIG_ARGS+=		--with-float=hard
.endif
.endif
.if !empty(CROSS_TARGET:Marmv7-*-*-gnueabihf)
CONFIG_ARGS+=		--with-cpu=cortex-a7
CONFIG_ARGS+=		--with-fpu=neon-vfpv4
CONFIG_ARGS+=		--with-float=hard
.endif
.if !empty(CROSS_TARGET:Marmv8-rpi3-*-gnueabihf)
CONFIG_ARGS+=		--with-cpu=cortex-a53
CONFIG_ARGS+=		--with-fpu=neon-vfpv4
CONFIG_ARGS+=		--with-float=hard
.endif
.if !empty(CROSS_TARGET:Marmv8-rpi4-*-gnueabihf)
CONFIG_ARGS+=		--with-cpu=cortex-a72
CONFIG_ARGS+=		--with-fpu=neon-vfpv4
CONFIG_ARGS+=		--with-float=hard
.endif
.endif

.if !empty(FINAL:M[yY][eE][sS])
do-configure:
	cd ${BLDDIR} && ${SETENV} ${CONFIG_ENV} ${WRKSRC}/configure ${CONFIG_ARGS}

MAKE_ENV+=		PWD_COMMAND=${PREFIX}/bin/gpwd
MAKE_ENV+=		AS_FOR_BUILD="${PREFIX}/bin/gas"
MAKE_ENV+=		LD_FOR_BUILD="${PREFIX}/bin/gld"
MAKE_ENV+=		AS_FOR_TARGET="${PREDIR}/bin/${CROSS_TARGET}-as"
MAKE_ENV+=		LD_FOR_TARGET="${PREDIR}/bin/${CROSS_TARGET}-ld"
do-build:
	cd ${BLDDIR} && ${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDDIR} \
		install-strip || ${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDDIR} install)
.else
do-configure:
	# We will create a dummy limits.h so the build of gcc will not use the one provided by the host distro:
	/bin/touch ${PREDIR}/sysroot/usr/include/limits.h
	cd ${BLDDIR} && ${SETENV} ${CONFIG_ENV} ${WRKSRC}/configure ${CONFIG_ARGS}

do-build:
	cd ${BLDDIR} && ${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS} all-gcc all-target-libgcc
	cd ${BLDDIR} && ${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDDIR} install-gcc install-target-libgcc
	# We will create a dummy limits.h so the build of gcc will not use the one provided by the host distro:
	/bin/rm -v ${PREDIR}/sysroot/usr/include/limits.h
.endif

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

GENERATE_PLIST+= \
 	cd ${DESTDIR}${PREFIX} && \
	${FIND} native \( -type f -o -type l \) -print | ${SORT} ;

.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
