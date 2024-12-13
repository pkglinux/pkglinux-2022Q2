$NetBSD$

--- utils/nfsdctl/nfsdctl.c.orig	2024-10-19 12:42:10.000000000 +0000
+++ utils/nfsdctl/nfsdctl.c
@@ -1026,6 +1026,7 @@ static int update_listeners(const char *
 				    memcmp(&r6->sin6_addr, &l6->sin6_addr, sizeof(l6->sin6_addr)))
 					continue;
 			default:
+				;
 
 			}
 			sock->active = (sign == '+');
