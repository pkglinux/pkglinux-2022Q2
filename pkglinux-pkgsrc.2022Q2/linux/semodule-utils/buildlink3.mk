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
# XXX	BUILDLINK_DEPMETHOD.semodule-utils?=	build

BUILDLINK_TREE+=	semodule-utils

.if !defined(SEMODULE_UTILS_BUILDLINK3_MK)
SEMODULE_UTILS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.semodule-utils+=	semodule-utils>=3.5
BUILDLINK_PKGSRCDIR.semodule-utils?=	../../linux/semodule-utils
.endif	# SEMODULE_UTILS_BUILDLINK3_MK

BUILDLINK_TREE+=	-semodule-utils
