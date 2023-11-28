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
# XXX	BUILDLINK_DEPMETHOD.byacc?=	build

BUILDLINK_TREE+=	byacc

.if !defined(BYACC_BUILDLINK3_MK)
BYACC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.byacc+=	byacc>=20220128
BUILDLINK_PKGSRCDIR.byacc?=	../../devel/byacc
.endif	# BYACC_BUILDLINK3_MK

BUILDLINK_TREE+=	-byacc
