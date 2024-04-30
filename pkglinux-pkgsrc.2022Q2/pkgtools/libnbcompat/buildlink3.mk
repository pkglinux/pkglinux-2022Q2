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
# XXX	BUILDLINK_DEPMETHOD.libnbcompat?=	build

BUILDLINK_TREE+=	libnbcompat

.if !defined(LIBNBCOMPAT_BUILDLINK3_MK)
LIBNBCOMPAT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libnbcompat+=	libnbcompat>=20200524
BUILDLINK_PKGSRCDIR.libnbcompat?=	../../pkgtools/libnbcompat
.endif	# LIBNBCOMPAT_BUILDLINK3_MK

BUILDLINK_TREE+=	-libnbcompat
