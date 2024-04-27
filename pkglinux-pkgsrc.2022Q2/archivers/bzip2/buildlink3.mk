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
# XXX	BUILDLINK_DEPMETHOD.bzip2?=	build

BUILDLINK_TREE+=	bzip2

.if !defined(BZIP2_BUILDLINK3_MK)
BZIP2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.bzip2+=	bzip2>=1.0.8
BUILDLINK_PKGSRCDIR.bzip2?=	../../archivers/bzip2
.endif	# BZIP2_BUILDLINK3_MK

BUILDLINK_TREE+=	-bzip2
