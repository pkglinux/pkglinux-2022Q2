# $NetBSD$
# XXX
# XXX This file was created automatically using createbuildlink-3.18.
# XXX After this file has been verified as correct, the comment lines
# XXX beginning with "XXX" should be removed.  Please do not commit
# XXX unverified buildlink3.mk files.
# XXX
# XXX Packages that only install static libraries or headers should
# XXX include the following line:
# XXX
# XXX	BUILDLINK_DEPMETHOD.libsoup30?=	build

BUILDLINK_TREE+=	libsoup30

.if !defined(LIBSOUP30_BUILDLINK3_MK)
LIBSOUP30_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libsoup30+=	libsoup30>=3.0.8
BUILDLINK_PKGSRCDIR.libsoup30?=	../../linux/libsoup30

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../archivers/brotli/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../www/libpsl/buildlink3.mk"
.include "../../www/nghttp2/buildlink3.mk"
.endif	# LIBSOUP30_BUILDLINK3_MK

BUILDLINK_TREE+=	-libsoup30
