$NetBSD$

--- src/plugins/platforms/xcb/qxcbintegration.cpp.orig	2021-08-06 05:47:06.000000000 +0000
+++ src/plugins/platforms/xcb/qxcbintegration.cpp
@@ -134,6 +134,7 @@ QXcbIntegration::QXcbIntegration(const Q
     , m_canGrab(true)
     , m_defaultVisualId(UINT_MAX)
 {
+    Q_UNUSED(parameters);
     m_instance = this;
     qApp->setAttribute(Qt::AA_CompressHighFrequencyEvents, true);
 
@@ -191,40 +192,27 @@ QXcbIntegration::QXcbIntegration(const Q
     if (canNotGrabEnv)
         m_canGrab = false;
 
-    const int numParameters = parameters.size();
-    m_connections.reserve(1 + numParameters / 2);
-
-    auto conn = new QXcbConnection(m_nativeInterface.data(), m_canGrab, m_defaultVisualId, displayName);
-    if (!conn->isConnected()) {
-        delete conn;
+    m_connection = new QXcbConnection(m_nativeInterface.data(), m_canGrab, m_defaultVisualId, displayName);
+    if (!m_connection->isConnected()) {
+        delete m_connection;
+        m_connection = nullptr;
         return;
     }
-    m_connections << conn;
-
-    // ### Qt 6 (QTBUG-52408) remove this multi-connection code path
-    for (int i = 0; i < numParameters - 1; i += 2) {
-        qCDebug(lcQpaXcb) << "connecting to additional display: " << parameters.at(i) << parameters.at(i+1);
-        QString display = parameters.at(i) + QLatin1Char(':') + parameters.at(i+1);
-        conn = new QXcbConnection(m_nativeInterface.data(), m_canGrab, m_defaultVisualId, display.toLatin1().constData());
-        if (conn->isConnected())
-            m_connections << conn;
-        else
-            delete conn;
-    }
 
     m_fontDatabase.reset(new QGenericUnixFontDatabase());
 
 #if QT_CONFIG(xcb_native_painting)
     if (nativePaintingEnabled()) {
         qCDebug(lcQpaXcb, "QXCB USING NATIVE PAINTING");
-        qt_xcb_native_x11_info_init(defaultConnection());
+        qt_xcb_native_x11_info_init(connection());
     }
 #endif
 }
 
 QXcbIntegration::~QXcbIntegration()
 {
-    qDeleteAll(m_connections);
+    delete m_connection;
+    m_connection = nullptr;
     m_instance = nullptr;
 }
 
@@ -244,7 +232,7 @@ QPlatformWindow *QXcbIntegration::create
     const bool isTrayIconWindow = QXcbWindow::isTrayIconWindow(window);;
     if (window->type() != Qt::Desktop && !isTrayIconWindow) {
         if (window->supportsOpenGL()) {
-            glIntegration = defaultConnection()->glIntegration();
+            glIntegration = connection()->glIntegration();
             if (glIntegration) {
                 QXcbWindow *xcbWindow = glIntegration->createWindow(window);
                 xcbWindow->create();
@@ -315,7 +303,7 @@ bool QXcbIntegration::hasCapability(QPla
     case OpenGL:
     case ThreadedOpenGL:
     {
-        if (const auto *integration = defaultConnection()->glIntegration())
+        if (const auto *integration = connection()->glIntegration())
             return cap != ThreadedOpenGL || integration->supportsThreadedOpenGL();
         return false;
     }
@@ -330,8 +318,8 @@ bool QXcbIntegration::hasCapability(QPla
 
     case SwitchableWidgetComposition:
     {
-        return m_connections.at(0)->glIntegration()
-            && m_connections.at(0)->glIntegration()->supportsSwitchableWidgetComposition();
+        return m_connection->glIntegration()
+            && m_connection->glIntegration()->supportsSwitchableWidgetComposition();
     }
 
     default: return QPlatformIntegration::hasCapability(cap);
@@ -340,7 +328,7 @@ bool QXcbIntegration::hasCapability(QPla
 
 QAbstractEventDispatcher *QXcbIntegration::createEventDispatcher() const
 {
-    return QXcbEventDispatcher::createEventDispatcher(defaultConnection());
+    return QXcbEventDispatcher::createEventDispatcher(connection());
 }
 
 void QXcbIntegration::initialize()
@@ -355,7 +343,7 @@ void QXcbIntegration::initialize()
     if (!m_inputContext && icStr != defaultInputContext && icStr != QLatin1String("none"))
         m_inputContext.reset(QPlatformInputContextFactory::create(defaultInputContext));
 
-    defaultConnection()->keyboard()->initialize();
+    connection()->keyboard()->initialize();
 }
 
 void QXcbIntegration::moveToScreen(QWindow *window, int screen)
@@ -377,7 +365,7 @@ QPlatformNativeInterface * QXcbIntegrati
 #ifndef QT_NO_CLIPBOARD
 QPlatformClipboard *QXcbIntegration::clipboard() const
 {
-    return m_connections.at(0)->clipboard();
+    return m_connection->clipboard();
 }
 #endif
 
@@ -393,7 +381,7 @@ QPlatformDrag *QXcbIntegration::drag() c
         return simpleDrag;
     }
 
-    return m_connections.at(0)->drag();
+    return m_connection->drag();
 }
 #endif
 
@@ -424,12 +412,12 @@ QPlatformServices *QXcbIntegration::serv
 
 Qt::KeyboardModifiers QXcbIntegration::queryKeyboardModifiers() const
 {
-    return m_connections.at(0)->queryKeyboardModifiers();
+    return m_connection->queryKeyboardModifiers();
 }
 
 QList<int> QXcbIntegration::possibleKeys(const QKeyEvent *e) const
 {
-    return m_connections.at(0)->keyboard()->possibleKeys(e);
+    return m_connection->keyboard()->possibleKeys(e);
 }
 
 QStringList QXcbIntegration::themeNames() const
@@ -460,7 +448,7 @@ QVariant QXcbIntegration::styleHint(QPla
         // The default (in QPlatformTheme::defaultThemeHint) is 10 pixels, but
         // on a high-resolution screen it makes sense to increase it.
         qreal dpi = 100.0;
-        if (const QXcbScreen *screen = defaultConnection()->primaryScreen()) {
+        if (const QXcbScreen *screen = connection()->primaryScreen()) {
             if (screen->logicalDpi().first > dpi)
                 dpi = screen->logicalDpi().first;
             if (screen->logicalDpi().second > dpi)
@@ -531,9 +519,7 @@ QPlatformSessionManager *QXcbIntegration
 
 void QXcbIntegration::sync()
 {
-    for (int i = 0; i < m_connections.size(); i++) {
-        m_connections.at(i)->sync();
-    }
+    m_connection->sync();
 }
 
 // For QApplication::beep()
