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
# XXX	BUILDLINK_DEPMETHOD.efivar?=	build

BUILDLINK_TREE+=	efivar

.if !defined(EFIVAR_BUILDLINK3_MK)
EFIVAR_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.efivar+=	efivar>=37
BUILDLINK_PKGSRCDIR.efivar?=	../../linux/efivar
.endif	# EFIVAR_BUILDLINK3_MK

BUILDLINK_TREE+=	-efivar
