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
# XXX	BUILDLINK_DEPMETHOD.libsepol?=	build

BUILDLINK_TREE+=	libsepol

.if !defined(LIBSEPOL_BUILDLINK3_MK)
LIBSEPOL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libsepol+=	libsepol>=3.5
BUILDLINK_PKGSRCDIR.libsepol?=	../../linux/selinux-libsepol
.endif	# LIBSEPOL_BUILDLINK3_MK

BUILDLINK_TREE+=	-libsepol
