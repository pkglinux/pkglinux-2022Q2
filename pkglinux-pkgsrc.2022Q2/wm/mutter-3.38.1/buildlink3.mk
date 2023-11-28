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
# XXX	BUILDLINK_DEPMETHOD.mutter?=	build

BUILDLINK_TREE+=	mutter

.if !defined(MUTTER_BUILDLINK3_MK)
MUTTER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mutter+=	mutter>=3.38.1
BUILDLINK_PKGSRCDIR.mutter?=	../../wm/mutter

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../graphics/graphene/buildlink3.mk"
.include "../../sysutils/gnome-settings-daemon/buildlink3.mk"
.include "../../sysutils/gsettings-desktop-schemas/buildlink3.mk"
.include "../../textproc/json-glib/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../x11/libICE/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libxkbfile/buildlink3.mk"
.include "../../x11/gnome-desktop3/buildlink3.mk"
.include "../../x11/xkeyboard-config/buildlink3.mk"
.include "../../textproc/iso-codes/buildlink3.mk"
.include "../../x11/startup-notification/buildlink3.mk"
.include "../../linux/libseccomp/buildlink3.mk"
.include "../../linux/libgudev/buildlink3.mk"
.include "../../linux/libwacom/buildlink3.mk"
.endif	# MUTTER_BUILDLINK3_MK

BUILDLINK_TREE+=	-mutter
