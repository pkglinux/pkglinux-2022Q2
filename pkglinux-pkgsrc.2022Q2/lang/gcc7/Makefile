# $NetBSD: Makefile,v 1.43 2022/03/10 16:43:11 nia Exp $

GCC_PKGNAME=		gcc7
.include		"version.mk"

DISTNAME=	gcc-${GCC7_DIST_VERSION}
PKGNAME=	${GCC_PKGNAME}-${GCC7_DIST_VERSION}
PKGREVISION=	5
## When bumping the PKGREVISION of this package the PKGREVISION of
## lang/gcc7-libs needs to be bumped to be at least 1 more than the
## PKGREVISION of this package!
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GNU:=gcc/gcc-${GCC7_DIST_VERSION}/}
EXTRACT_SUFX=	.tar.xz
EXTRACT_USING=	bsdtar

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://gcc.gnu.org/
COMMENT=	The GNU Compiler Collection (GCC) - 7.0 Release Series
LICENSE=	gnu-gpl-v2 AND gnu-gpl-v3 AND gnu-lgpl-v2 AND gnu-lgpl-v3

DISTFILES=		${DEFAULT_DISTFILES}

# Relocations result in a linker error on AArch64, but not x86.
MKPIE_SUPPORTED=	no
CHECK_RELRO_SKIP+=	${GCC_PKGNAME}/lib/*

NOT_FOR_PLATFORM=	Interix-*-* Darwin-*-aarch64

USE_LANGUAGES=		c99 c++
USE_TOOLS+=		gmake makeinfo perl sed:run tar:build
USE_TOOLS.NetBSD+=	gsed

GNU_CONFIGURE=		yes
GNU_CONFIGURE_STRICT=	no # has sub-configures
## Build outside ${WRKSRC}
OBJDIR=			../build
CONFIGURE_DIRS=		${OBJDIR}
CONFIGURE_SCRIPT=	../${DISTNAME}/configure
GCC_SUBPREFIX=		${GCC_PKGNAME}
GCC_PREFIX=		${PREFIX}/${GCC_SUBPREFIX}
GNU_CONFIGURE_PREFIX=	${GCC_PREFIX}
INFO_FILES=		yes
CONFIGURE_ARGS+=	--disable-libstdcxx-pch

UNLIMIT_RESOURCES+=	datasize
UNLIMIT_RESOURCES+=	stacksize

SUBST_CLASSES+=		vars
SUBST_MESSAGE.vars=	Setting target machine name path in ${SUBST_FILES.vars}
SUBST_STAGE.vars=	pre-configure
SUBST_FILES.vars=	gcc/Makefile.in
SUBST_VARS.vars=	MACHINE_GNU_PLATFORM

# These programs use [[ ... ]] and are not needed for the build.
CHECK_PORTABILITY_SKIP+= \
	contrib/prepare_patch.sh \
	contrib/patch_tester.sh

.include "../../mk/bsd.prefs.mk"

LANGS=			c

# In some cases LINKER_RPATH_FLAG needs a trailing space.
LINKER_RPATH_FLAG:=	${LINKER_RPATH_FLAG:S/-rpath/& /}

## The Library rpath to use in end programs.
LDFLAGS_FOR_TARGET=	${LDFLAGS:M${COMPILER_RPATH_FLAG}*:N*/usr/lib*} ${LDFLAGS:M-Wl,-z*}

# The "-static-libstdc++ -static-libgcc" flags are normally added to the
# boot-ldflags by configure but because we are supply the boot-ldflags
# we mash supply them.
BOOT_LDFLAGS=		-static-libstdc++ -static-libgcc ${LDFLAGS_FOR_TARGET}
# Needed on Darwin when LDFLAGS point to a SDK
BOOT_LDFLAGS+=		${LDFLAGS:M-Wl,-syslibroot*}
# GCC does not understand this option; remove it, or stage build will fail
BUILDLINK_TRANSFORM+=	rm:-stdlib=libc++

# Disable fixincludes on SmartOS, header changes result in broken includes
# being generated, see https://github.com/joyent/pkgsrc-legacy/issues/270
.if ${OS_VARIANT} == "SmartOS"
SUBST_CLASSES+=		fixinc
SUBST_STAGE.fixinc=	pre-configure
SUBST_FILES.fixinc=	gcc/Makefile.in
SUBST_SED.fixinc=	-e "s,\./fixinc.sh,-c true,"
.endif

