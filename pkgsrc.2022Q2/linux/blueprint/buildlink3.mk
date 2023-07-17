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
# XXX	BUILDLINK_DEPMETHOD.blueprint-compiler?=	build

BUILDLINK_TREE+=	blueprint-compiler

.if !defined(BLUEPRINT_COMPILER_BUILDLINK3_MK)
BLUEPRINT_COMPILER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.blueprint-compiler+=	blueprint-compiler>=0.2.0
BUILDLINK_PKGSRCDIR.blueprint-compiler?=	../../linux/blueprint
.endif	# BLUEPRINT_COMPILER_BUILDLINK3_MK

BUILDLINK_TREE+=	-blueprint-compiler
