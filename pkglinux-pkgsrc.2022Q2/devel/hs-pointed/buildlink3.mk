# $NetBSD: buildlink3.mk,v 1.2 2022/02/26 03:58:04 pho Exp $

BUILDLINK_TREE+=	hs-pointed

.if !defined(HS_POINTED_BUILDLINK3_MK)
HS_POINTED_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-pointed+=	hs-pointed>=5.0.3
BUILDLINK_ABI_DEPENDS.hs-pointed+=	hs-pointed>=5.0.3nb1
BUILDLINK_PKGSRCDIR.hs-pointed?=	../../devel/hs-pointed

.include "../../devel/hs-data-default-class/buildlink3.mk"
.include "../../math/hs-comonad/buildlink3.mk"
.include "../../math/hs-kan-extensions/buildlink3.mk"
.include "../../math/hs-semigroupoids/buildlink3.mk"
.include "../../math/hs-semigroups/buildlink3.mk"
.include "../../devel/hs-tagged/buildlink3.mk"
.include "../../devel/hs-transformers-compat/buildlink3.mk"
.include "../../devel/hs-hashable/buildlink3.mk"
.include "../../devel/hs-unordered-containers/buildlink3.mk"
.endif	# HS_POINTED_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-pointed
