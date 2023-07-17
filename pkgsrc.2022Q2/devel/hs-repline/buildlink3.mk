# $NetBSD: buildlink3.mk,v 1.2 2022/02/26 03:58:06 pho Exp $

BUILDLINK_TREE+=	hs-repline

.if !defined(HS_REPLINE_BUILDLINK3_MK)
HS_REPLINE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-repline+=	hs-repline>=0.4.0
BUILDLINK_ABI_DEPENDS.hs-repline+=	hs-repline>=0.4.0.0nb1
BUILDLINK_PKGSRCDIR.hs-repline?=	../../devel/hs-repline
.endif	# HS_REPLINE_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-repline
