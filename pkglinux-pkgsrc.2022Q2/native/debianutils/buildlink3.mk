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
# XXX	BUILDLINK_DEPMETHOD.debianutils?=	build

BUILDLINK_TREE+=	debianutils

.if !defined(DEBIANUTILS_BUILDLINK3_MK)
DEBIANUTILS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.debianutils+=	debianutils>=5.14
BUILDLINK_PKGSRCDIR.debianutils?=	../../native/debianutils
.endif	# DEBIANUTILS_BUILDLINK3_MK

BUILDLINK_TREE+=	-debianutils
