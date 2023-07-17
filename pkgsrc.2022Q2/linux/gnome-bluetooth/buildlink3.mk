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
# XXX	BUILDLINK_DEPMETHOD.gnome-bluetooth?=	build

BUILDLINK_TREE+=	gnome-bluetooth

.if !defined(GNOME_BLUETOOTH_BUILDLINK3_MK)
GNOME_BLUETOOTH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnome-bluetooth+=	gnome-bluetooth>=3.34.3
BUILDLINK_PKGSRCDIR.gnome-bluetooth?=	../../linux/gnome-bluetooth

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../textproc/itstool/buildlink3.mk"
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../linux/eudev/buildlink3.mk"
.endif	# GNOME_BLUETOOTH_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnome-bluetooth