.include "options.mk"

.if !empty(MACHINE_PLATFORM:MNetBSD-*-*)
# on NetBSD, use the native SSP code in libc
CONFIGURE_ARGS+=	--disable-libssp
# Match base libstdc++ major
SUBST_CLASSES+=		libstdc
SUBST_STAGE.libstdc=	pre-configure
SUBST_FILES.libstdc=	libstdc++-v3/configure
SUBST_MESSAGE.libstdc=	Bumping libstdc++ major to 7
SUBST_SED.libstdc=	-e 's,libtool_VERSION=6:,libtool_VERSION=7:,g'
.else
CONFIGURE_ARGS+=	--enable-libssp
.endif

## For target librarys and libjava programs.
CONFIGURE_ENV+=		LDFLAGS_FOR_TARGET=${LDFLAGS_FOR_TARGET:Q}

CONFIGURE_ARGS+=	--enable-languages=${LANGS:Q}
CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--enable-long-long
CONFIGURE_ARGS+=	--with-local-prefix=${GCC_PREFIX:Q}
CONFIGURE_ARGS+=	--enable-threads=posix
CONFIGURE_ARGS+=	--with-boot-ldflags=${BOOT_LDFLAGS:Q}
# multilib on Darwin requires fat-binaries
CONFIGURE_ARGS.Darwin+=	--disable-multilib
.if !empty(OSX_SDK_PATH)
CONFIGURE_ARGS.Darwin+=	--with-sysroot=${OSX_SDK_PATH}
.endif
CONFIGURE_ARGS.NetBSD+=	--with-gnu-ld --with-ld=/usr/bin/ld
CONFIGURE_ARGS.NetBSD+=	--with-gnu-as --with-as=/usr/bin/as
MAKE_ENV.NetBSD+=	ac_cv_func_clock_gettime=yes
MAKE_ENV.NetBSD+=	ac_cv_func_gethostbyname_r=no
MAKE_ENV.NetBSD+=	ac_cv_func_freelocale=no
MAKE_ENV.NetBSD+=	ac_cv_func_newlocale=no
MAKE_ENV.NetBSD+=	ac_cv_func_uselocale=no
MAKE_ENV.SunOS+=	ac_cv_func_mkostemp=no

.if !empty(PKGSRC_COMPILER:Mclang) || ${OPSYS} == "DragonFly"
CONFIGURE_ARGS+=	--disable-bootstrap
.endif

.if !empty(MACHINE_PLATFORM:MNetBSD-*-i386) || !empty(MACHINE_PLATFORM:MLinux-*-i386)
CONFIGURE_ARGS+=	--with-arch=i486 --with-tune=i486
.endif

.if !empty(MACHINE_PLATFORM:MNetBSD-*-x86_64) || !empty(MACHINE_PLATFORM:MLinux-*-x86_64)
CONFIGURE_ARGS+=	--with-arch=nocona --with-tune=nocona --with-fpmath=sse
.endif

.if !empty(MACHINE_PLATFORM:MDarwin-[0-8].*-*)
CONFIGURE_ARGS+=	--with-dwarf2
.endif

# ${WRKSRC}/fixincludes/ looks for sed and compiles the path to sed into
# a binary so we need to make sure we give it the installed sed and not
# the tool wrapped one.
MAKE_ENV+=		ac_cv_path_SED=${TOOLS_SED}
MAKE_ENV+=		lt_cv_path_SED=${TOOLS_SED}

# Determine whether to use binutils
.if ${OPSYS} == "SunOS"
.  if exists(/usr/sfw/bin/gobjdump)
CONFIGURE_ENV+=		OBJDUMP=/usr/sfw/bin/gobjdump
.  endif
.  if exists(/usr/bin/ld)
CONFIGURE_ARGS+=	--without-gnu-ld --with-ld=/usr/bin/ld
.  else
CONFIGURE_ARGS+=	--without-gnu-ld --with-ld=/usr/ccs/bin/ld
.  endif
.  if exists(/usr/sfw/bin/gas)
CONFIGURE_ARGS+=	--with-gnu-as --with-as=/usr/sfw/bin/gas
.  elif exists(/usr/ccs/bin/as)
CONFIGURE_ARGS+=	--without-gnu-as --with-as=/usr/ccs/bin/as
.  else
BUILDLINK_DEPMETHOD.binutils=	full
.    include "../../devel/binutils/buildlink3.mk"
CONFIGURE_ARGS+=	--with-gnu-as --with-as=${PREFIX}/bin/gas
.  endif
.endif

