# $NetBSD$

GITHUB_PROJECT=	openrc
GITHUB_TAG=	refs/tags/0.52
DISTNAME=	0.52
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME}
CATEGORIES=	native
MASTER_SITES=	${MASTER_SITE_GITHUB:=OpenRC/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/OpenRC/openrc/
COMMENT=	dependency-based init system with the /sbin/init
LICENSE=	BSD-2-Clause

CONFLICTS+=	sysvinit-[0-9]*

WRKSRC=		${WRKDIR}/openrc-0.52
USE_TOOLS+=	pkg-config

PKGCONFIG_OVERRIDE+=	pkgconfig/einfo.pc.in
PKGCONFIG_OVERRIDE+=	pkgconfig/openrc.pc.in

MESON_ARGS+=	-Dos=Linux
MESON_ARGS+=	-Dpam=false
MESON_ARGS+=	-Dsysvinit=true
MESON_ARGS+=	-Drootprefix=${PREFIX}/native
MESON_ARGS+=	--bindir bin
MESON_ARGS+=	--sbindir sbin
MESON_ARGS+=	--libdir lib
MESON_ARGS+=	--libexec usr/libexec
MESON_ARGS+=	--includedir ${PREFIX}/native/usr/include
MESON_ARGS+=	--sysconfdir ${PREFIX}/native/etc
MESON_ARGS+=	--datadir ${PREFIX}/native/usr/share
MESON_ARGS+=	--mandir ${PREFIX}/native/usr/share/man

post-install:
	cd ${DESTDIR}${PREFIX}/native/etc/init.d/ && \
		rm -v agetty.tty1 && cp -v agetty agetty.tty1 && \
		rm -v agetty.tty2 && cp -v agetty agetty.tty2 && \
		rm -v agetty.tty3 && cp -v agetty agetty.tty3 && \
		rm -v agetty.tty4 && cp -v agetty agetty.tty4 && \
		rm -v agetty.tty5 && cp -v agetty agetty.tty5 && \
		rm -v agetty.tty6 && cp -v agetty agetty.tty6
	cp -v ${FILESDIR}/conf.d/agetty.tty1 ${DESTDIR}${PREFIX}/native/etc/conf.d/
	cp -v ${FILESDIR}/conf.d/consolefont ${DESTDIR}${PREFIX}/native/etc/conf.d/
	cd ${DESTDIR}${PREFIX}/native/etc/runlevels/boot/ &&  ln -snvf ../../init.d/consolefont .
	cd ${DESTDIR}${PREFIX}/native/sbin/ &&  ln -snvf ../usr/libexec/rc/bin/mountinfo .
	cp -v ${FILESDIR}/init.d/kmod-static-nodes ${DESTDIR}${PREFIX}/native/etc/init.d/
	cp -v ${FILESDIR}/init.d/udev ${DESTDIR}${PREFIX}/native/etc/init.d/
	cp -v ${FILESDIR}/init.d/udev-trigger ${DESTDIR}${PREFIX}/native/etc/init.d/
	cp -v ${FILESDIR}/init.d/udev-settle ${DESTDIR}${PREFIX}/native/etc/init.d/
	cp -v ${FILESDIR}/conf.d/udev ${DESTDIR}${PREFIX}/native/etc/conf.d/
	cp -v ${FILESDIR}/conf.d/udev-trigger ${DESTDIR}${PREFIX}/native/etc/conf.d/
	cp -v ${FILESDIR}/conf.d/udev-settle ${DESTDIR}${PREFIX}/native/etc/conf.d/
	cd ${DESTDIR}${PREFIX}/native/etc/runlevels/sysinit/ &&  ln -snvf ../../init.d/udev .
	cd ${DESTDIR}${PREFIX}/native/etc/runlevels/sysinit/ &&  ln -snvf ../../init.d/udev-trigger .
	cd ${DESTDIR}${PREFIX}/native/etc/runlevels/sysinit/ &&  ln -snvf ../../init.d/udev-settle .
	cp -v ${FILESDIR}/init.d/nscd ${DESTDIR}${PREFIX}/native/etc/init.d/
	cd ${DESTDIR}${PREFIX}/native/etc/runlevels/default/ &&  ln -snvf ../../init.d/nscd .
	gsed -e '/^#rc_parallel="NO"/{n;s/^/rc_parallel="YES"\n/;}' -i ${DESTDIR}${PREFIX}/native/etc/rc.conf

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.else
MESON_ARGS+=	-Dselinux=enabled
.include "../../sysutils/libcap/buildlink3.mk"
.include "../../linux/selinux-libselinux/buildlink3.mk"
.endif

.include "../../devel/meson/build.mk"
.include "../../mk/bsd.pkg.mk"
