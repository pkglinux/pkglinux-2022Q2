$NetBSD$

--- gdk/gdkmemoryformat.c.orig	2022-09-06 19:59:04.000000000 +0000
+++ gdk/gdkmemoryformat.c
@@ -366,7 +366,7 @@ static const GdkMemoryFormatDescription
     G_ALIGNOF (guint16),
     TRUE,
     TRUE,
-    { GL_RGB16F, GL_RGB, GL_HALF_FLOAT },
+    { GL_RGB16F, GL_RGB },
     r16g16b16_float_to_float,
     r16g16b16_float_from_float,
   },
@@ -376,7 +376,7 @@ static const GdkMemoryFormatDescription
     G_ALIGNOF (guint16),
     TRUE,
     TRUE,
-    { GL_RGBA16F, GL_RGBA, GL_HALF_FLOAT },
+    { GL_RGBA16F, GL_RGBA },
     r16g16b16a16_float_to_float,
     r16g16b16a16_float_from_float,
   },
@@ -386,7 +386,7 @@ static const GdkMemoryFormatDescription
     G_ALIGNOF (guint16),
     TRUE,
     TRUE,
-    { GL_RGBA16F, GL_RGBA, GL_HALF_FLOAT },
+    { GL_RGBA16F, GL_RGBA },
     r16g16b16a16_float_to_float,
     r16g16b16a16_float_from_float,
   },
