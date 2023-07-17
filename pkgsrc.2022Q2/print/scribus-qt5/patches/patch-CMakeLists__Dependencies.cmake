$NetBSD: patch-CMakeLists__Dependencies.cmake,v 1.1 2020/06/14 07:35:58 ryoon Exp $

* Find Qt5
* CMAKE_MODULE_PATH is not a single value, it can be a list.

--- CMakeLists_Dependencies.cmake.orig	2020-06-11 09:56:15.000000000 +0000
+++ CMakeLists_Dependencies.cmake
@@ -5,55 +5,55 @@
 set(QT_MIN_VERSION "5.11.0")
 set(CMAKE_PREFIX_PATH "${QT_PREFIX}/lib/cmake")
 set(CMAKE_INCLUDE_CURRENT_DIR ON)
-find_package(Qt5Core ${QT_MIN_VERSION} REQUIRED)
+find_package(Qt5 COMPONENTS Core REQUIRED)
 if(Qt5Core_FOUND)
 	message(STATUS "----- USE QT 5-----")
 else()
 	message(FATAL_ERROR "ERROR: No QT 5 found")
 endif()
-find_package(Qt5Widgets ${QT_MIN_VERSION} REQUIRED)
+find_package(Qt5 COMPONENTS Widgets REQUIRED)
 if(Qt5Widgets_FOUND)
 	message(STATUS "----- USE QT Widgets-----")
 else()
 	message(FATAL_ERROR "ERROR: No QT Widgets found")
 endif()
-find_package(Qt5Gui ${QT_MIN_VERSION} REQUIRED)
+find_package(Qt5 COMPONENTS Gui REQUIRED)
 if(Qt5Gui_FOUND)
 	message(STATUS "----- USE Qt5Gui -----")
 else()
 	message(FATAL_ERROR "ERROR: Qt5Gui found")
 endif()
-find_package(Qt5Xml ${QT_MIN_VERSION} REQUIRED)
+find_package(Qt5 COMPONENTS Xml REQUIRED)
 if(Qt5Xml_FOUND)
 	message(STATUS "----- USE QT 5 XML -----")
 else()
 	message(FATAL_ERROR "ERROR: No QT 5 XML found")
 endif()
-find_package(Qt5Network ${QT_MIN_VERSION} REQUIRED)
+find_package(Qt5 COMPONENTS Network REQUIRED)
 if(Qt5Network_FOUND)
 	message(STATUS "----- USE Qt5Network -----")
 else()
 	message(FATAL_ERROR "ERROR: No Qt5Network found")
 endif()
-find_package(Qt5OpenGL ${QT_MIN_VERSION} REQUIRED)
+find_package(Qt5 COMPONENTS OpenGL REQUIRED)
 if(Qt5OpenGL_FOUND)
 	message(STATUS "----- USE Qt5OpenGL -----")
 else()
 	message(FATAL_ERROR "ERROR: No Qt5OpenGL found")
 endif()
-find_package(Qt5LinguistTools ${QT_MIN_VERSION} REQUIRED)
+find_package(Qt5 COMPONENTS LinguistTools REQUIRED)
 if(Qt5LinguistTools_FOUND)
 	message(STATUS "----- USE Qt5LinguistTools -----")
 else()
 	message(FATAL_ERROR "ERROR: No Qt5LinguistTools found")
 endif()
-#find_package(Qt5Quick ${QT_MIN_VERSION} REQUIRED)
+#find_package(Qt5 COMPONENTS Quick REQUIRED)
 #if(Qt5Quick_FOUND)
 #    message(STATUS "----- USE Qt5Quick -----")
 #else()
 #    message(FATAL_ERROR "ERROR: No Qt5Quick found")
 #endif()
-find_package(Qt5PrintSupport ${QT_MIN_VERSION} REQUIRED)
+find_package(Qt5 COMPONENTS PrintSupport REQUIRED)
 if(Qt5PrintSupport_FOUND)
 	message(STATUS "----- USE Qt5PrintSupport -----")
 else()
@@ -91,8 +91,8 @@ if (WIN32)
 	# On win32 we can use Qt's zlib and libpng, so we use some
 	# custom cmake includes. This permits us to honour the
 	# USE_QT_ZLIB_PNGLIB flag if passed.
-	set(PNG_DIR ${CMAKE_MODULE_PATH})
-	set(ZLIB_DIR ${CMAKE_MODULE_PATH})
+	set(PNG_DIR "${CMAKE_SOURCE_DIR}/cmake/modules")
+	set(ZLIB_DIR "${CMAKE_SOURCE_DIR}/cmake/modules")
 endif()
 find_package(ZLIB REQUIRED)
 if (ZLIB_FOUND)
@@ -188,7 +188,7 @@ if (RENDER_LIB)
 	endif()
 endif()
 
-set(CAIRO_DIR ${CMAKE_MODULE_PATH})
+set(CAIRO_DIR "${CMAKE_SOURCE_DIR}/cmake/modules")
 find_package(CAIRO REQUIRED)
 if(CAIRO_FOUND)
 	message("CAIRO Library Found OK")
@@ -220,7 +220,7 @@ endif()
 #>>LibXML2
 
 #<<LittleCMS
-set(LCMS_DIR ${CMAKE_MODULE_PATH})
+set(LCMS_DIR "${CMAKE_SOURCE_DIR}/cmake/modules")
 find_package(LCMS2 REQUIRED)
 if(LCMS2_FOUND)
 	set(HAVE_LCMS2 ON)
@@ -283,7 +283,7 @@ endif()
 
 #<< GraphicsMagick for image import
 if (WANT_GRAPHICSMAGICK)
-	set(GMAGICK_DIR ${CMAKE_MODULE_PATH})
+	set(GMAGICK_DIR "${CMAKE_SOURCE_DIR}/cmake/modules")
 	pkg_check_modules(GMAGICK GraphicsMagick)
 	# find_package(GMAGICK)
 	if(GMAGICK_FOUND)