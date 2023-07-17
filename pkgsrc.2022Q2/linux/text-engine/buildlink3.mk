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
# XXX	BUILDLINK_DEPMETHOD.text-engine?=	build

BUILDLINK_TREE+=	text-engine

.if !defined(TEXT_ENGINE_BUILDLINK3_MK)
TEXT_ENGINE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.text-engine+=	text-engine>=0.1.1
BUILDLINK_PKGSRCDIR.text-engine?=	../../linux/text-engine

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../devel/glib2/buildlink3.mk"
.include "../../textproc/json-glib/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk4/buildlink3.mk"
.include "../../x11/libXi/buildlink3.mk"
.include "../../x11/libXcursor/buildlink3.mk"
.include "../../x11/libXcomposite/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../linux/libadwaita/buildlink3.mk"
.endif	# TEXT_ENGINE_BUILDLINK3_MK

BUILDLINK_TREE+=	-text-engine
