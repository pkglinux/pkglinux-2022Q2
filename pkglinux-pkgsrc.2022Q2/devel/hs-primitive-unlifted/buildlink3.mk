# $NetBSD: buildlink3.mk,v 1.2 2022/02/26 03:58:05 pho Exp $

BUILDLINK_TREE+=	hs-primitive-unlifted

.if !defined(HS_PRIMITIVE_UNLIFTED_BUILDLINK3_MK)
HS_PRIMITIVE_UNLIFTED_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-primitive-unlifted+=	hs-primitive-unlifted>=0.1.3
BUILDLINK_ABI_DEPENDS.hs-primitive-unlifted+=	hs-primitive-unlifted>=0.1.3.1nb1
BUILDLINK_PKGSRCDIR.hs-primitive-unlifted?=	../../devel/hs-primitive-unlifted

.include "../../devel/hs-primitive/buildlink3.mk"
.include "../../textproc/hs-text-short/buildlink3.mk"
.endif	# HS_PRIMITIVE_UNLIFTED_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-primitive-unlifted
