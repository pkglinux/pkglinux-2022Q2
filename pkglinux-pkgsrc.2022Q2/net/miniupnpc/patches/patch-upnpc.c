$NetBSD: patch-upnpc.c,v 1.2 2022/04/11 10:04:38 nikita Exp $

ctype arguments must be unsigned char.

--- src/upnpc.c.orig	2020-11-09 19:43:35.000000000 +0000
+++ src/upnpc.c
@@ -53,7 +53,7 @@ int is_int(char const* s)
 		return 0;
 	while(*s) {
 		/* #define isdigit(c) ((c) >= '0' && (c) <= '9') */
-		if(!isdigit(*s))
+		if(!isdigit((unsigned char)*s))
 			return 0;
 		s++;
 	}
