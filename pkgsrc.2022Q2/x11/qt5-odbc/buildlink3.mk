# $NetBSD: buildlink3.mk,v 1.36 2021/04/21 11:40:50 adam Exp $

BUILDLINK_TREE+=	qt5-odbc

.if !defined(QT5_ODBC_BUILDLINK3_MK)
QT5_ODBC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt5-odbc+=	qt5-odbc>=5.5.1
BUILDLINK_ABI_DEPENDS.qt5-odbc+=	qt5-odbc>=5.15.2nb2
BUILDLINK_PKGSRCDIR.qt5-odbc?=		../../x11/qt5-odbc

BUILDLINK_LIBDIRS.qt5-odbc+=		qt5/plugins

.include "../../x11/qt5-qtbase/buildlink3.mk"
.endif	# QT5_ODBC_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt5-odbc
