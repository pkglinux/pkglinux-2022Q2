# $NetBSD: buildlink3.mk,v 1.2 2022/02/26 03:58:20 pho Exp $

BUILDLINK_TREE+=	hs-cryptohash-md5

.if !defined(HS_CRYPTOHASH_MD5_BUILDLINK3_MK)
HS_CRYPTOHASH_MD5_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-cryptohash-md5+=	hs-cryptohash-md5>=0.11.101
BUILDLINK_ABI_DEPENDS.hs-cryptohash-md5+=	hs-cryptohash-md5>=0.11.101.0nb1
BUILDLINK_PKGSRCDIR.hs-cryptohash-md5?=		../../security/hs-cryptohash-md5
.endif	# HS_CRYPTOHASH_MD5_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-cryptohash-md5
