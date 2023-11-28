$NetBSD: patch-texmaker.pro,v 1.2 2021/10/26 17:56:54 nros Exp $

* use pkgsrc (system) freetype2, hunspell, libjpeg and libpng

--- texmaker.pro.orig	2021-09-02 18:08:25.000000000 +0000
+++ texmaker.pro
@@ -31,6 +31,9 @@ QT += webenginewidgets
 CONFIG	+= qt hide_symbols warn_off rtti_off exceptions_off c++11 release
 CONFIG -= precompile_header
 
+CONFIG += link_pkgconfig
+PKGCONFIG = freetype2 hunspell libjpeg libpng16
+
 gcc {
     QMAKE_CXXFLAGS_WARN_ON += -Wno-unused-parameter
 }
@@ -45,15 +48,13 @@ DEFINES += \
     PNG_USE_READ_MACROS \
     V8_DEPRECATION_WARNINGS \
     NOMINMAX \
-    FT2_BUILD_LIBRARY
+    USE_SYSTEM_LIBJPEG
 
 
 INCLUDEPATH += \
     pdfium/ \
     pdfium \
     pdfium/third_party/ \
-    pdfium/third_party/freetype/include \
-    pdfium/third_party/freetype/include/freetype \
     pdfium/fpdfsdk \
     pdfium/third_party/zlib_v128
 
@@ -127,24 +128,6 @@ HEADERS	+= texmaker.h \
 	x11fontdialog.h \
 	quickbeamerdialog.h \
 	cmdparser.h \
-	hunspell/affentry.hxx \
-	hunspell/affixmgr.hxx \
-	hunspell/atypes.hxx \
-	hunspell/baseaffix.hxx \
-	hunspell/csutil.hxx \
-	hunspell/filemgr.hxx \
-	hunspell/hashmgr.hxx \
-	hunspell/htypes.hxx \
-	hunspell/hunvisapi.h \
-	hunspell/hunspell.h \
-	hunspell/hunspell.hxx \
-	hunspell/hunzip.hxx \
-	hunspell/langnum.hxx \
-	hunspell/phonet.hxx \
-	hunspell/replist.hxx \
-	hunspell/suggestmgr.hxx \
-	hunspell/utf_info.hxx \
-	hunspell/w_char.hxx \
 	singleapp/qtlocalpeer.h \
 	singleapp/qtlockedfile.h \
 	singleapp/qtsingleapplication.h \
@@ -190,20 +173,6 @@ HEADERS	+= texmaker.h \
     pdfium/third_party/base/numerics/safe_math.h \
     pdfium/third_party/base/numerics/safe_math_impl.h \
     pdfium/third_party/base/stl_util.h \
-    pdfium/third_party/libjpeg/cderror.h \
-    pdfium/third_party/libjpeg/cdjpeg.h \
-    pdfium/third_party/libjpeg/jchuff.h \
-    pdfium/third_party/libjpeg/jconfig.h \
-    pdfium/third_party/libjpeg/jdct.h \
-    pdfium/third_party/libjpeg/jdhuff.h \
-    pdfium/third_party/libjpeg/jerror.h \
-    pdfium/third_party/libjpeg/jinclude.h \
-    pdfium/third_party/libjpeg/jmemsys.h \
-    pdfium/third_party/libjpeg/jmorecfg.h \
-    pdfium/third_party/libjpeg/jpegint.h \
-    pdfium/third_party/libjpeg/jpeglib.h \
-    pdfium/third_party/libjpeg/jversion.h \
-    pdfium/third_party/libjpeg/transupp.h \
     pdfium/third_party/lcms/include/lcms2.h \
     pdfium/third_party/lcms/include/lcms2_plugin.h \
     pdfium/third_party/agg23/agg_basics.h \
@@ -216,18 +185,6 @@ HEADERS	+= texmaker.h \
     pdfium/third_party/agg23/agg_renderer_scanline.h \
     pdfium/third_party/agg23/agg_rendering_buffer.h \
     pdfium/third_party/agg23/agg_scanline_u.h \
-    pdfium/third_party/freetype/include/freetype/freetype.h \
-    pdfium/third_party/freetype/include/freetype/ftmm.h \
-    pdfium/third_party/freetype/include/freetype/ftotval.h \
-    pdfium/third_party/freetype/include/freetype/ftoutln.h \
-    pdfium/third_party/freetype/include/freetype/internal/ftobjs.h \
-    pdfium/third_party/freetype/include/freetype/internal/ftstream.h \
-    pdfium/third_party/freetype/include/freetype/internal/tttypes.h \
-    pdfium/third_party/freetype/include/freetype/tttables.h \
-    pdfium/third_party/freetype/include/ft2build.h \
-    pdfium/third_party/freetype/src/base/ftbase.h \
-    pdfium/third_party/freetype/src/cff/cffobjs.h \
-    pdfium/third_party/freetype/src/cff/cfftypes.h \
     pdfium/fpdfsdk/cba_annotiterator.h \
     pdfium/fpdfsdk/cfx_systemhandler.h \
     pdfium/fpdfsdk/cpdfsdk_annot.h \
@@ -567,16 +524,6 @@ SOURCES	+= main.cpp \
 	svnhelper.cpp \
 	x11fontdialog.cpp \
 	cmdparser.cpp \
-	hunspell/affentry.cxx \
-	hunspell/affixmgr.cxx \
-	hunspell/csutil.cxx \
-	hunspell/filemgr.cxx \
-	hunspell/hashmgr.cxx \
-	hunspell/hunspell.cxx \
-	hunspell/hunzip.cxx \
-	hunspell/phonet.cxx \
-	hunspell/replist.cxx \
-	hunspell/suggestmgr.cxx \
 	singleapp/qtlocalpeer.cpp \
 	singleapp/qtlockedfile.cpp \
 	singleapp/qtsingleapplication.cpp \
