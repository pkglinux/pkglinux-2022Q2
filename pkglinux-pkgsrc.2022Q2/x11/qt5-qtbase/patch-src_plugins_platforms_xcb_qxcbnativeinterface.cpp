$NetBSD$

--- src/plugins/platforms/xcb/qxcbnativeinterface.cpp.orig	2021-08-06 05:47:06.000000000 +0000
+++ src/plugins/platforms/xcb/qxcbnativeinterface.cpp
@@ -362,27 +362,27 @@ void *QXcbNativeInterface::getTimestamp(
 void *QXcbNativeInterface::startupId()
 {
     QXcbIntegration* integration = QXcbIntegration::instance();
-    QXcbConnection *defaultConnection = integration->defaultConnection();
-    if (defaultConnection)
-        return reinterpret_cast<void *>(const_cast<char *>(defaultConnection->startupId().constData()));
+    QXcbConnection *connection = integration->connection();
+    if (connection)
+        return reinterpret_cast<void *>(const_cast<char *>(connection->startupId().constData()));
     return nullptr;
 }
 
 void *QXcbNativeInterface::x11Screen()
 {
     QXcbIntegration *integration = QXcbIntegration::instance();
-    QXcbConnection *defaultConnection = integration->defaultConnection();
-    if (defaultConnection)
-        return reinterpret_cast<void *>(defaultConnection->primaryScreenNumber());
+    QXcbConnection *connection = integration->connection();
+    if (connection)
+        return reinterpret_cast<void *>(connection->primaryScreenNumber());
     return nullptr;
 }
 
 void *QXcbNativeInterface::rootWindow()
 {
     QXcbIntegration *integration = QXcbIntegration::instance();
-    QXcbConnection *defaultConnection = integration->defaultConnection();
-    if (defaultConnection)
-        return reinterpret_cast<void *>(defaultConnection->rootWindow());
+    QXcbConnection *connection = integration->connection();
+    if (connection)
+        return reinterpret_cast<void *>(connection->rootWindow());
     return nullptr;
 }
 
@@ -390,9 +390,9 @@ void *QXcbNativeInterface::display()
 {
 #if QT_CONFIG(xcb_xlib)
     QXcbIntegration *integration = QXcbIntegration::instance();
-    QXcbConnection *defaultConnection = integration->defaultConnection();
-    if (defaultConnection)
-        return defaultConnection->xlib_display();
+    QXcbConnection *connection = integration->connection();
+    if (connection)
+        return connection->xlib_display();
 #endif
     return nullptr;
 }
@@ -400,17 +400,17 @@ void *QXcbNativeInterface::display()
 void *QXcbNativeInterface::connection()
 {
     QXcbIntegration *integration = QXcbIntegration::instance();
-    return integration->defaultConnection()->xcb_connection();
+    return integration->connection()->xcb_connection();
 }
 
 void *QXcbNativeInterface::atspiBus()
 {
     QXcbIntegration *integration = static_cast<QXcbIntegration *>(QGuiApplicationPrivate::platformIntegration());
-    QXcbConnection *defaultConnection = integration->defaultConnection();
-    if (defaultConnection) {
-        auto atspiBusAtom = defaultConnection->atom(QXcbAtom::AT_SPI_BUS);
-        auto reply = Q_XCB_REPLY(xcb_get_property, defaultConnection->xcb_connection(),
-                                     false, defaultConnection->rootWindow(),
+    QXcbConnection *connection = integration->connection();
+    if (connection) {
+        auto atspiBusAtom = connection->atom(QXcbAtom::AT_SPI_BUS);
+        auto reply = Q_XCB_REPLY(xcb_get_property, connection->xcb_connection(),
+                                     false, connection->rootWindow(),
                                      atspiBusAtom, XCB_ATOM_STRING, 0, 128);
         if (!reply)
             return nullptr;
@@ -440,29 +440,29 @@ void QXcbNativeInterface::setAppUserTime
 qint32 QXcbNativeInterface::generatePeekerId()
 {
     QXcbIntegration *integration = QXcbIntegration::instance();
-    return integration->defaultConnection()->eventQueue()->generatePeekerId();
+    return integration->connection()->eventQueue()->generatePeekerId();
 }
 
 bool QXcbNativeInterface::removePeekerId(qint32 peekerId)
 {
     QXcbIntegration *integration = QXcbIntegration::instance();
-    return integration->defaultConnection()->eventQueue()->removePeekerId(peekerId);
+    return integration->connection()->eventQueue()->removePeekerId(peekerId);
 }
 
 bool QXcbNativeInterface::peekEventQueue(QXcbEventQueue::PeekerCallback peeker, void *peekerData,
                                          QXcbEventQueue::PeekOptions option, qint32 peekerId)
 {
     QXcbIntegration *integration = QXcbIntegration::instance();
-    return integration->defaultConnection()->eventQueue()->peekEventQueue(peeker, peekerData, option, peekerId);
+    return integration->connection()->eventQueue()->peekEventQueue(peeker, peekerData, option, peekerId);
 }
 
 void QXcbNativeInterface::setStartupId(const char *data)
 {
     QByteArray startupId(data);
     QXcbIntegration *integration = QXcbIntegration::instance();
-    QXcbConnection *defaultConnection = integration->defaultConnection();
-    if (defaultConnection)
-        defaultConnection->setStartupId(startupId);
+    QXcbConnection *connection = integration->connection();
+    if (connection)
+        connection->setStartupId(startupId);
 }
 
 QXcbScreen *QXcbNativeInterface::qPlatformScreenForWindow(QWindow *window)
@@ -671,7 +671,7 @@ QString QXcbNativeInterface::dumpConnect
 
 QString QXcbNativeInterface::dumpNativeWindows(WId root) const
 {
-    return dumpConnectionNativeWindows(QXcbIntegration::instance()->defaultConnection(), root);
+    return dumpConnectionNativeWindows(QXcbIntegration::instance()->connection(), root);
 }
 
 QT_END_NAMESPACE
