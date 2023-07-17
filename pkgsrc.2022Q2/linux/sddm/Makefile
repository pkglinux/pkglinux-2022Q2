# $NetBSD$

DISTNAME=	sddm-0.19.0
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=sddm/}
GITHUB_RELEASE=	v${PKGVERSION_NOREV}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/sddm/sddm
COMMENT=	QML based X11 and Wayland display manager
LICENSE=	gnu-gpl-v2

BUILD_DEPENDS+=	extra-cmake-modules-[0-9]*:../../devel/extra-cmake-modules
BUILD_DEPENDS+=	${PYPKGPREFIX}-docutils-[0-9]*:../../textproc/py-docutils

USE_CMAKE=	yes
USE_LANGUAGES=	c c++
USE_TOOLS+=	pkg-config

.if !exists(/etc/login.defs)
CMAKE_ARGS+=	-DUID_MIN=1000
CMAKE_ARGS+=	-DUID_MAX=65000
.endif
CMAKE_ARGS+=	-DDBUS_CONFIG_DIR=${PREFIX}/share/examples/sddm
CMAKE_ARGS+=	-DCMAKE_INSTALL_SYSCONFDIR:PATH=${PKG_SYSCONFDIR:Q}
CMAKE_ARGS+=	-DBUILD_MAN_PAGES=ON
CMAKE_ARGS+=	-DRST2MAN_EXECUTABLE=${PREFIX}/bin/rst2man-${PYVERSSUFFIX}
#CMAKE_ARGS+=	-DCMAKE_BUILD_TYPE=Debug
#This switch is used because BLFS does not support systemd.
CMAKE_ARGS+=	-DENABLE_JOURNALD=OFF
#This switch prevents the file /etc/dbus-1/system.d/org.freedesktop.DisplayManager.conf from being overwritten, as it may be used by other DM's. 
CMAKE_ARGS+=	-DDBUS_CONFIG_FILENAME=sddm_org.freedesktop.DisplayManager.conf
#CMAKE_ARGS+=	-DNO_SYSTEMD=ON
CMAKE_ARGS+=	-DENABLE_PAM=OFF

SUBST_CLASSES+=		paths egs
SUBST_STAGE.paths=	pre-configure
SUBST_MESSAGE.paths=	Fixing absolute paths.
SUBST_FILES.paths+=	src/common/Configuration.h
SUBST_FILES.paths+=	data/man/sddm.conf.rst.in
SUBST_SED.paths+=	-e 's,/usr/bin/X,${X11BASE}/bin/X,g'
SUBST_SED.paths+=	-e 's,/usr/bin/Xephyr,${X11BASE}/bin/Xephyr,g'
SUBST_SED.paths+=	-e 's,/usr/bin/xauth,${X11BASE}/bin/xauth,g'
SUBST_SED.paths+=	-e 's,/usr/share/xsessions,${PREFIX}/share/xsessions,g'
SUBST_SED.paths+=	-e 's,/usr/share/wayland-sessions,${PREFIX}/share/wayland-sessions,g'
#SUBST_SED.paths+=	-e 's,/usr/local/bin,${PREFIX}/bin:/usr/local/bin,g'
SUBST_SED.paths+=	-e 's,/usr/local/bin,${PREFIX}/sbin:${PREFIX}/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin,g'

SUBST_STAGE.egs=	pre-configure
SUBST_MESSAGE.egs=	Install via examples dir
SUBST_FILES.egs+=	services/CMakeLists.txt
SUBST_SED.egs+=	-e 's,CMAKE_INSTALL_FULL_SYSCONFDIR},CMAKE_INSTALL_PREFIX}/share/examples,g'

PKG_USERS=		sddm:sddm
PKG_GECOS.sddm=		sddm unprivileged user
PKG_HOME.sddm=		${VARBASE}/lib/sddm

CONF_FILES+=		${PREFIX}/share/examples/sddm/sddm_org.freedesktop.DisplayManager.conf \
			${PKG_SYSCONFBASE}/dbus-1/system.d/sddm_org.freedesktop.DisplayManager.conf

LDFLAGS.FreeBSD+=	-lutil
LDFLAGS.NetBSD+=	-lutil

#fix the application to start upowerd, if necessary, and after login, start the session with ck-launch-session:
#post-extract:
#	cd ${WRKSRC} && sed -e '/UPOWER_SERVICE)/ s:^://:' -i src/daemon/PowerManager.cpp
#	cd ${WRKSRC} && sed -e '/\$@$/s/exec/& ck-launch-session/' -i data/scripts/Xsession

post-install:
	mkdir -p ${DESTDIR}${PREFIX}/share/xsessions
	cp ${FILESDIR}/* ${DESTDIR}${PREFIX}/share/xsessions
	cd ${DESTDIR}${PREFIX}/share/xsessions/ && ${MV} gnome.desktop gnome.desktop.sddm
	cd ${DESTDIR}${PREFIX}/share/xsessions/ && ${MV} openbox.desktop openbox.desktop.sddm

PYTHON_FOR_BUILD_ONLY=	yes
.include "../../lang/python/pyversion.mk"
.include "../../x11/libxcb/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../x11/qt5-qtdeclarative/buildlink3.mk"
#.include "../../mk/pam.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
