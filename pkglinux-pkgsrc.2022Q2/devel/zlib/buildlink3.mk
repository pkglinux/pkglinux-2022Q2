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
# XXX	BUILDLINK_DEPMETHOD.zlib?=	build

BUILDLINK_TREE+=	zlib

.if !defined(ZLIB_BUILDLINK3_MK)
ZLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.zlib+=	zlib>=1.2.12nb1
BUILDLINK_PKGSRCDIR.zlib?=	../../devel/zlib
.endif	# ZLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-zlib
