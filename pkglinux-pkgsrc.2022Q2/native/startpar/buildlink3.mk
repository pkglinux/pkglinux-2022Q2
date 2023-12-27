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
# XXX	BUILDLINK_DEPMETHOD.startpar?=	build

BUILDLINK_TREE+=	startpar

.if !defined(STARTPAR_BUILDLINK3_MK)
STARTPAR_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.startpar+=	startpar>=0.65
BUILDLINK_PKGSRCDIR.startpar?=	../../native/startpar
.endif	# STARTPAR_BUILDLINK3_MK

BUILDLINK_TREE+=	-startpar
