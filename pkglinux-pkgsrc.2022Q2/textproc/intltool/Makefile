# $NetBSD: Makefile,v 1.71 2021/05/24 19:54:25 wiz Exp $

DISTNAME=		intltool-0.51.0
PKGREVISION=		6
CATEGORIES=		textproc devel gnome
MASTER_SITES=		https://launchpad.net/intltool/trunk/${PKGVERSION_NOREV}/+download/
MASTER_SITES+=		http://launchpadlibrarian.net/94524169/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://launchpad.net/intltool/
COMMENT=		Internationalization Tool Collection
LICENSE=		gnu-gpl-v2

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
TOOL_DEPENDS+=		p5-XML-Parser>=2.34nb4:../../textproc/p5-XML-Parser
.else
DEPENDS+=		p5-XML-Parser>=2.34nb4:../../textproc/p5-XML-Parser
.endif

CONFLICTS=		xml-i18n-tools-[0-9]*

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
USE_TOOLS+=		gmake perl
.else
USE_TOOLS+=		gmake perl:run
.endif
GNU_CONFIGURE=		YES
CHECK_INTERPRETER_SKIP=	share/intltool/*.in
TEST_TARGET=		check

#.include "../../mk/bsd.prefs.mk"
#.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
#PLIST_SRC=
#GENERATE_PLIST+= \
# 	cd ${DESTDIR}${PREFIX} && \
#	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
#.endif

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
