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
# XXX	BUILDLINK_DEPMETHOD.liblzf?=	build

BUILDLINK_TREE+=	liblzf

.if !defined(LIBLZF_BUILDLINK3_MK)
LIBLZF_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.liblzf+=	liblzf>=2015
BUILDLINK_PKGSRCDIR.liblzf?=	../../linux/liblzf-2015
.endif	# LIBLZF_BUILDLINK3_MK

BUILDLINK_TREE+=	-liblzf
