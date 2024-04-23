# $NetBSD: Makefile,v 1.113 2021/11/16 15:19:59 wiz Exp $

.include "Makefile.common"

COMMENT=	CRT screen handling and optimization package

INSTALLATION_DIRS+=	share/examples

PLIST_SRC=	${PKGDIR}/PLIST ${WRKDIR}/PLIST.terminfo

post-configure:
	cd ${WRKSRC}/man;					\
	for f in *.1m; do					\
		mv -f $${f} `${BASENAME} $${f} .1m`.1; 	\
	done;							\
	for f in *.3x; do					\
		mv -f $${f} `${BASENAME} $${f} .3x`.3; 	\
	done

post-install:
	${INSTALL_DATA} ${WRKSRC}/c++/demo.cc \
		${DESTDIR}${PREFIX}/share/examples/ncurses++demo.cc
.if ${OPSYS} == "Darwin"
	# Clashes with "a" versions on case-insensitive file systems
	${RM} -f ${DESTDIR}${PREFIX}/${TERMINFODIR}/32/2621A
	${RM} -f ${DESTDIR}${PREFIX}/${TERMINFODIR}/68/hp2621A
	${RM} -f ${DESTDIR}${PREFIX}/${TERMINFODIR}/68/hp70092A
.endif
	${FIND} ${DESTDIR}${PREFIX}/${TERMINFODIR} -type f -print | ${SORT} | \
	${SED} -e "s,^${DESTDIR}${PREFIX}/,," >${WRKDIR}/PLIST.terminfo
	${RM} -f ${DESTDIR}${PREFIX}/lib/terminfo
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/ncurses/
	cd ${DESTDIR}${PREFIX}/ && find include/ncurses/*.h | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
	cd ${DESTDIR}${PREFIX}/ && find lib/pkgconfig/ncurses*.pc | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/
	cd ${DESTDIR}${PREFIX}/ && find lib/lib* | xargs -I F ${LN} -sfv ${PREFIX}/F native/F
	cd ${DESTDIR}${PREFIX}/ && find lib/libncurses* | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/ncurses/
#	cd ${DESTDIR}${PREFIX}/native/usr/include/ncurses/ && ${LN} -sfv ../../../../include/ncurses/*.h .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/ && ${LN} -sfv ../../../../lib/pkgconfig/ncurses*.pc .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/
#	cd ${DESTDIR}${PREFIX}/native/lib/ && ${LN} -sfv ../../lib/lib* .
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/ && ${LN} -sfv ../../../lib/libncurses* .

#.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
PLIST_SRC=
GENERATE_PLIST+= \
 	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

.include "../../mk/bsd.pkg.mk"
