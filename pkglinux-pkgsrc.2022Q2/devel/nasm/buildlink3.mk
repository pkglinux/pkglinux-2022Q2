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
# XXX	BUILDLINK_DEPMETHOD.nasm?=	build

BUILDLINK_TREE+=	nasm

.if !defined(NASM_BUILDLINK3_MK)
NASM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.nasm+=	nasm>=2.15.05nb1
BUILDLINK_PKGSRCDIR.nasm?=	../../devel/nasm
.endif	# NASM_BUILDLINK3_MK

BUILDLINK_TREE+=	-nasm
