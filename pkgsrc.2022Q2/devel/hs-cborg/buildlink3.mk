# $NetBSD: buildlink3.mk,v 1.2 2022/02/26 03:57:50 pho Exp $

BUILDLINK_TREE+=	hs-cborg

.if !defined(HS_CBORG_BUILDLINK3_MK)
HS_CBORG_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-cborg+=	hs-cborg>=0.2.6
BUILDLINK_ABI_DEPENDS.hs-cborg+=	hs-cborg>=0.2.6.0nb1
BUILDLINK_PKGSRCDIR.hs-cborg?=		../../devel/hs-cborg

.include "../../devel/hs-half/buildlink3.mk"
.include "../../devel/hs-primitive/buildlink3.mk"
.endif	# HS_CBORG_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-cborg
