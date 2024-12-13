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
# XXX	BUILDLINK_DEPMETHOD.libnfs?=	build

BUILDLINK_TREE+=	libnfs

.if !defined(LIBNFS_BUILDLINK3_MK)
LIBNFS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libnfs+=	libnfs>=5.0.3
BUILDLINK_PKGSRCDIR.libnfs?=	../../linux/libnfs
.endif	# LIBNFS_BUILDLINK3_MK

BUILDLINK_TREE+=	-libnfs
