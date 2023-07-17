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
# XXX	BUILDLINK_DEPMETHOD.libevdev?=	build

BUILDLINK_TREE+=	libevdev

.if !defined(LIBEVDEV_BUILDLINK3_MK)
LIBEVDEV_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libevdev+=	libevdev>=1.8.0
BUILDLINK_PKGSRCDIR.libevdev?=	../../linux/libevdev

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
#.include "../../x11/xorgproto/buildlink3.mk"
#.include "../../x11/modular-xorg-server/buildlink3.mk"
.endif	# LIBEVDEV_BUILDLINK3_MK

BUILDLINK_TREE+=	-libevdev