@@ -616,46 +563,6 @@ SOURCES	+= main.cpp \
     pdfium/third_party/bigint/BigIntegerUtils.cc \
     pdfium/third_party/bigint/BigUnsigned.cc \
     pdfium/third_party/bigint/BigUnsignedInABase.cc \
-    pdfium/third_party/libjpeg/fpdfapi_jcapimin.c \
-    pdfium/third_party/libjpeg/fpdfapi_jcapistd.c \
-    pdfium/third_party/libjpeg/fpdfapi_jccoefct.c \
-    pdfium/third_party/libjpeg/fpdfapi_jccolor.c \
-    pdfium/third_party/libjpeg/fpdfapi_jcdctmgr.c \
-    pdfium/third_party/libjpeg/fpdfapi_jchuff.c \
-    pdfium/third_party/libjpeg/fpdfapi_jcinit.c \
-    pdfium/third_party/libjpeg/fpdfapi_jcmainct.c \
-    pdfium/third_party/libjpeg/fpdfapi_jcmarker.c \
-    pdfium/third_party/libjpeg/fpdfapi_jcmaster.c \
-    pdfium/third_party/libjpeg/fpdfapi_jcomapi.c \
-    pdfium/third_party/libjpeg/fpdfapi_jcparam.c \
-    pdfium/third_party/libjpeg/fpdfapi_jcphuff.c \
-    pdfium/third_party/libjpeg/fpdfapi_jcprepct.c \
-    pdfium/third_party/libjpeg/fpdfapi_jcsample.c \
-    pdfium/third_party/libjpeg/fpdfapi_jctrans.c \
-    pdfium/third_party/libjpeg/fpdfapi_jdapimin.c \
-    pdfium/third_party/libjpeg/fpdfapi_jdapistd.c \
-    pdfium/third_party/libjpeg/fpdfapi_jdcoefct.c \
-    pdfium/third_party/libjpeg/fpdfapi_jdcolor.c \
-    pdfium/third_party/libjpeg/fpdfapi_jddctmgr.c \
-    pdfium/third_party/libjpeg/fpdfapi_jdhuff.c \
-    pdfium/third_party/libjpeg/fpdfapi_jdinput.c \
-    pdfium/third_party/libjpeg/fpdfapi_jdmainct.c \
-    pdfium/third_party/libjpeg/fpdfapi_jdmarker.c \
-    pdfium/third_party/libjpeg/fpdfapi_jdmaster.c \
-    pdfium/third_party/libjpeg/fpdfapi_jdmerge.c \
-    pdfium/third_party/libjpeg/fpdfapi_jdphuff.c \
-    pdfium/third_party/libjpeg/fpdfapi_jdpostct.c \
-    pdfium/third_party/libjpeg/fpdfapi_jdsample.c \
-    pdfium/third_party/libjpeg/fpdfapi_jdtrans.c \
-    pdfium/third_party/libjpeg/fpdfapi_jerror.c \
-    pdfium/third_party/libjpeg/fpdfapi_jfdctfst.c \
-    pdfium/third_party/libjpeg/fpdfapi_jfdctint.c \
-    pdfium/third_party/libjpeg/fpdfapi_jidctfst.c \
-    pdfium/third_party/libjpeg/fpdfapi_jidctint.c \
-    pdfium/third_party/libjpeg/fpdfapi_jidctred.c \
-    pdfium/third_party/libjpeg/fpdfapi_jmemmgr.c \
-    pdfium/third_party/libjpeg/fpdfapi_jmemnobs.c \
-    pdfium/third_party/libjpeg/fpdfapi_jutils.c \
     pdfium/third_party/lcms/src/cmsalpha.c \
     pdfium/third_party/lcms/src/cmscam02.c \
     pdfium/third_party/lcms/src/cmscgats.c \
@@ -721,23 +628,6 @@ SOURCES	+= main.cpp \
     pdfium/third_party/agg23/agg_rasterizer_scanline_aa.cpp \
     pdfium/third_party/agg23/agg_vcgen_dash.cpp \
     pdfium/third_party/agg23/agg_vcgen_stroke.cpp \
-    pdfium/third_party/freetype/src/base/ftbase.c \
-    pdfium/third_party/freetype/src/base/ftbitmap.c \
-    pdfium/third_party/freetype/src/base/ftglyph.c \
-    pdfium/third_party/freetype/src/base/ftinit.c \
-    pdfium/third_party/freetype/src/base/ftlcdfil.c \
-    pdfium/third_party/freetype/src/base/ftmm.c \
-    pdfium/third_party/freetype/src/base/ftsystem.c \
-    pdfium/third_party/freetype/src/cff/cff.c \
-    pdfium/third_party/freetype/src/cid/type1cid.c \
-    pdfium/third_party/freetype/src/psaux/psaux.c \
-    pdfium/third_party/freetype/src/pshinter/pshinter.c \
-    pdfium/third_party/freetype/src/psnames/psmodule.c \
-    pdfium/third_party/freetype/src/raster/raster.c \
-    pdfium/third_party/freetype/src/sfnt/sfnt.c \
-    pdfium/third_party/freetype/src/smooth/smooth.c \
-    pdfium/third_party/freetype/src/truetype/truetype.c \
-    pdfium/third_party/freetype/src/type1/type1.c \
     pdfium/fpdfsdk/cba_annotiterator.cpp \
     pdfium/fpdfsdk/cfx_systemhandler.cpp \
     pdfium/fpdfsdk/cpdfsdk_annot.cpp \
