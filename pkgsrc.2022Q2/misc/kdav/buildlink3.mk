# $NetBSD: buildlink3.mk,v 1.18 2022/04/18 19:09:58 adam Exp $

BUILDLINK_TREE+=	kdav

.if !defined(KDAV_BUILDLINK3_MK)
KDAV_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.kdav+=	kdav>=5.80.0
BUILDLINK_ABI_DEPENDS.kdav?=	kdav>=5.80.0nb6
BUILDLINK_PKGSRCDIR.kdav?=	../../misc/kdav

.include "../../devel/kio/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.endif	# KDAV_BUILDLINK3_MK

BUILDLINK_TREE+=	-kdav
