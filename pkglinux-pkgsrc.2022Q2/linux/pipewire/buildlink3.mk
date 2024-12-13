# $NetBSD$
# XXX
# XXX This file was created automatically using createbuildlink-3.18.
# XXX After this file has been verified as correct, the comment lines
# XXX beginning with "XXX" should be removed.  Please do not commit
# XXX unverified buildlink3.mk files.
# XXX
# XXX Packages that only install static libraries or headers should
# XXX include the following line:
# XXX
# XXX	BUILDLINK_DEPMETHOD.pipewire?=	build

BUILDLINK_TREE+=	pipewire

.if !defined(PIPEWIRE_BUILDLINK3_MK)
PIPEWIRE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pipewire+=	pipewire>=0.3.47
BUILDLINK_PKGSRCDIR.pipewire?=	../../linux/pipewire

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../graphics/libv4l/buildlink3.mk"
.include "../../multimedia/ffmpeg4/buildlink3.mk"
.include "../../multimedia/gstreamer1/buildlink3.mk"
.include "../../multimedia/gst-plugins1-base/buildlink3.mk"
.include "../../multimedia/libva/buildlink3.mk"
.include "../../linux/sbc/buildlink3.mk"
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
.endif	# PIPEWIRE_BUILDLINK3_MK

BUILDLINK_TREE+=	-pipewire
