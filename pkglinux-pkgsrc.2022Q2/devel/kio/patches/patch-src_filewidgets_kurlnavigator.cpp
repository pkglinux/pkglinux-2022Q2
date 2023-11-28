$NetBSD$

--- src/filewidgets/kurlnavigator.cpp.orig	2022-04-02 10:22:23.000000000 +0000
+++ src/filewidgets/kurlnavigator.cpp
@@ -718,7 +718,10 @@ void KUrlNavigatorPrivate::updateButtonV
         return button->minimumWidth();
     };
     // Check whether buttons must be hidden at all...
-    const int requiredButtonWidth = std::transform_reduce(m_navButtons.cbegin(), m_navButtons.cend(), 0, std::plus<>(), MinWidth);
+    int requiredButtonWidth = 0;
+    for (const KUrlNavigatorButton *button : qAsConst(m_navButtons)) {
+        requiredButtonWidth += button->minimumWidth();
+    }
 
     if (requiredButtonWidth > availableWidth) {
         // At least one button must be hidden. This implies that the
