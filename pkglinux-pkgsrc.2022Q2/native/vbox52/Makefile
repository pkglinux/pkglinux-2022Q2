# $NetBSD$

DISTVER=	5.2.44
DISTNAME=	VirtualBox-${DISTVER}
PKGNAME=	vbox52-ose-${DISTVER}
CATEGORIES=	native
MASTER_SITES=	https://download.virtualbox.org/virtualbox/${DISTVER}/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://download.virtualbox.org/virtualbox/${DISTVER}/
COMMENT=	general-purpose full virtualizer for x86 hardware
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-* # Uses Linux kernel headers

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

USE_TOOLS+=		gmake gsed:run pkgdiff
WRKSRC=			${WRKDIR}/${DISTNAME}
DSTPRE=			${DESTDIR}${PREFIX}
RCD_SCRIPTS=		vboxws vboxdrv

#.	if !exists(${WRKSRC}/configure.orig)
#.	endif

#cp -av src/VBox/Main/webservice/vboxweb.cpp src/VBox/Main/webservice/vboxweb.cpp.orig && \
#gsed -e 's|m_soap->recv_maxlength =|//m_soap->recv_maxlength =|g' -i src/VBox/Main/webservice/vboxweb.cpp && \
#pkgdiff src/VBox/Main/webservice/vboxweb.cpp>../../patches/patch-src_VBox_Main_webservice_vboxweb.cpp-${DISTVER} && \
#cp -av Config.kmk Config.kmk.orig && \
#gsed -e 's|VBOX_WITH_WEBSERVICES_SSL = 1|VBOX_WITH_WEBSERVICES_SSL = 0|g' -i Config.kmk && \
#gsed -e 's|VBOX_WITH_WEBSERVICES = 1|VBOX_WITH_WEBSERVICES = 0|g' -i Config.kmk && \
#pkgdiff Config.kmk > ../../patches/patch-Config.kmk-${DISTVER} && \

