$NetBSD$

--- misc-utils/getopt.c.orig	2021-08-16 10:57:48.588807565 +0000
+++ misc-utils/getopt.c
@@ -78,6 +78,8 @@
 /* LONG_OPT is the code that is returned when a long option is found. */
 #define LONG_OPT 0
 
+extern int getopt_long_only (int ___argc, char **___argv, const char *__shortopts, const char *__longopts, int *__longind);
+
 /* The shells recognized. */
 typedef enum { BASH, TCSH } shell_t;
 
