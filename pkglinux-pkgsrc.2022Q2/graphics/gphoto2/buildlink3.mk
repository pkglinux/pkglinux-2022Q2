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
# XXX	BUILDLINK_DEPMETHOD.gphoto2?=	build

BUILDLINK_TREE+=	gphoto2

.if !defined(GPHOTO2_BUILDLINK3_MK)
GPHOTO2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gphoto2+=	gphoto2>=2.5.27nb2
BUILDLINK_PKGSRCDIR.gphoto2?=	../../graphics/gphoto2

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../devel/cdk/buildlink3.mk"
.include "../../devel/libgphoto2/buildlink3.mk"
.include "../../devel/ncurses/buildlink3.mk"
.include "../../devel/popt/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.endif	# GPHOTO2_BUILDLINK3_MK

BUILDLINK_TREE+=	-gphoto2
