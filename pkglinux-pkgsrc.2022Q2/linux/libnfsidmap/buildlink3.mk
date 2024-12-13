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
# XXX	BUILDLINK_DEPMETHOD.libnfsidmap-0?=	build

BUILDLINK_TREE+=	libnfsidmap-0

.if !defined(LIBNFSIDMAP_0_BUILDLINK3_MK)
LIBNFSIDMAP_0_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libnfsidmap-0+=	libnfsidmap-0>=25
BUILDLINK_PKGSRCDIR.libnfsidmap-0?=	../../linux/libnfsidmap
.endif	# LIBNFSIDMAP_0_BUILDLINK3_MK

BUILDLINK_TREE+=	-libnfsidmap-0
