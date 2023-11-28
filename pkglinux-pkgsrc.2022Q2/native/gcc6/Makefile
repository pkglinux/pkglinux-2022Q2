# $NetBSD$

DISTNAME=	gcc-6.5.0
PKGNAME=	native-gcc6-6.5.0
CATEGORIES=	native
MASTER_SITES=	http://ftp.gnu.org/gnu/gcc/gcc-6.5.0/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	use pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ftp.gnu.org/gnu/gcc/gcc-6.5.0/
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

USE_TOOLS+=		gmake makeinfo sed:run tar:build perl
USE_TOOLS+=		pkg-config
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

#	cd ${BLDDIR} && SED=sed CC="cc -specs=${FILESDIR}/gcc6.specs" \
#	cd ${BLDDIR} && SED=sed CC="cc -specs=${FILESDIR}/gcc6.specs -fgnu-tm" \
#	cd ${BLDDIR} && SED=sed \

do-configure:
	cd ${BLDDIR} && SED=gsed \
	${WRKSRC}/configure				\
		--build=x86_64-unknown-linux		\
		--prefix=${PREDIR}/usr			\
		--enable-multilib			\
		--with-multilib-list=m64,m32,mx32	\
		--with-arch=k8 \
		--with-tune=k8 \
		--enable-threads=posix			\
		--enable-libssp				\
		--enable-libmpx				\
		--with-system-zlib			\
		--enable-languages=c,c++

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDDIR} install-strip || ${GMAKE} DESTDIR=${BLDDIR} install)
	${MKDIR} -v ${BLDPRE}/usr/share/gdb/auto-load/usr/lib/
	${MV} -v ${BLDPRE}/usr/lib/*gdb.py ${BLDPRE}/usr/share/gdb/auto-load/usr/lib
	chown -v -R root:root \
		${BLDPRE}/usr/lib/gcc/x86_64-*-linux*/6.5.0/include{,-fixed}
	${RM} -rf ${BLDPRE}/usr/lib/gcc/$(gcc -dumpmachine)/6.5.0/include-fixed/bits/
	${MKDIR} -v ${BLDPRE}/lib/
	${LN} -sv ../usr/bin/cpp ${BLDPRE}/lib
	${LN} -sv gcc ${BLDPRE}/usr/bin/cc
	${INSTALL_DATA_DIR} -v -m755 ${BLDPRE}/usr/lib/bfd-plugins/
	${LN} -sfv ../../libexec/gcc/$(gcc -dumpmachine)/6.5.0/liblto_plugin.so \
		${BLDPRE}/usr/lib/bfd-plugins/

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../devel/libffi/buildlink3.mk"
.include "../../devel/binutils/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
