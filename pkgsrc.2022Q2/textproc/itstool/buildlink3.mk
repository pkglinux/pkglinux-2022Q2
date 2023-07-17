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
# XXX	BUILDLINK_DEPMETHOD.itstool?=	build

BUILDLINK_TREE+=	itstool

.if !defined(ITSTOOL_BUILDLINK3_MK)
ITSTOOL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.itstool+=	itstool>=2.0.7
BUILDLINK_PKGSRCDIR.itstool?=	../../textproc/itstool
.endif	# ITSTOOL_BUILDLINK3_MK

BUILDLINK_TREE+=	-itstool