.if ${OS_VARIANT} == "SmartOS"
SUBST_CLASSES+=		ccs
SUBST_STAGE.ccs=	pre-configure
SUBST_FILES.ccs=	contrib/make_sunver.pl
SUBST_SED.ccs=		-e 's,/usr/ccs/bin,/usr/bin,g'
.endif

CTF_FILES_SKIP+=	*/gengtype	# CPU limit exceeded

pre-configure:
	${RUN} cd ${WRKSRC} && ${MKDIR} ${OBJDIR}

TEST_TARGET=	-j ${MAKE_JOBS} -k check || ${TRUE}
TEST_DEPENDS+=	dejagnu-[0-9]*:../../devel/dejagnu

post-test:
	${RUN} cd ${WRKSRC} && cd ${OBJDIR} &&		\
	${SHELL} ${WRKSRC}/contrib/test_summary >${WRKDIR}/test_summary.log
	${INFO_MSG} "Test summary are available in ${WRKDIR}/test_summary.log"

post-install:
	${TEST} -f ${DESTDIR}${GCC_PREFIX}/bin/cc || \
		( cd ${DESTDIR}${GCC_PREFIX}/bin ; ${LN} -f gcc cc )
.if !empty(MACHINE_PLATFORM:MSunOS-*-*86*) && ${OS_VERSION} != "5.11"
	${SH} files/values.c ${DESTDIR}${GCC_PREFIX}/bin/gcc -m32 || ${TRUE}
	${SH} files/values.c ${DESTDIR}${GCC_PREFIX}/bin/gcc -m64 || ${TRUE}
.endif

GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} ${GCC_SUBPREFIX} \( -type f -o -type l \) -print | ${SORT};

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
.if !empty(MACHINE_ARCHM:M*64*)
CONFIGURE_ARGS+=	--enable-multilib
.endif
.else
CONFIGURE_ARGS+=	--enable-bootstrap
.if !empty(MACHINE_PLATFORM:MNetBSD-*-x86_64) || !empty(MACHINE_PLATFORM:MLinux-*-x86_64)
#CONFIGURE_ENV+=		CC=/usr/bin/gcc CXX=/usr/bin/g++	
CONFIGURE_ARGS+=	--build=x86_64-unknown-linux
CONFIGURE_ARGS+=	--without-dwarf2
CONFIGURE_ARGS+=	--enable-libssp
CONFIGURE_ARGS+=	--with-arch=k8 --with-tune=k8 --with-fpmath=sse
CONFIGURE_ARGS+=	--enable-multilib --with-multilib-list=m64,m32,mx32
#CONFIGURE_ARGS+=	--disable-cxx-exceptions
.endif
CONFIGURE_ARGS+=	--enable-libmpx
CONFIGURE_ARGS+=	--with-system-zlib
CONFIGURE_ARGS+=        --with-gnu-as --with-as=${PREFIX}/bin/gas
CONFIGURE_ARGS+=        --with-gnu-ld --with-ld=${PREFIX}/bin/gld
BUILDLINK_DEPMETHOD.binutils=   full
.  include "../../devel/binutils/buildlink3.mk"
.endif

