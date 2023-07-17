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
# XXX	BUILDLINK_DEPMETHOD.gnome-settings-daemon?=	build

BUILDLINK_TREE+=	gnome-settings-daemon

.if !defined(GNOME_SETTINGS_DAEMON_BUILDLINK3_MK)
GNOME_SETTINGS_DAEMON_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnome-settings-daemon+=	gnome-settings-daemon>=42.2nb1
BUILDLINK_PKGSRCDIR.gnome-settings-daemon?=	../../linux/gnome-settings-daemon

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../audio/pulseaudio/buildlink3.mk"
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../devel/dconf/buildlink3.mk"
.include "../../linux/libgweather/buildlink3.mk"
.include "../../geography/geoclue/buildlink3.mk"
.include "../../geography/geocode-glib/buildlink3.mk"
.include "../../linux/colord/buildlink3.mk"
.include "../../graphics/lcms2/buildlink3.mk"
.include "../../print/libcups/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../linux/gsettings-desktop-schemas42/buildlink3.mk"
.include "../../security/polkit/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../sysutils/upower/buildlink3.mk"
.include "../../textproc/iso-codes/buildlink3.mk"
.include "../../textproc/json-glib/buildlink3.mk"
.include "../../linux/gnome-desktop3/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../linux/libseccomp/buildlink3.mk"
.include "../../linux/libgudev/buildlink3.mk"
.include "../../linux/NetworkManager/buildlink3.mk"
.include "../../linux/libwacom/buildlink3.mk"
.include "../../audio/alsa-lib/buildlink3.mk"
.endif	# GNOME_SETTINGS_DAEMON_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnome-settings-daemon
