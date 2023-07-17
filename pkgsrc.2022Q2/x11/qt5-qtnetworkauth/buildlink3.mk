# $NetBSD: buildlink3.mk,v 1.16 2021/04/21 11:40:51 adam Exp $

BUILDLINK_TREE+=	qt5-qtnetworkauth

.if !defined(QT5_QTNETWORKAUTH_BUILDLINK3_MK)
QT5_QTNETWORKAUTH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt5-qtnetworkauth+=	qt5-qtnetworkauth>=5.11.2
BUILDLINK_ABI_DEPENDS.qt5-qtnetworkauth+=	qt5-qtnetworkauth>=5.15.2nb2
BUILDLINK_PKGSRCDIR.qt5-qtnetworkauth?=		../../x11/qt5-qtnetworkauth

BUILDLINK_INCDIRS.qt5-qtnetworkauth+=	qt5/include
BUILDLINK_LIBDIRS.qt5-qtnetworkauth+=	qt5/lib
BUILDLINK_LIBDIRS.qt5-qtnetworkauth+=	qt5/plugins

.include "../../x11/qt5-qtbase/buildlink3.mk"
.endif	# QT5_QTNETWORKAUTH_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt5-qtnetworkauth
