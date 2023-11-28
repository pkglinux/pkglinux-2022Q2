# $NetBSD: buildlink3.mk,v 1.15 2021/10/09 15:35:11 nia Exp $
#

BUILDLINK_TREE+=	libdlna

.if !defined(LIBDLNA_BUILDLINK3_MK)
LIBDLNA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libdlna+=	libdlna>=0.2.3
BUILDLINK_ABI_DEPENDS.libdlna+=	libdlna>=0.2.4nb11
BUILDLINK_PKGSRCDIR.libdlna?=	../../net/libdlna

.include "../../multimedia/ffmpeg4/buildlink3.mk"
.endif	# LIBDLNA_BUILDLINK3_MK

BUILDLINK_TREE+=	-libdlna
