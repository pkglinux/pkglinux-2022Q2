# $NetBSD$

DISTNAME=	gcc-9.3.0
PKGNAME=	native-gcc9-9.3.0
CATEGORIES=	native
MASTER_SITES=	http://ftp.gnu.org/gnu/gcc/gcc-9.3.0/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	use pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ftp.gnu.org/gnu/gcc/gcc-9.3.0/
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

#ISL16=			isl-0.16.1
#SITES.${ISL16}.tar.bz2=	${MASTER_SITE_GNU:=gcc/infrastructure/}
#DISTFILES+=		${ISL16}.tar.bz2

#post-extract:
#	${TAR} -jxf ${DISTDIR}/${ISL16}.tar.bz2 -C ${WRKSRC}
#	${MV} ${WRKSRC}/${ISL16} ${WRKSRC}/isl

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
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/11_all_extra-options.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/12_all_pr55930-dependency-tracking.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/13_all_sh-drop-sysroot-suffix.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/14_all_ia64-TEXTREL.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/15_all_disable-systemtap-switch.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/16_all_m68k-textrel-on-libgcc.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/17_all_respect-build-cxxflags.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/18_all_libgfortran-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/19_all_libgomp-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/20_all_libitm-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/21_all_libatomic-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/22_all_libbacktrace-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/23_all_libsanitizer-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/24_all_libstdcxx-no-vtv.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/25_all_ia64-bootstrap.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/26_all_disable-riscv32-ABIs.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/27_all_default_ssp-buffer-size.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/28_all_hppa-faster-synth_mult.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/29_all_libcpp-ar.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/30_all_plugin-objdump.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/31_all_ipa-to_frequency.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/32_all_assume-aligned.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/33_all_vmat-PR97236.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/75_all_remove_cyclades.patch
	cd ${WRKSRC} && sed	-e '/m64=/s/lib64/lib/' \
				-i.orig gcc/config/i386/t-linux64
	${MKDIR} -v ${BLDPRE}

do-configure:
	cd ${BLDDIR} && SED=sed \
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
		${BLDPRE}/usr/lib/gcc/x86_64-*-linux*/9.3.0/include{,-fixed}
	${RM} -rf ${BLDPRE}/usr/lib/gcc/$(gcc -dumpmachine)/9.3.0/include-fixed/bits/
	${MKDIR} -v ${BLDPRE}/lib/
	${LN} -sv ../usr/bin/cpp ${BLDPRE}/lib
	${LN} -sv gcc ${BLDPRE}/usr/bin/cc
	${INSTALL_DATA_DIR} -v -m755 ${BLDPRE}/usr/lib/bfd-plugins/
	${LN} -sfv ../../libexec/gcc/$(gcc -dumpmachine)/9.3.0/liblto_plugin.so \
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
