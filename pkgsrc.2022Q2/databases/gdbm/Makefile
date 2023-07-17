# $NetBSD: Makefile,v 1.54 2018/01/28 19:40:22 wiz Exp $

.include "Makefile.common"

COMMENT=	The GNU database manager

INFO_FILES=		yes

post-install:
	lndir.sh -l sf ${PREFIX}/include ${PREFIX}/native/usr/include ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/usr/lib ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/usr/bin ${DESTDIR}

#	lndir.sh ${DESTDIR}${PREFIX}/include ${DESTDIR}${PREFIX}/native/usr/include
#	lndir.sh ${DESTDIR}${PREFIX}/lib ${DESTDIR}${PREFIX}/native/usr/lib
#	lndir.sh ${DESTDIR}${PREFIX}/bin ${DESTDIR}${PREFIX}/native/usr/bin

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../mk/curses.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
