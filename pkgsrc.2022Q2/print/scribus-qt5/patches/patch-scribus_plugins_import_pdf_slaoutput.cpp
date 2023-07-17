$NetBSD: patch-scribus_plugins_import_pdf_slaoutput.cpp,v 1.1 2021/06/22 21:24:15 markd Exp $

patches for poppler >= 21.3

--- scribus/plugins/import/pdf/slaoutput.cpp.orig	2020-06-11 09:56:15.000000000 +0000
+++ scribus/plugins/import/pdf/slaoutput.cpp
@@ -2291,9 +2291,19 @@ GBool SlaOutputDev::patchMeshShadedFill(
 	return gTrue;
 }
 
-GBool SlaOutputDev::tilingPatternFill(GfxState *state, Gfx * /*gfx*/, Catalog *cat, Object *str, POPPLER_CONST_070 double *pmat, int paintType, int tilingType, Dict *resDict, POPPLER_CONST_070 double *mat, POPPLER_CONST_070 double *bbox, int x0, int y0, int x1, int y1, double xStep, double yStep)
+#if POPPLER_ENCODED_VERSION >= POPPLER_VERSION_ENCODE(21, 3, 0)
+bool SlaOutputDev::tilingPatternFill(GfxState *state, Gfx * /*gfx*/, Catalog *cat, GfxTilingPattern *tPat, const double *mat, int x0, int y0, int x1, int y1, double xStep, double yStep)
+#else
+GBool SlaOutputDev::tilingPatternFill(GfxState *state, Gfx * /*gfx*/, Catalog *cat, Object *str, POPPLER_CONST_070 double *pmat, int /*paintType*/, int /*tilingType*/, Dict *resDict, POPPLER_CONST_070 double *mat, POPPLER_CONST_070 double *bbox, int x0, int y0, int x1, int y1, double xStep, double yStep)
+#endif
 {
 //	qDebug() << "SlaOutputDev::tilingPatternFill";
+#if POPPLER_ENCODED_VERSION >= POPPLER_VERSION_ENCODE(21, 3, 0)
+	const double *bbox = tPat->getBBox();
+	const double *pmat = tPat->getMatrix();
+	Dict *resDict = tPat->getResDict();
+#endif
+
 	PDFRectangle box;
 	Gfx *gfx;
 	QString id;
@@ -2325,7 +2335,11 @@ GBool SlaOutputDev::tilingPatternFill(Gf
 	// Unset the clip path as it is unrelated to the pattern's coordinate space.
 	QPainterPath savedClip = m_currentClipPath;
 	m_currentClipPath = QPainterPath();
+#if POPPLER_ENCODED_VERSION >= POPPLER_VERSION_ENCODE(21, 3, 0)
+	gfx->display(tPat->getContentStream());
+#else
 	gfx->display(str);
+#endif
 	m_currentClipPath = savedClip;
 	inPattern--;
 	gElements = m_groupStack.pop();
