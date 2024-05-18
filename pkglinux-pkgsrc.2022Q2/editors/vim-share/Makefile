# $NetBSD: Makefile,v 1.59 2022/01/10 20:53:32 morr Exp $

PKGNAME=		vim-share-${VIM_VERSION}.${VIM_PATCHLEVEL}
COMMENT=		Data files for the vim editor (vi clone)

.include		"Makefile.common"

CONFIGURE_ARGS+=	--disable-gui
CONFIGURE_ARGS+=	--without-x

# Fix PKG_FAIL_REASON+="No usable termcap library found on the system."
.include "../../mk/termcap.buildlink3.mk"
.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
#configure: error: cross-compiling: please set 'vim_cv_toupper_broken'
CONFIGURE_ARGS+=	vim_cv_toupper_broken=yes
CONFIGURE_ARGS+=	--with-tlib=ncurses
CONFIGURE_ARGS+=	vim_cv_terminfo=yes
CONFIGURE_ARGS+=	vim_cv_tgetent=zero
CONFIGURE_ARGS+=	vim_cv_getcwd_broken=no
CONFIGURE_ARGS+=	vim_cv_stat_ignores_slash=no
CONFIGURE_ARGS+=	vim_cv_memmove_handles_overlap=no
CONFIGURE_ARGS+=	vim_cv_bcopy_handles_overlap=no
CONFIGURE_ARGS+=	vim_cv_memcpy_handles_overlap=no
CONFIGURE_ARGS+=	--host=${MACHINE_GNU_PLATFORM}
CONFIGURE_ARGS+=	--with-sysroot=${TOOLS_CROSS_DESTDIR}
CONFIGURE_ENV+=		BUILD_CC=${PREFIX}/gcc6/bin/gcc
CONFIGURE_ENV+=		CC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
CONFIGURE_ENV+=		PWD_COMMAND=${PREFIX}/bin/gpwd
MAKE_ENV+= 		PATH=${TOOLDIR}/bin:$$PATH
MAKE_ENV+=		AS_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-as"
MAKE_ENV+=		LD_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld"
.endif

BUILD_TARGET=		vim
INSTALL_TARGET=		installruntime installmacros installtutor installtools
USE_TOOLS+=		awk
INSTALL_MAKE_FLAGS+=	${MAKE_FLAGS} TOOLS_AWK=${TOOLS_AWK} TOOLS_SETENV=${TOOLS_SETENV}

PLIST_SUBST+=		VIM_SUBDIR=${VIM_SUBDIR}

CHECK_INTERPRETER_SKIP+=	share/vim/${VIM_SUBDIR}/doc/*.pl
CHECK_INTERPRETER_SKIP+=	share/vim/${VIM_SUBDIR}/tools/*.pl
CHECK_INTERPRETER_SKIP+=	share/vim/${VIM_SUBDIR}/tools/*.py
CHECK_INTERPRETER_SKIP+=	share/vim/${VIM_SUBDIR}/tools/*.awk

.include "../../mk/curses.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
