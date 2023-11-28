# $NetBSD$

DISTNAME=	Fcitx5-Material-Color-0.2.1
CATEGORIES=	linux
MASTER_SITES=	https://codeload.github.com/hosxy/Fcitx5-Material-Color/tar.gz/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://codeload.github.com/hosxy/Fcitx5-Material-Color/tar.gz/
COMMENT=	Material-Color

LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1

ONLY_FOR_PLATFORM=	Linux-*-*

#USE_LANGUAGES=		c c++

#USE_TOOLS+=		gmake makeinfo sed:run tar:build perl
GNU_CONFIGURE=		no
BLDDIR=			${WRKDIR}/build
BLDPRE=			${BLDDIR}${PREFIX}
BLDCNF=			${BLDPRE}/share/fcitx5/themes/Material-Color
DSTPRE=			${DESTDIR}${PREFIX}

post-extract:
	${MKDIR} -v ${BLDCNF}

do-configure:
	${LN} -svf theme-indigo.conf ${WRKSRC}/theme.conf
	${CP} -v ${FILESDIR}/classicui.conf ${WRKSRC}/

do-build:
	${CP} -av ${WRKSRC}/* ${BLDCNF}/

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../mk/bsd.pkg.mk"
