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
# XXX	BUILDLINK_DEPMETHOD.colord?=	build

BUILDLINK_TREE+=	colord

.if !defined(COLORD_BUILDLINK3_MK)
COLORD_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.colord+=	colord>=1.4.6
BUILDLINK_PKGSRCDIR.colord?=	../../linux/colord

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../graphics/lcms2/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../security/polkit/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../sysutils/consolekit/buildlink3.mk"
.include "../../linux/libgudev/buildlink3.mk"
.include "../../linux/libgusb/buildlink3.mk"
.endif	# COLORD_BUILDLINK3_MK

BUILDLINK_TREE+=	-colord
