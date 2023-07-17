$NetBSD$

--- src/main.cpp.orig	2021-02-24 23:11:52.000000000 +0000
+++ src/main.cpp
@@ -55,8 +55,6 @@ extern "C" Q_DECL_EXPORT int kdemain(int
     /**
      * enable high dpi support
      */
-    QCoreApplication::setAttribute(Qt::AA_UseHighDpiPixmaps, true);
-    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling, true);
 
     QApplication app(argc, argv);
     app.setWindowIcon(QIcon::fromTheme(QStringLiteral("system-file-manager"), app.windowIcon()));
