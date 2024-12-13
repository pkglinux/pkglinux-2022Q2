$NetBSD$

--- portmap.c.orig	2014-06-23 01:19:03.000000000 +0000
+++ portmap.c
@@ -518,7 +518,7 @@ static void reg_service(struct svc_req *
 				    malloc((u_int)sizeof(struct flagged_pml));
 				pml = &fpml->pml;
 				fpml->priv =
-					(ntohs(svc_getcaller(xprt)->sin_port)
+					(ntohs(svc_getcaller(xprt)->sin6_port)
 					 < IPPORT_RESERVED);
 				pml->pml_map = reg;
 				pml->pml_next = 0;
@@ -573,7 +573,7 @@ static void reg_service(struct svc_req *
 
 				fpml = (struct flagged_pml*)pml;
 				if (fpml->priv &&
-				    (ntohs(svc_getcaller(xprt)->sin_port)
+				    (ntohs(svc_getcaller(xprt)->sin6_port)
 				     >= IPPORT_RESERVED))
 					continue;
 
