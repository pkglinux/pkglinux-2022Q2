# $NetBSD: buildlink3.mk,v 1.6 2022/02/26 03:58:27 pho Exp $

BUILDLINK_TREE+=	hs-hxt

.if !defined(HS_HXT_BUILDLINK3_MK)
HS_HXT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-hxt+=	hs-hxt>=9.3.1
BUILDLINK_ABI_DEPENDS.hs-hxt+=	hs-hxt>=9.3.1.22nb4
BUILDLINK_PKGSRCDIR.hs-hxt?=	../../textproc/hs-hxt

.include "../../textproc/hs-hxt-charproperties/buildlink3.mk"
.include "../../textproc/hs-hxt-regex-xmlschema/buildlink3.mk"
.include "../../textproc/hs-hxt-unicode/buildlink3.mk"
.include "../../net/hs-network-uri/buildlink3.mk"
.endif	# HS_HXT_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-hxt
