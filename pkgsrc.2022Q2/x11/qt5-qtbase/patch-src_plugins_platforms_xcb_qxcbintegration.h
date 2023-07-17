$NetBSD$

--- src/plugins/platforms/xcb/qxcbintegration.h.orig	2021-08-06 05:47:06.000000000 +0000
+++ src/plugins/platforms/xcb/qxcbintegration.h
@@ -102,8 +102,8 @@ public:
     QPlatformTheme *createPlatformTheme(const QString &name) const override;
     QVariant styleHint(StyleHint hint) const override;
 
-    bool hasDefaultConnection() const { return !m_connections.isEmpty(); }
-    QXcbConnection *defaultConnection() const { return m_connections.first(); }
+    bool hasConnection() const { return m_connection; }
+    QXcbConnection *connection() const { return m_connection; }
 
     QByteArray wmClass() const;
 
@@ -124,7 +124,7 @@ public:
     static QXcbIntegration *instance() { return m_instance; }
 
 private:
-    QList<QXcbConnection *> m_connections;
+    QXcbConnection * m_connection = nullptr;
 
     QScopedPointer<QPlatformFontDatabase> m_fontDatabase;
     QScopedPointer<QXcbNativeInterface> m_nativeInterface;
