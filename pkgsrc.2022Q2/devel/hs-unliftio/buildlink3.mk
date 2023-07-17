# $NetBSD: buildlink3.mk,v 1.3 2022/02/26 03:58:11 pho Exp $

BUILDLINK_TREE+=	hs-unliftio

.if !defined(HS_UNLIFTIO_BUILDLINK3_MK)
HS_UNLIFTIO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-unliftio+=	hs-unliftio>=0.2.21
BUILDLINK_ABI_DEPENDS.hs-unliftio+=	hs-unliftio>=0.2.21.0nb2
BUILDLINK_PKGSRCDIR.hs-unliftio?=	../../devel/hs-unliftio

.include "../../devel/hs-async/buildlink3.mk"
.include "../../devel/hs-unliftio-core/buildlink3.mk"
.endif	# HS_UNLIFTIO_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-unliftio
