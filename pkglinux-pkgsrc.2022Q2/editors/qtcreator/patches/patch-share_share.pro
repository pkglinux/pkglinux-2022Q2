$NetBSD$

--- share/share.pro.orig	2021-11-03 11:13:10.000000000 +0000
+++ share/share.pro
@@ -3,7 +3,6 @@ SUBDIRS = qtcreator/static.pro
 
 include(../qtcreator.pri)
 
-linux {
     appdata = $$cat($$PWD/metainfo/org.qt-project.qtcreator.appdata.xml.cmakein, blob)
     appdata = $$replace(appdata, \\$\\{IDE_VERSION_DISPLAY\\}, $$QTCREATOR_DISPLAY_VERSION)
     appdata = $$replace(appdata, \\$\\{DATE_ATTRIBUTE\\}, "")
@@ -16,7 +15,6 @@ linux {
     desktop.path = $$QTC_PREFIX/share/applications/
 
     INSTALLS += appstream desktop
-}
 
 defineTest(hasLupdate) {
     cmd = $$eval(QT_TOOL.lupdate.binary)
