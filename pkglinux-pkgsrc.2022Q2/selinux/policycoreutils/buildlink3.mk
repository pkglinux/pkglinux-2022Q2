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
# XXX	BUILDLINK_DEPMETHOD.policycoreutils?=	build

BUILDLINK_TREE+=	policycoreutils

.if !defined(POLICYCOREUTILS_BUILDLINK3_MK)
POLICYCOREUTILS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.policycoreutils+=	policycoreutils>=3.5
BUILDLINK_PKGSRCDIR.policycoreutils?=	../../selinux/policycoreutils
.endif	# POLICYCOREUTILS_BUILDLINK3_MK

BUILDLINK_TREE+=	-policycoreutils
