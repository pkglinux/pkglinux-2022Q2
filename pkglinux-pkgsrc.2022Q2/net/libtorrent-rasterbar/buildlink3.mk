# $NetBSD: buildlink3.mk,v 1.10 2022/04/19 16:34:41 adam Exp $

BUILDLINK_TREE+=	libtorrent-rasterbar

.if !defined(LIBTORRENT_RASTERBAR_BUILDLINK3_MK)
LIBTORRENT_RASTERBAR_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libtorrent-rasterbar+=	libtorrent-rasterbar>=2.0.6
BUILDLINK_ABI_DEPENDS.libtorrent-rasterbar+=	libtorrent-rasterbar>=2.0.6
BUILDLINK_PKGSRCDIR.libtorrent-rasterbar?=	../../net/libtorrent-rasterbar

.include "../../devel/boost-libs/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.endif	# LIBTORRENT_RASTERBAR_BUILDLINK3_MK

BUILDLINK_TREE+=	-libtorrent-rasterbar
