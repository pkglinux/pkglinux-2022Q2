$NetBSD$

--- src/VBox/Frontends/VirtualBox/src/widgets/UIMiniToolBar.cpp.orig	2023-12-24 18:16:39.060502234 +0000
+++ src/VBox/Frontends/VirtualBox/src/widgets/UIMiniToolBar.cpp
@@ -28,6 +28,7 @@
 # include <QToolButton>
 # include <QStateMachine>
 # include <QPainter>
+#include <QPainterPath>
 # include <QWindow>
 # ifdef VBOX_WS_X11
 #  include <QWindowStateChangeEvent>
