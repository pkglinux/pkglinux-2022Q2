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
# XXX	BUILDLINK_DEPMETHOD.shadow?=	build

BUILDLINK_TREE+=	shadow

.if !defined(SHADOW_BUILDLINK3_MK)
SHADOW_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.shadow+=	shadow>=4.8.1
BUILDLINK_PKGSRCDIR.shadow?=	../../linux/shadow
.endif	# SHADOW_BUILDLINK3_MK

BUILDLINK_TREE+=	-shadow
