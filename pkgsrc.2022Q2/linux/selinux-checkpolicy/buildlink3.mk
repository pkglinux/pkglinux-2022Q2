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
# XXX	BUILDLINK_DEPMETHOD.checkpolicy?=	build

BUILDLINK_TREE+=	checkpolicy

.if !defined(CHECKPOLICY_BUILDLINK3_MK)
CHECKPOLICY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.checkpolicy+=	checkpolicy>=3.5
BUILDLINK_PKGSRCDIR.checkpolicy?=	../../linux/selinux-checkpolicy
.endif	# CHECKPOLICY_BUILDLINK3_MK

BUILDLINK_TREE+=	-checkpolicy
