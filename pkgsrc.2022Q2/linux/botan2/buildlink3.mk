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
# XXX	BUILDLINK_DEPMETHOD.Botan?=	build

BUILDLINK_TREE+=	Botan

.if !defined(BOTAN_BUILDLINK3_MK)
BOTAN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.Botan+=	Botan>=2.19.2
BUILDLINK_PKGSRCDIR.Botan?=	../../linux/botan2
.endif	# BOTAN_BUILDLINK3_MK

BUILDLINK_TREE+=	-Botan
