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
# XXX	BUILDLINK_DEPMETHOD.mtdev?=	build

BUILDLINK_TREE+=	mtdev

.if !defined(MTDEV_BUILDLINK3_MK)
MTDEV_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mtdev+=	mtdev>=1.1.6
BUILDLINK_PKGSRCDIR.mtdev?=	../../linux/mtdev
.endif	# MTDEV_BUILDLINK3_MK

BUILDLINK_TREE+=	-mtdev
