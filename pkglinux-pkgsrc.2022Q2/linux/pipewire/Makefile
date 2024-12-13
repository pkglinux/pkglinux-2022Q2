# $NetBSD$

GITHUB_PROJECT=	pipewire
GITHUB_TAG=	0.3.47/pipewire-0.3.47
DISTNAME=	pipewire-0.3.47
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=PipeWire/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/PipeWire/pipewire/
COMMENT=	Low-latency, graph-based audio processing engine
LICENSE=	mit

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config gmake

WRKSRC=			${WRKDIR}/${DISTNAME}

#ERROR: Got argument prefix as both -Dprefix and --prefix. Pick one.
#MESON_ARGS+=		-Dprefix=${PREFIX}
MESON_ARGS+=		--prefix=${PREFIX}
MESON_ARGS+=		--buildtype=release
MESON_ARGS+=		-Dsession-managers= #prevents automatic downloading external dependencies.
MESON_ARGS+=		-Dpipewire-alsa=enabled
MESON_ARGS+=		-Dsdl2=disabled
MESON_ARGS+=		-Dsystemd=disabled
MESON_ARGS+=		-Dsystemd-user-service=disabled
MESON_ARGS+=		-Dpipewire-v4l2=disabled
#MESON_ARGS+=		-Dlibpulse=enabled
MESON_ARGS+=		-Dudev=enabled
MESON_ARGS+=		-Dudevrulesdir=${PREFIX}/lib/udev/rules.d

USE_BUILTIN.ncurses=	no
USE_BUILTIN.ncursesw=	no
USE_BUILTIN.readline=	no
USE_BUILTIN.libusb1=	no

.include "../../devel/meson/build.mk"
.include "../../graphics/libv4l/buildlink3.mk"
.include "../../multimedia/ffmpeg4/buildlink3.mk"
.include "../../multimedia/gstreamer1/buildlink3.mk"
.include "../../multimedia/gst-plugins1-base/buildlink3.mk"
.include "../../multimedia/libva/buildlink3.mk"
#.include "../../audio/pulseaudio/buildlink3.mk"
.include "../../linux/sbc/buildlink3.mk"
#.include "../../devel/SDL2/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../net/avahi/buildlink3.mk"
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../audio/jack/buildlink3.mk"
.include "../../audio/alsa-lib/buildlink3.mk"
.include "../../audio/libopus/buildlink3.mk"
.include "../../audio/libsamplerate/buildlink3.mk"
.include "../../audio/libsndfile/buildlink3.mk"
.include "../../linux/eudev/buildlink3.mk"
.include "../../sysutils/libcap/buildlink3.mk"
.include "../../devel/libusb1/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../devel/ncurses/buildlink3.mk"
.include "../../devel/ncursesw/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
