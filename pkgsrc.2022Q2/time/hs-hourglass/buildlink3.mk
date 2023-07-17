# $NetBSD: buildlink3.mk,v 1.5 2022/02/26 03:58:32 pho Exp $

BUILDLINK_TREE+=	hs-hourglass

.if !defined(HS_HOURGLASS_BUILDLINK3_MK)
HS_HOURGLASS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-hourglass+=	hs-hourglass>=0.2.12
BUILDLINK_ABI_DEPENDS.hs-hourglass+=	hs-hourglass>=0.2.12nb4
BUILDLINK_PKGSRCDIR.hs-hourglass?=	../../time/hs-hourglass
.endif	# HS_HOURGLASS_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-hourglass
