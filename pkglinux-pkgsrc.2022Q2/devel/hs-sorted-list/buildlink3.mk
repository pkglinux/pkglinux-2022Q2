# $NetBSD: buildlink3.mk,v 1.2 2022/02/26 03:58:07 pho Exp $

BUILDLINK_TREE+=	hs-sorted-list

.if !defined(HS_SORTED_LIST_BUILDLINK3_MK)
HS_SORTED_LIST_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-sorted-list+=	hs-sorted-list>=0.2.1
BUILDLINK_ABI_DEPENDS.hs-sorted-list+=	hs-sorted-list>=0.2.1.0nb1
BUILDLINK_PKGSRCDIR.hs-sorted-list?=	../../devel/hs-sorted-list
.endif	# HS_SORTED_LIST_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-sorted-list
