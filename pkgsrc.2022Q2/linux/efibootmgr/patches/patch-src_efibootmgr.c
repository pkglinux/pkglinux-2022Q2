$NetBSD$

--- src/efibootmgr.c.orig	2018-06-10 20:12:10.000000000 +0000
+++ src/efibootmgr.c
@@ -1538,7 +1538,6 @@ parse_opts(int argc, char **argv)
 			}
                         /* XXX efivar-36 accidentally doesn't have a public
                          * header for this */
-			extern int efi_set_verbose(int verbosity, FILE *errlog);
 			efi_set_verbose(opts.verbose - 2, stderr);
 			break;
 		case 'V':
