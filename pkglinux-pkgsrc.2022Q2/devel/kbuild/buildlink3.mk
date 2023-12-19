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
# XXX	BUILDLINK_DEPMETHOD.kbuild?=	build

BUILDLINK_TREE+=	kbuild

.if !defined(KBUILD_BUILDLINK3_MK)
KBUILD_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.kbuild+=	kbuild>=0.1.9998.8.r3127nb4
BUILDLINK_PKGSRCDIR.kbuild?=	../../devel/kbuild
.endif	# KBUILD_BUILDLINK3_MK

BUILDLINK_TREE+=	-kbuild
