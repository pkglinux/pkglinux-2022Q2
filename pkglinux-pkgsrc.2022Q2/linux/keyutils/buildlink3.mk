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
# XXX	BUILDLINK_DEPMETHOD.keyutils?=	build

BUILDLINK_TREE+=	keyutils

.if !defined(KEYUTILS_BUILDLINK3_MK)
KEYUTILS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.keyutils+=	keyutils>=1.6.3
BUILDLINK_PKGSRCDIR.keyutils?=	../../linux/keyutils
.endif	# KEYUTILS_BUILDLINK3_MK

BUILDLINK_TREE+=	-keyutils
