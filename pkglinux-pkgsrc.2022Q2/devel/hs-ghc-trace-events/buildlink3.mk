# $NetBSD: buildlink3.mk,v 1.2 2022/02/26 03:57:56 pho Exp $

BUILDLINK_TREE+=	hs-ghc-trace-events

.if !defined(HS_GHC_TRACE_EVENTS_BUILDLINK3_MK)
HS_GHC_TRACE_EVENTS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-ghc-trace-events+=	hs-ghc-trace-events>=0.1.2
BUILDLINK_ABI_DEPENDS.hs-ghc-trace-events+=	hs-ghc-trace-events>=0.1.2.4nb1
BUILDLINK_PKGSRCDIR.hs-ghc-trace-events?=	../../devel/hs-ghc-trace-events
.endif	# HS_GHC_TRACE_EVENTS_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-ghc-trace-events
