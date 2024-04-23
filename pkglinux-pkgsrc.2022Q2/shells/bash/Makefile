# $NetBSD: Makefile,v 1.103 2022/01/05 20:50:16 wiz Exp $

BASH_VERSION=		5.1
BASH_PATCHLEVEL=	16

DISTNAME=	bash-${BASH_VERSION}
PKGNAME=	bash-${BASH_VERSION}.${BASH_PATCHLEVEL}
CATEGORIES=	shells
MASTER_SITES=	${MASTER_SITE_GNU:=bash/}

PATCH_SITES=	${MASTER_SITES:=bash-5.1-patches/}
PATCHFILES+=	bash51-001 bash51-002 bash51-003 bash51-004
PATCHFILES+=	bash51-005 bash51-006 bash51-007 bash51-008
PATCHFILES+=	bash51-009 bash51-010 bash51-011 bash51-012
PATCHFILES+=	bash51-013 bash51-014 bash51-015 bash51-016

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.gnu.org/software/bash/bash.html
COMMENT=	The GNU Bourne Again Shell
LICENSE=	gnu-gpl-v3

USE_TOOLS+=		makeinfo bison
TEXINFO_REQD=		4.1
GNU_CONFIGURE=		yes
MAKE_ENV+=		INSTALL_SCRIPT=${INSTALL_SCRIPT:Q}
CONFIGURE_ARGS=		LOCAL_LDFLAGS=${EXPORT_SYMBOLS_LDFLAGS:M*:Q}
CPPFLAGS+=		-DDEFAULT_PATH_VALUE="\"/sbin:/usr/sbin:/usr/bin:/bin:${PREFIX}/sbin:${PREFIX}/bin:/usr/local/sbin:/usr/local/bin\""
TEST_TARGET=		test

PKGCONFIG_OVERRIDE=	support/bash.pc.in

INFO_FILES=		YES # PLIST
PKG_SHELL=		bin/bash
INSTALLATION_DIRS=	${PKGMANDIR}/man1

CONFIGURE_ARGS+=	--enable-alias
CONFIGURE_ARGS+=	--enable-array-variables
CONFIGURE_ARGS+=	--enable-brace-expansion
CONFIGURE_ARGS+=	--enable-cond-regexp
CONFIGURE_ARGS+=	--enable-debugger
CONFIGURE_ARGS+=	--enable-directory-stack
CONFIGURE_ARGS+=	--enable-dparen-arithmetic
CONFIGURE_ARGS+=	--enable-extended-glob
CONFIGURE_ARGS+=	--enable-function-import
CONFIGURE_ARGS+=	--enable-help-builtin
CONFIGURE_ARGS+=	--enable-history
CONFIGURE_ARGS+=	--enable-process-substitution
CONFIGURE_ARGS+=	--enable-progcomp
CONFIGURE_ARGS+=	--enable-readline

.include "../../mk/bsd.prefs.mk"
.include "options.mk"

# Minix lacks setpgid() which is needed for job control.
.if ${OPSYS} == "Minix"
CONFIGURE_ARGS+=	--disable-job-control
.else
CONFIGURE_ARGS+=	--enable-job-control
.endif

# bash malloc() is broken on Minix and musl libc
.if ${OPSYS} == "Minix" || (${OPSYS} == "Linux" && empty(GLIBC_VERSION))
CONFIGURE_ARGS+=	--with-bash-malloc=no
.endif

# Use "readline" package on Darwin to avoid link erros.
.if ${OPSYS} == "Darwin"
CONFIGURE_ARGS+=		--with-installed-readline

BUILDLINK_API_DEPENDS.readline+=	readline>=7.0
.include "../../devel/readline/buildlink3.mk"
.endif

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS]) && ${OPSYS} == "NetBSD"
CONFIGURE_ENV+=		CC_FOR_BUILD=${NATIVE_CC:Q}
CONFIGURE_ENV+=		ac_cv_c_long_long=yes
CONFIGURE_ENV+=		ac_cv_c_long_double=yes
CONFIGURE_ENV+=		bash_cv_type_rlimit=yes
CONFIGURE_ENV+=		bash_cv_getcwd_malloc=yes
CONFIGURE_ENV+=		bash_cv_func_sigsetjmp=yes
CONFIGURE_ENV+=		bash_cv_printf_a_format=yes
CONFIGURE_ENV+=		bash_cv_job_control_missing=present
CONFIGURE_ENV+=		bash_cv_sys_named_pipes=present
CONFIGURE_ENV+=		bash_cv_unusable_rtsigs=no
CONFIGURE_ENV+=		bash_cv_func_ctype_nonascii=yes
CONFIGURE_ENV+=		bash_cv_wexitstatus_offset=8
.endif

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CONFIGURE_ENV+=		PWD_COMMAND=${PREFIX}/bin/gpwd
CONFIGURE_ENV+=		CC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
CONFIGURE_ENV+=		GCC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
CONFIGURE_ENV+=		CXX_FOR_BUILD=${PREFIX}/gcc6/bin/g++
CONFIGURE_ENV+=		AR_FOR_BUILD=${PREFIX}/bin/gar
CONFIGURE_ENV+=		AS_FOR_BUILD=${PREFIX}/bin/gas
CONFIGURE_ENV+=		LD_FOR_BUILD=${PREFIX}/bin/gld
CONFIGURE_ENV+=		NM_FOR_BUILD=${PREFIX}/bin/gnm
CONFIGURE_ENV+=		OBJCOPY_FOR_BUILD=${PREFIX}/bin/gobjcopy
CONFIGURE_ENV+=		OBJDUMP_FOR_BUILD=${PREFIX}/bin/gobjdump
CONFIGURE_ENV+=		READELF_FOR_BUILD=${PREFIX}/bin/greadelf
CONFIGURE_ENV+=		RANLIB_FOR_BUILD=${PREFIX}/bin/granlib
CONFIGURE_ENV+=		STRIP_FOR_BUILD=${PREFIX}/bin/gstrip
MAKE_ENV+= 		PATH=${TOOLDIR}/bin:$$PATH
MAKE_ENV+=		AS_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-as"
MAKE_ENV+=		LD_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld"
.endif

pre-configure:
	${RM} -f ${WRKSRC}/y.tab.c

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/bash.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/doc/bashbug.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/usr/bin ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/bin ${DESTDIR}
	cd ${DESTDIR}${PREFIX}/native/bin/ && ${LN} -sfv bash sh
	lndir.sh -l sf ${PREFIX}/lib/pkgconfig ${PREFIX}/native/usr/lib/pkgconfig ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/include ${PREFIX}/native/usr/include ${DESTDIR}
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/bin/
#	cd ${DESTDIR}${PREFIX}/native/usr/bin/ && ${LN} -sfv ../../../bin/* .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/bin/
#	cd ${DESTDIR}${PREFIX}/native/bin/ && ${LN} -sfv ../usr/bin/bash .
#	cd ${DESTDIR}${PREFIX}/native/bin/ && ${LN} -sfv bash sh
#	lndir.sh ${DESTDIR}${PREFIX}/lib/pkgconfig ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig
#	lndir.sh ${DESTDIR}${PREFIX}/include ${DESTDIR}${PREFIX}/native/usr/include

.include "../../mk/termcap.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
