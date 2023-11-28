# $NetBSD: buildlink3.mk,v 1.15 2020/09/20 08:28:24 wiz Exp $

BUILDLINK_TREE+=	ghostscript-agpl

.if !defined(GHOSTSCRIPT_AGPL_BUILDLINK3_MK)
GHOSTSCRIPT_AGPL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ghostscript-agpl+=	ghostscript-agpl>=8.63nb1
BUILDLINK_ABI_DEPENDS.ghostscript-agpl+=	ghostscript-agpl>=9.52nb3
BUILDLINK_PKGSRCDIR.ghostscript-agpl?=		../../print/ghostscript-agpl

.include "../../graphics/openjpeg/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"

pkgbase := ghostscript-agpl
.include "../../mk/pkg-build-options.mk"

.if ${PKG_BUILD_OPTIONS.ghostscript-agpl:Mfontconfig}
.include "../../fonts/fontconfig/buildlink3.mk"
.endif

.if ${PKG_BUILD_OPTIONS.ghostscript-agpl:Mx11}
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.endif
.endif # GHOSTSCRIPT_AGPL_BUILDLINK3_MK

BUILDLINK_TREE+=	-ghostscript-agpl