#gsed -e 's|^BUILD_LIBSSL=|BUILD_LIBSSL=0|g' -i configure && \
#
do-configure:
	cd ${WRKSRC} && [ -f configure.orig ] || ( \
cp -av configure configure.orig && \
gsed -e 's|/usr/local|/pkg|g' -i configure && \
gsed -e 's|LIBPNG="-lpng"|LIBPNG="-lpng16"|g' -i configure && \
gsed -e 's|^INCZ="|INCZ="-I/pkg/include |g' -i configure && \
gsed -e 's|^LIBZ="|LIBZ="-lz |g' -i configure && \
gsed -e 's|GSOAP="/usr"|GSOAP="/pkg"|g' -i configure && \
gsed -e 's|cnf_append "VBOX_GSOAP_CXX_LIBS"    "`strip_l "$$GSOAP_CXX_LIBS"`"|cnf_append "VBOX_GSOAP_CXX_LIBS"    "`strip_l "$$GSOAP_CXX_LIBS"` z gnutls gcrypt gpg-error"|g' -i configure && \
gsed -e 's|test_compile "|test_compile "-I/pkg/include -L/pkg/lib |g' -i configure && \
pkgdiff configure > ../../patches/patch-configure-${DISTVER} && \
cp -v src/VBox/Frontends/VirtualBox/src/globals/UIImageTools.cpp src/VBox/Frontends/VirtualBox/src/globals/UIImageTools.cpp.orig && \
gsed -e '/^# include <QPainter>$$/a #include <QPainterPath>' -i src/VBox/Frontends/VirtualBox/src/globals/UIImageTools.cpp && \
pkgdiff src/VBox/Frontends/VirtualBox/src/globals/UIImageTools.cpp > ../../patches/patch-src_VBox_Frontends_VirtualBox_src_globals_UIImageTools.cpp && \
cp -v src/VBox/Frontends/VirtualBox/src/widgets/UIMenuToolBar.cpp src/VBox/Frontends/VirtualBox/src/widgets/UIMenuToolBar.cpp.orig && \
gsed -e '/^# include <QPainter>$$/a #include <QPainterPath>' -i src/VBox/Frontends/VirtualBox/src/widgets/UIMenuToolBar.cpp && \
pkgdiff src/VBox/Frontends/VirtualBox/src/widgets/UIMenuToolBar.cpp > ../../patches/patch-src_VBox_Frontends_VirtualBox_src_widgets_UIMenuToolBar.cpp && \
cp -v src/VBox/Frontends/VirtualBox/src/widgets/UIMiniToolBar.cpp src/VBox/Frontends/VirtualBox/src/widgets/UIMiniToolBar.cpp.orig && \
gsed -e '/^# include <QPainter>$$/a #include <QPainterPath>' -i src/VBox/Frontends/VirtualBox/src/widgets/UIMiniToolBar.cpp && \
pkgdiff src/VBox/Frontends/VirtualBox/src/widgets/UIMiniToolBar.cpp > ../../patches/patch-src_VBox_Frontends_VirtualBox_src_widgets_UIMiniToolBar.cpp && \
cp -v src/VBox/Frontends/VirtualBox/src/widgets/UIPopupBox.cpp src/VBox/Frontends/VirtualBox/src/widgets/UIPopupBox.cpp.orig && \
gsed -e '/^# include <QPainter>$$/a #include <QPainterPath>' -i src/VBox/Frontends/VirtualBox/src/widgets/UIPopupBox.cpp && \
pkgdiff src/VBox/Frontends/VirtualBox/src/widgets/UIPopupBox.cpp > ../../patches/patch-src_VBox_Frontends_VirtualBox_src_widgets_UIPopupBox.cpp && \
cp -v src/VBox/Frontends/VirtualBox/src/widgets/UIPopupBox.h src/VBox/Frontends/VirtualBox/src/widgets/UIPopupBox.h.orig && \
gsed -e '/^#include <QWidget>$$/a #include <QPainterPath>' -i src/VBox/Frontends/VirtualBox/src/widgets/UIPopupBox.h && \
pkgdiff src/VBox/Frontends/VirtualBox/src/widgets/UIPopupBox.h > ../../patches/patch-src_VBox_Frontends_VirtualBox_src_widgets_UIPopupBox.h && \
ls -la ${WRKSRC}/../../patches/* \
	)

do-build:

#	cd ${DSTPRE}/bin/ && find . ! -name "*.sh" -type f -perm -u+x | xargs strip -v --strip-unneeded
do-install:
	${MKDIR} -v ${DSTPRE}/native/usr/lib/virtualbox/ExtensionPacks/Oracle_VM_VirtualBox_Extension_Pack/
	${CP} -av ${WRKSRC}/out/linux.amd64/release/bin/* ${DSTPRE}/native/usr/lib/virtualbox/
	cd ${DSTPRE}/native/usr/lib/virtualbox/ && rm tst* *.debug && rm -rf testcase
	cd ${DSTPRE}/native/usr/lib/virtualbox/ && rm src/build_in_tmp && rm additions/src/build_in_tmp
	cd ${DSTPRE}/native/usr/lib/virtualbox/ && \
		gsed -e "s|Icon=virtualbox|Icon=/usr/lib/virtualbox/VBox.png|g" -i virtualbox.desktop && \
		gsed -e "s|Exec=VirtualBox|Exec=/usr/lib/virtualbox/VirtualBox|g" -i virtualbox.desktop && \
	${MKDIR} -v ${DSTPRE}/share/applications/ && \
	${CP} -v ${DSTPRE}/native/usr/lib/virtualbox/*.desktop ${DSTPRE}/share/applications/
	${MKDIR} -v ${DSTPRE}/native/lib/modules/"`uname -r`"/misc/
	${MV} -v ${DSTPRE}/native/usr/lib/virtualbox/src/*.ko.xz ${DSTPRE}/native/lib/modules/"`uname -r`"/misc/
	${CP} -av /sda4/sda3/vboxwebsrv.${DISTVER} ${DSTPRE}/native/usr/lib/virtualbox/vboxwebsrv
	cd ${DSTPRE}/native/usr/lib/virtualbox/ExtensionPacks/Oracle_VM_VirtualBox_Extension_Pack/ && \
	gtar -xzf /sda4/sda3/Oracle_VM_VirtualBox_Extension_Pack-${DISTVER}.vbox-extpack

.include "../../devel/bison/buildlink3.mk"
#.include "../../linux/liblzf-2015/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../x11/libXcursor/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../x11/libXrandr/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../net/libIDL/buildlink3.mk"
.include "../../devel/SDL/buildlink3.mk"
.include "../../devel/SDL2/buildlink3.mk"
.include "../../audio/alsa-lib/buildlink3.mk"
.include "../../audio/pulseaudio/buildlink3.mk"
.include "../../sysutils/hal/buildlink3.mk"
.include "../../sysutils/libcap/buildlink3.mk"
.include "../../linux/LVM2/buildlink3.mk"
#.include "../../security/openpam/buildlink3.mk"
.include "../../lang/python/tool.mk"
#.include "../../linux/gsoap/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
#.include "../../linux/glslang/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../multimedia/libvpx/buildlink3.mk"
#.include "../../devel/kbuild/buildlink3.mk"
.include "../../audio/libopus/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
