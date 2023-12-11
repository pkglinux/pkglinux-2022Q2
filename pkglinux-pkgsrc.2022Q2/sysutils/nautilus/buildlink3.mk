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
# XXX	BUILDLINK_DEPMETHOD.nautilus?=	build

BUILDLINK_TREE+=	nautilus

.if !defined(NAUTILUS_BUILDLINK3_MK)
NAUTILUS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.nautilus+=	nautilus>=3.38.1nb5
BUILDLINK_PKGSRCDIR.nautilus?=	../../sysutils/nautilus

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
#.include "../../archivers/gnome-autoar/buildlink3.mk"
#.include "../../devel/gobject-introspection/buildlink3.mk"
#.include "../../graphics/gexiv2/buildlink3.mk"
#.include "../../multimedia/gst-plugins1-base/buildlink3.mk"
#.include "../../sysutils/desktop-file-utils/buildlink3.mk"
#.include "../../sysutils/gnome-tracker/buildlink3.mk"
#.include "../../x11/gnome-desktop3/buildlink3.mk"
#.include "../../x11/gtk3/buildlink3.mk"
#.include "../../linux/libseccomp/buildlink3.mk"
#.include "../../linux/eudev/buildlink3.mk"
#.include "../../linux/gvfs/buildlink3.mk"
.endif	# NAUTILUS_BUILDLINK3_MK

BUILDLINK_TREE+=	-nautilus
