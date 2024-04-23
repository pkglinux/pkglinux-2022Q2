# $NetBSD: Makefile,v 1.21 2020/03/04 14:04:51 wiz Exp $

.include "../../devel/ncurses/Makefile.common"

PKGNAME=	${DISTNAME:S/ncurses/ncursesw/}
COMMENT=	Wide character CRT screen handling and optimization package

PATCHDIR=	${.CURDIR}/../../devel/ncurses/patches
DISTINFO_FILE=	${.CURDIR}/../../devel/ncurses/distinfo

CONFIGURE_ARGS+=	--enable-widec
CONFIGURE_ARGS+=	--includedir=${PREFIX}/include/ncursesw

INSTALLATION_DIRS+=	include/ncursesw
INSTALLATION_DIRS+=	bin
INSTALLATION_DIRS+=	lib/pkgconfig

BUILD_TARGET=	libs

SUBST_CLASSES+=		includes
SUBST_MESSAGE.includes=	Fixing include paths for ncurses headers.
SUBST_STAGE.includes=	post-build
SUBST_FILES.includes=	include/curses.h
SUBST_SED.includes=	-e 's,<ncurses_dll\.h>,<ncurses/ncurses_dll\.h>,'
SUBST_SED.includes+=	-e 's,<unctrl\.h>,<ncurses/unctrl\.h>,'

post-build:
	cd ${WRKSRC}/misc && ${SH} gen-pkgconfig

do-install:
	cd ${WRKSRC}/include &&	\
	${MAKE_ENV} ${MAKE_PROGRAM} ${INSTALL_MAKE_FLAGS} install
	${INSTALL_SCRIPT} ${WRKSRC}/misc/ncurses-config ${DESTDIR}${PREFIX}/bin/ncursesw${NC_VERS:R}-config
	for LIB in gnuform gnumenu ncurses++ ncurses gnupanel; do	\
		${LIBTOOL} --mode=install ${INSTALL_PROGRAM}	\
		    ${WRKSRC}/lib/lib$${LIB}w.la ${DESTDIR}${PREFIX}/lib;	\
	done
	${INSTALL_DATA} ${WRKSRC}/misc/*.pc ${DESTDIR}${PREFIX}/lib/pkgconfig

BUILDLINK_API_DEPENDS.ncurses+=	ncurses-${NC_VERS}{,nb*}
BUILDLINK_ABI_DEPENDS.ncurses+=	ncurses-${NC_VERS}{,nb*}
USE_NCURSES=			yes

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/ncursesw/
	cd ${DESTDIR}${PREFIX}/ && find include/ncursesw/*.h | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
	cd ${DESTDIR}${PREFIX}/ && find lib/pkgconfig/ncurses*.pc | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/
	cd ${DESTDIR}${PREFIX}/ && find lib/lib* | xargs -I F ${LN} -sfv ${PREFIX}/F native/F
	cd ${DESTDIR}${PREFIX}/ && find lib/libncurses* | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/ncursesw/
#	cd ${DESTDIR}${PREFIX}/native/usr/include/ncursesw/ && ${LN} -sfv ../../../../include/ncursesw/*.h .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/ && ${LN} -sfv ../../../../lib/pkgconfig/ncurses*.pc .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/
#	cd ${DESTDIR}${PREFIX}/native/lib/ && ${LN} -sfv ../../lib/lib* .
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/ && ${LN} -sfv ../../../lib/libncurses* .

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
PLIST_SRC=
GENERATE_PLIST+= \
  	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

.include "../../devel/ncurses/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
