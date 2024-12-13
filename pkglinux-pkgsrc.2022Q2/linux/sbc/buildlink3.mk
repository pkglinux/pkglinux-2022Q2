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
# XXX	BUILDLINK_DEPMETHOD.sbc?=	build

BUILDLINK_TREE+=	sbc

.if !defined(SBC_BUILDLINK3_MK)
SBC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.sbc+=	sbc>=1.5
BUILDLINK_PKGSRCDIR.sbc?=	../../linux/sbc
.endif	# SBC_BUILDLINK3_MK

BUILDLINK_TREE+=	-sbc
