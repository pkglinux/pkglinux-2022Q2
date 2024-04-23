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
# XXX	BUILDLINK_DEPMETHOD.gmp?=	build

BUILDLINK_TREE+=	gmp

.if !defined(GMP_BUILDLINK3_MK)
GMP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gmp+=	gmp>=6.2.1nb2
BUILDLINK_PKGSRCDIR.gmp?=	../../devel/gmp
.endif	# GMP_BUILDLINK3_MK

BUILDLINK_TREE+=	-gmp
