# $NetBSD: buildlink3.mk,v 1.9 2022/02/26 03:58:11 pho Exp $

BUILDLINK_TREE+=	hs-uuid-types

.if !defined(HS_UUID_TYPES_BUILDLINK3_MK)
HS_UUID_TYPES_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-uuid-types+=	hs-uuid-types>=1.0.5
BUILDLINK_ABI_DEPENDS.hs-uuid-types+=	hs-uuid-types>=1.0.5nb2
BUILDLINK_PKGSRCDIR.hs-uuid-types?=	../../devel/hs-uuid-types

.include "../../devel/hs-hashable/buildlink3.mk"
.include "../../devel/hs-random/buildlink3.mk"
.endif	# HS_UUID_TYPES_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-uuid-types
