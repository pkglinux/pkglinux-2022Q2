$NetBSD$

--- hw/xfree86/common/xf86Option.c.orig	2021-12-15 19:01:24.000000000 +0000
+++ hw/xfree86/common/xf86Option.c
@@ -213,7 +213,7 @@ LookupBoolOption(XF86OptionPtr optlist,
     o.name = name;
     o.type = OPTV_BOOLEAN;
     if (ParseOptionValue(-1, optlist, &o, markUsed))
-        deflt = o.value.bool;
+        deflt = o.value.boolean;
     return deflt;
 }
 
@@ -474,7 +474,7 @@ xf86ShowUnusedOptions(int scrnIndex, XF8
 static Bool
 GetBoolValue(OptionInfoPtr p, const char *s)
 {
-    return xf86getBoolValue(&p->value.bool, s);
+    return xf86getBoolValue(&p->value.boolean, s);
 }
 
 static Bool
@@ -678,7 +678,7 @@ ParseOptionValue(int scrnIndex, XF86Opti
             if (markUsed)
                 xf86MarkOptionUsedByName(options, newn);
             if (GetBoolValue(&opt, s)) {
-                p->value.bool = !opt.value.bool;
+                p->value.boolean = !opt.value.boolean;
                 p->found = TRUE;
             }
             else {
@@ -869,7 +869,7 @@ xf86GetOptValBool(const OptionInfoRec *
 
     p = xf86TokenToOptinfo(table, token);
     if (p && p->found) {
-        *value = p->value.bool;
+        *value = p->value.boolean;
         return TRUE;
     }
     else
@@ -883,7 +883,7 @@ xf86ReturnOptValBool(const OptionInfoRec
 
     p = xf86TokenToOptinfo(table, token);
     if (p && p->found) {
-        return p->value.bool;
+        return p->value.boolean;
     }
     else
         return def;
