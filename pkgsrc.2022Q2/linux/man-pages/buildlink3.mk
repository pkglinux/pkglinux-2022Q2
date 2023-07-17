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
# XXX	BUILDLINK_DEPMETHOD.man-pages?=	build

BUILDLINK_TREE+=	man-pages

.if !defined(MAN_PAGES_BUILDLINK3_MK)
MAN_PAGES_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.man-pages+=	man-pages>=5.05
BUILDLINK_PKGSRCDIR.man-pages?=	../../linux/man-pages
.endif	# MAN_PAGES_BUILDLINK3_MK

BUILDLINK_TREE+=	-man-pages
