# $NetBSD: Makefile,v 1.79 2022/01/10 20:55:32 morr Exp $

PKGNAME=		vim-${VIM_VERSION}.${VIM_PATCHLEVEL}

COMMENT=		Vim editor (vi clone) without GUI

.include		"../../editors/vim-share/Makefile.common"

DEPENDS+=		vim-share-${VIM_VERSION}.${VIM_PATCHLEVEL}{,nb*}:../../editors/vim-share

CONFLICTS+=		vim-gtk-[0-9]* vim-gtk2-[0-9]* vim-motif-[0-9]*
CONFLICTS+=		vim-xaw-[0-9]* vim-kde-[0-9]*

CONFIGURE_ARGS+=	--enable-gui=no --without-x
CONFIGURE_ARGS+=	--with-tlib=${BUILDLINK_LIBNAME.termcap}

BUILD_TARGET=		vim
INSTALL_TARGET=		installvimbin installvimdiff installtutorbin
TEST_TARGET=		check

post-install:
.for f in rvim rview
	${RM} -f ${DESTDIR}${PREFIX}/bin/${f}
	${LN} -s vim ${DESTDIR}${PREFIX}/bin/${f}
.endfor
	${LN} -sv vim ${DESTDIR}${PREFIX}/bin/vi
	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/usr/bin ${DESTDIR}
#	lndir.sh ${DESTDIR}${PREFIX}/bin ${DESTDIR}${PREFIX}/native/usr/bin

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

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/termcap.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
