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
# XXX	BUILDLINK_DEPMETHOD.util-linux?=	build

BUILDLINK_TREE+=	util-linux

.if !defined(UTIL_LINUX_BUILDLINK3_MK)
UTIL_LINUX_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.util-linux+=	util-linux>=2.37.2
BUILDLINK_PKGSRCDIR.util-linux?=	../../linux/util-linux

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
#.include "../../devel/gettext-lib/buildlink3.mk"
#.include "../../devel/ncursesw/buildlink3.mk"
#.include "../../devel/gtexinfo/buildlink3.mk"
#.include "../../devel/zlib/buildlink3.mk"
#.include "../../sysutils/libcap/buildlink3.mk"
#.include "../../linux/acl/buildlink3.mk"
#.include "../../sysutils/attr/buildlink3.mk"
#.include "../../devel/readline/buildlink3.mk"
.endif	# UTIL_LINUX_BUILDLINK3_MK

BUILDLINK_TREE+=	-util-linux
