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
# XXX	BUILDLINK_DEPMETHOD.libnl?=	build

BUILDLINK_TREE+=	libnl

.if !defined(LIBNL_BUILDLINK3_MK)
LIBNL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libnl+=	libnl>=3.5.0
BUILDLINK_PKGSRCDIR.libnl?=	../../linux/libnl
.endif	# LIBNL_BUILDLINK3_MK

BUILDLINK_TREE+=	-libnl
