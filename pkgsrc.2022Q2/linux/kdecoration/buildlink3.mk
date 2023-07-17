# $NetBSD$

BUILDLINK_TREE+=	kdecoration

.if !defined(KDECORATION_BUILDLINK3_MK)
KDECORATION_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.kdecoration+=	kdecoration>=5.6.3
BUILDLINK_PKGSRCDIR.kdecoration?=	../../linux/kdecoration

.include "../../devel/ki18n/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.endif	# KDECORATION_BUILDLINK3_MK

BUILDLINK_TREE+=	-kdecoration