# pkgsrc gcc packages don't install libgcc_s on some platforms, to
# avoid problems when mixing compiler versions.  This breaks our use
# of pkgsrc gcc on EL.
PKG_DEFAULT_OPTIONS+=   always-libgcc

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CONFIGURE_ARGS+=	--build=x86_64-unknown-linux
CONFIGURE_ARGS+=	--host=${MACHINE_GNU_PLATFORM}
CONFIGURE_ARGS+=	--target=${MACHINE_GNU_PLATFORM}
CONFIGURE_ARGS+=	--with-build-sysroot=${TOOLS_CROSS_DESTDIR}
CONFIGURE_ARGS+=	--disable-bootstrap
#CONFIGURE_ARGS+=	--disable-multilib
#Your libunwind C++ exception-handling runtime is conflicting with the C++ language runtime supplied by the compiler.
#I suspect using the libunwind C++ runtime is not what you really want. Building it is disabled by default for x86_64.
#I suggest you pass --disable-cxx-exceptions (or --enable-cxx-exceptions=no) to configure to disable building the C++ runtime component and see if it resolves your problem. If that fixes the problem, configure.ac can be tweaked to make disabling that features the default for RISC-V too.
#CONFIGURE_ARGS+=	--disable-cxx-exceptions
#CONFIGURE_ARGS+=	--enable-languages=c,c++,fortran,objc,obj-c++,java,go # removing objc,obj-c++,java,go
#CONFIGURE_ARGS+=	--with-system-libunwind=no 
.if !empty(USE_CROSS_COMPILE:Marm*)
CONFIGURE_ARGS+=	--with-sysroot=${TOOLS_CROSS_DESTDIR}
#CONFIGURE_ARGS+=		--with-native-system-header-dir=${TOOLS_CROSS_DESTDIR}/usr/include
CONFIGURE_ARGS+=		--disable-multilib
#CONFIGURE_ARGS+=		--enable-__cxa_atexit
#CONFIGURE_ARGS+=		--disable-sjlj-exceptions
#CONFIGURE_ARGS+=		--disable-tm-clone-registry
CONFIGURE_ARGS+=		--disable-libsanitizer
#CONFIGURE_ARGS+=		--with-float=soft
#CONFIGURE_ARGS+=		--disable-libmudflap
#CONFIGURE_ARGS+=		--disable-libgomp
CONFIGURE_ARGS+=		--disable-libssp
CONFIGURE_ARGS+=		--disable-libquadmath
CONFIGURE_ARGS+=		--disable-libquadmath-support
CONFIGURE_ARGS+=		--disable-libmpx
CONFIGURE_ARGS+=		--disable-libitm
CONFIGURE_ENV+=		CC_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-gcc"
CONFIGURE_ENV+=		GCC_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-gcc"
CONFIGURE_ENV+=		CXX_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-g++"
CONFIGURE_ENV+=		AR_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ar"
CONFIGURE_ENV+=		NM_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-nm"
CONFIGURE_ENV+=		OBJCOPY_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-objcopy"
CONFIGURE_ENV+=		OBJDUMP_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-objdump"
CONFIGURE_ENV+=		STRIP_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-strip"
CONFIGURE_ENV+=		RANLIB_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ranlib"
CONFIGURE_ENV+=		AS_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-as"
CONFIGURE_ENV+=		LD_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld"
CONFIGURE_ENV+=		CC="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-gcc"
CONFIGURE_ENV+=		GCC="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-gcc"
CONFIGURE_ENV+=		CXX="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-g++"
CONFIGURE_ENV+=		AR="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ar"
CONFIGURE_ENV+=		NM="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-nm"
CONFIGURE_ENV+=		OBJCOPY="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-objcopy"
CONFIGURE_ENV+=		OBJDUMP="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-objdump"
CONFIGURE_ENV+=		STRIP="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-strip"
CONFIGURE_ENV+=		RANLIB="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ranlib"
CONFIGURE_ENV+=		AS="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-as"
CONFIGURE_ENV+=		LD="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld"
#MAKE_ENV+=		AS_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-as"
#MAKE_ENV+=		LD_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld"
#MAKE_ENV+=		AS="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-as"
#MAKE_ENV+=		LD="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld"
.endif
CONFIGURE_ENV+=		CC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
CONFIGURE_ENV+=		GCC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
CONFIGURE_ENV+=		CXX_FOR_BUILD=${PREFIX}/gcc6/bin/g++
CONFIGURE_ENV+=		AR_FOR_BUILD=${PREFIX}/bin/gar
CONFIGURE_ENV+=		AS_FOR_BUILD=${PREFIX}/bin/gas
CONFIGURE_ENV+=		LD_FOR_BUILD=${PREFIX}/bin/gld
CONFIGURE_ENV+=		NM_FOR_BUILD=${PREFIX}/bin/gnm
CONFIGURE_ENV+=		PWD_COMMAND=${PREFIX}/bin/pwd
MAKE_ENV+=		CXXFLAGS="-I${TOOLDIR}/${TARGET}/include/c++/6.5.0/${TARGET} -g -O2 -D_GNU_SOURCE -fno-omit-frame-pointer"
MAKE_ENV+=		PATH=${TOOLDIR}/bin:$$PATH

.endif

.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
