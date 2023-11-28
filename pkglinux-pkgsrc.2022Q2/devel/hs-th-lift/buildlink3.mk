# $NetBSD: buildlink3.mk,v 1.5 2022/02/26 03:58:09 pho Exp $

BUILDLINK_TREE+=	hs-th-lift

.if !defined(HS_TH_LIFT_BUILDLINK3_MK)
HS_TH_LIFT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-th-lift+=	hs-th-lift>=0.8.2
BUILDLINK_ABI_DEPENDS.hs-th-lift+=	hs-th-lift>=0.8.2nb4
BUILDLINK_PKGSRCDIR.hs-th-lift?=	../../devel/hs-th-lift

.include "../../devel/hs-th-abstraction/buildlink3.mk"
.endif	# HS_TH_LIFT_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-th-lift
