# $NetBSD$

DISTNAME=	alsa-ucm-conf-1.2.6.3
CATEGORIES=	linux
MASTER_SITES=	https://www.alsa-project.org/files//pub/lib/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.alsa-project.org/files//pub/lib/
COMMENT=	ALSA Use Case Manager configuration
LICENSE=	gnu-gpl-v2

USE_LANGUAGES=	# none
NO_BUILD=	yes
NO_CONFIGURE=	yes
WRKSRC=		${WRKDIR}/${DISTNAME}

INSTALLATION_DIRS+=	share/alsa/ucm share/alsa/ucm2

do-install:
	${CP} -av ${WRKSRC}/ucm/* ${DESTDIR}${PREFIX}/share/alsa/ucm/
	${CP} -av ${WRKSRC}/ucm2/* ${DESTDIR}${PREFIX}/share/alsa/ucm2/

.include "../../mk/bsd.pkg.mk"
