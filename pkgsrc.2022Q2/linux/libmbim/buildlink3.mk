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
# XXX	BUILDLINK_DEPMETHOD.libmbim?=	build

BUILDLINK_TREE+=	libmbim

.if !defined(LIBMBIM_BUILDLINK3_MK)
LIBMBIM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libmbim+=	libmbim>=1.24.6
BUILDLINK_PKGSRCDIR.libmbim?=	../../linux/libmbim

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
#.include "../../linux/libgudev/buildlink3.mk"
#.include "../../devel/glib2/buildlink3.mk"
#.include "../../devel/gobject-introspection/buildlink3.mk"
.endif	# LIBMBIM_BUILDLINK3_MK

BUILDLINK_TREE+=	-libmbim
