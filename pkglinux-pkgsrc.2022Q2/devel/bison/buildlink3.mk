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
# XXX	BUILDLINK_DEPMETHOD.bison?=	build

BUILDLINK_TREE+=	bison

.if !defined(BISON_BUILDLINK3_MK)
BISON_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.bison+=	bison>=3.8.2
BUILDLINK_PKGSRCDIR.bison?=	../../devel/bison
.endif	# BISON_BUILDLINK3_MK

BUILDLINK_TREE+=	-bison
