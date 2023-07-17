$NetBSD$

--- src/qxl_option_helpers.c.orig	2015-10-12 16:31:14.000000000 +0000
+++ src/qxl_option_helpers.c
@@ -34,7 +34,7 @@ int get_bool_option(OptionInfoPtr option
     const char* value = getenv(env_name);
 
     if (!value) {
-        return options[option_index].value.bool;
+        return options[option_index].value.boolean;
     }
     if (strcmp(value, "0") == 0 ||
         strcasecmp(value, "off") == 0 ||
