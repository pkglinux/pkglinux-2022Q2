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
# XXX	BUILDLINK_DEPMETHOD.squashfs?=	build

BUILDLINK_TREE+=	squashfs

.if !defined(SQUASHFS_BUILDLINK3_MK)
SQUASHFS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.squashfs+=	squashfs>=4.6.1
BUILDLINK_PKGSRCDIR.squashfs?=	../../linux/squashfs
.endif	# SQUASHFS_BUILDLINK3_MK

BUILDLINK_TREE+=	-squashfs
