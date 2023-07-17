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
# XXX	BUILDLINK_DEPMETHOD.libsemanage?=	build

BUILDLINK_TREE+=	libsemanage

.if !defined(LIBSEMANAGE_BUILDLINK3_MK)
LIBSEMANAGE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libsemanage+=	libsemanage>=3.5
BUILDLINK_PKGSRCDIR.libsemanage?=	../../linux/selinux-libsemanage
.endif	# LIBSEMANAGE_BUILDLINK3_MK

BUILDLINK_TREE+=	-libsemanage
