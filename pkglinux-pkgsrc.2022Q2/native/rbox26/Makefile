# $NetBSD$

DISTNAME=	RemoteBox-2.6
PKGNAME=	vbox60-${DISTNAME}
CATEGORIES=	native
MASTER_SITES=	https://remotebox.knobgoblin.org.uk/downloads/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://remotebox.knobgoblin.org.uk/downloads/
COMMENT=	VirtualBox client remotely administers for desktop virtualization
LICENSE=	gnu-gpl-v2

USE_LANGUAGES=	# none

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

NO_BUILD=	yes
NO_CONFIGURE=	yes
GNU_CONFIGURE=	no

USE_TOOLS+=	gsed

PREDIR=			${PREFIX}/native
DSTPRE=			${DESTDIR}${PREDIR}

#for i in p5-gtk3 p5-SOAP-Lite p5-libwww freerdp2 tigervnc xdg-utils; do echo -n DEPENDS+= $i-[0-9]*:;echo ../../*/$i; done

DEPENDS+= p5-gtk3-[0-9]*:../../x11/p5-gtk3
DEPENDS+= p5-SOAP-Lite-[0-9]*:../../net/p5-SOAP-Lite
DEPENDS+= p5-libwww-[0-9]*:../../www/p5-libwww
DEPENDS+= freerdp2-[0-9]*:../../net/freerdp2
DEPENDS+= tigervnc-[0-9]*:../../net/tigervnc
DEPENDS+= xdg-utils-[0-9]*:../../misc/xdg-utils

do-install:
	${MKDIR} -v ${DSTPRE}/usr/share/
	${CP} -av ${WRKSRC} ${DSTPRE}/usr/share/
	${MKDIR} -v ${DSTPRE}/usr/bin/
	${CP} -v ${WRKSRC}/remotebox ${DSTPRE}/usr/bin/${DISTNAME}
	cd ${DSTPRE}/usr/bin/ && sed -i "s|Bin/share/remotebox|Bin/../share/${DISTNAME}/share/remotebox|g" ${DISTNAME}

.include "../../mk/bsd.pkg.mk"
