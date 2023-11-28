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
# XXX	BUILDLINK_DEPMETHOD.alsa-tools?=	build

BUILDLINK_TREE+=	alsa-tools

.if !defined(ALSA_TOOLS_BUILDLINK3_MK)
ALSA_TOOLS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.alsa-tools+=	alsa-tools>=1.2.5
BUILDLINK_PKGSRCDIR.alsa-tools?=	../../linux/alsa-tools

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
#.include "../../devel/ncurses/buildlink3.mk"
#.include "../../math/fftw/buildlink3.mk"
#.include "../../x11/gtk2/buildlink3.mk"
#.include "../../x11/gtk3/buildlink3.mk"
#.include "../../x11/fltk13/buildlink3.mk"
#.include "../../audio/alsa-lib/buildlink3.mk"
#.include "../../linux/alsa-utils/buildlink3.mk"
.endif	# ALSA_TOOLS_BUILDLINK3_MK

BUILDLINK_TREE+=	-alsa-tools
