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
# XXX	BUILDLINK_DEPMETHOD.libgooglepinyin?=	build

BUILDLINK_TREE+=	libgooglepinyin

.if !defined(LIBGOOGLEPINYIN_BUILDLINK3_MK)
LIBGOOGLEPINYIN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libgooglepinyin+=	libgooglepinyin>=0.1.2
BUILDLINK_PKGSRCDIR.libgooglepinyin?=	../../linux/libgooglepinyin
.endif	# LIBGOOGLEPINYIN_BUILDLINK3_MK

BUILDLINK_TREE+=	-libgooglepinyin
