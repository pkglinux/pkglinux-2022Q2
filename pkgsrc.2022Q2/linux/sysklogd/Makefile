# $NetBSD$

DISTNAME=	sysklogd-1.5.1
CATEGORIES=	linux
MASTER_SITES=	http://www.infodrom.org/projects/sysklogd/download/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.infodrom.org/projects/sysklogd/download/
COMMENT=	Programs for logging system messages
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	gmake pkgconfig
#TOOLS_PLATFORM.msgfmt=
#TOOLS_PLATFORM.gmake=

WRKSRC=			${WRKDIR}/sysklogd-1.5.1
USE_PKGLOCALEDIR=	yes

ONLY_FOR_PLATFORM=	Linux-*-*	# This has Linux klogd

CFLAGS+=		-D_PATH_LOGCONF='\"${PKG_SYSCONFBASE}/syslog.conf\"'
MAKE_ENV+=		prefix=${WRKDIR}/.destdir${PREFIX}

RCD_SCRIPTS=		syslogd klogd
CONF_FILES+=		${PREFIX}/share/examples/sysklogd/syslog.conf ${PKG_SYSCONFDIR}/syslog.conf

post-install:
	${INSTALL_DATA_DIR} ${WRKDIR}/.destdir${PREFIX}/share/examples/sysklogd
	${INSTALL_DATA} ${FILESDIR}/syslog.conf ${WRKDIR}/.destdir${PREFIX}/share/examples/sysklogd/
	${INSTALL_DATA} ${WRKSRC}/syslog.conf ${WRKDIR}/.destdir${PREFIX}/share/examples/sysklogd/syslog.conf.example

.include "../../mk/bsd.pkg.mk"
