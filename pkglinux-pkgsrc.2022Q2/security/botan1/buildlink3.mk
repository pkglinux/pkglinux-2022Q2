# $NetBSD: buildlink3.mk,v 1.2 2022/04/01 08:04:55 wiz Exp $

BUILDLINK_TREE+=	botan

.if !defined(BOTAN_BUILDLINK3_MK)
BOTAN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.botan+=	botan>=1.10.12<1.11
BUILDLINK_PKGSRCDIR.botan?=	../../security/botan1
.endif # BOTAN_BUILDLINK3_MK

BUILDLINK_TREE+=	-botan
