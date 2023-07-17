# $NetBSD$

BUILDLINK_TREE+=	plasma-workspace

.if !defined(PLASMA_WORKSPACE_BUILDLINK3_MK)
PLASMA_WORKSPACE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.plasma-workspace+=	plasma-workspace>=5.6.3
BUILDLINK_ABI_DEPENDS.plasma-workspace?=		plasma-workspace>=5.18.5nb1
BUILDLINK_PKGSRCDIR.plasma-workspace?=		../../linux/plasma-workspace

.include "../../devel/kcmutils/buildlink3.mk"
.include "../../devel/kitemmodels/buildlink3.mk"
.include "../../net/knewstuff/buildlink3.mk"
.include "../../x11/kactivities-stats/buildlink3.mk"
.include "../../x11/kxmlgui/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.endif	# PLASMA_WORKSPACE_BUILDLINK3_MK

BUILDLINK_TREE+=	-plasma-workspace
