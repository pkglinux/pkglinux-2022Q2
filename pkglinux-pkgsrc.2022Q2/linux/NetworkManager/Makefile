# $NetBSD$

#DISTNAME=	NetworkManager-1.30.0
DISTNAME=	NetworkManager-1.32.10
CATEGORIES=	linux
#MASTER_SITES=	${MASTER_SITE_GNOME:=sources/NetworkManager/1.30/}
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/NetworkManager/1.32/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	https://download.gnome.org/sources/NetworkManager/1.30/ # TODO: check
HOMEPAGE=	https://download.gnome.org/sources/NetworkManager/1.32/ # TODO: check
COMMENT=	Replace default route, set IP addresses, configure networking
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config perl intltool msgfmt xgettext
USE_TOOLS+=		gdbus-codegen
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++

MESON_ARGS+=		-Dlibaudit=no
MESON_ARGS+=		-Dlibpsl=false
MESON_ARGS+=		-Dnmtui=true
MESON_ARGS+=		-Dovs=false
MESON_ARGS+=		-Dppp=false
MESON_ARGS+=		-Dselinux=false
#MESON_ARGS+=		-Dsession_tracking=elogind
MESON_ARGS+=		-Dsession_tracking=no
MESON_ARGS+=		-Dmodem_manager=false
MESON_ARGS+=		-Dsystemdsystemunitdir=no
MESON_ARGS+=		-Dsystemd_journal=false
MESON_ARGS+=		-Dqt=false       
#MESON_ARGS+=		-Dnmtui=false      

PKGCONFIG_OVERRIDE+=	NetworkManager.pc.in
PKGCONFIG_OVERRIDE+=	libnm/libnm.pc.in

post-extract:
	${CP} -r ${FILESDIR}/NetworkManager.sh ${WRKSRC}

pre-configure:
	cd ${WRKSRC} && sed '/initrd/d' -i src/core/meson.build && \
	grep -rl '^#!.*python' | xargs sed -i '1s/python/&3/'

RCD_SCRIPTS+=		NetworkManager

do-install:
	${CP} -r ${FILESDIR}/conf/* ${DESTDIR}${PREFIX}/

.include "../../devel/meson/build.mk"
.include "../../devel/libuuid/buildlink3.mk"
.include "../../linux/eudev/buildlink3.mk"
#.include "../../linux/elogind/buildlink3.mk"
.include "../../linux/libndp/buildlink3.mk"
.include "../../linux/newt/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../textproc/jansson/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../devel/nss/buildlink3.mk"
.include "../../security/polkit/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../net/wpa_supplicant/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
