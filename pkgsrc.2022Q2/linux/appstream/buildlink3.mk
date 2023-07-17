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
# XXX	BUILDLINK_DEPMETHOD.AppStream?=	build

BUILDLINK_TREE+=	AppStream

.if !defined(APPSTREAM_BUILDLINK3_MK)
APPSTREAM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.AppStream+=	AppStream>=0.15.5
BUILDLINK_PKGSRCDIR.AppStream?=	../../linux/appstream

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/libyaml/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../linux/libxmlb/buildlink3.mk"
.include "../../textproc/libstemmer/buildlink3.mk"
.endif	# APPSTREAM_BUILDLINK3_MK

BUILDLINK_TREE+=	-AppStream
