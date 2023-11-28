# $NetBSD$

DISTNAME=	libinput-1.17.1
CATEGORIES=	linux
MASTER_SITES=	https://www.freedesktop.org/software/libinput/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	nykula@ukr.net
HOMEPAGE=	https://wayland.freedesktop.org/libinput/doc/latest/
COMMENT=	Coordinate scaling, relative pointer, acceleration
LICENSE=	mit

USE_TOOLS+=	pkg-config

SUBST_CLASSES+=allno
SUBST_STAGE.allno=pre-configure
SUBST_FILES.allno=*.txt
SUBST_SED.allno=s,true,false,

REPLACE_INTERPRETER+=	env-python
REPLACE.env-python.old=	/usr/bin/env python3
REPLACE.env-python.new=	${PREFIX}/bin/python${PYVERSSUFFIX}
REPLACE_FILES.env-python=	tools/libinput-*.py

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
	cd ${DESTDIR}${PREFIX}/ && find lib/lib* | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	cd ${DESTDIR}${PREFIX}/ && find lib/pkgconfig/*.pc | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/udev/rules.d/
	cd ${DESTDIR}${PREFIX}/ && find lib/udev/lib* | xargs -I F ${LN} -sfv ${PREFIX}/F native/F
	cd ${DESTDIR}${PREFIX}/ && find lib/udev/rules.d/* | xargs -I F ${LN} -sfv ${PREFIX}/F native/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/libexec/libinput/
	cd ${DESTDIR}${PREFIX}/ && find libexec/libinput/* | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/ && ${LN} -sfv ../../../lib/lib* .
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/ && ${LN} -sfv ../../../../lib/pkgconfig/*.pc .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/udev/rules.d/
#	cd ${DESTDIR}${PREFIX}/native/lib/udev/ && ${LN} -sfv ../../../lib/udev/lib* .
#	cd ${DESTDIR}${PREFIX}/native/lib/udev/rules.d/ && ${LN} -sfv ../../../../lib/udev/rules.d/* .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/libexec/libinput/
#	cd ${DESTDIR}${PREFIX}/native/usr/libexec/libinput/ && ${LN} -sfv ../../../../libexec/libinput/* .


.include "../../lang/python/pyversion.mk"
.include "../../linux/libevdev/buildlink3.mk"
.include "../../linux/eudev/buildlink3.mk"
.include "../../linux/mtdev/buildlink3.mk"
.include "../../devel/meson/build.mk"
.include "../../mk/bsd.pkg.mk"
