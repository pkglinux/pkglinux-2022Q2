# $NetBSD: Makefile,v 1.63 2021/11/10 22:59:50 nia Exp $

DISTNAME=	flex-2.6.4
CATEGORIES=	devel lang
MASTER_SITES=	${MASTER_SITE_GITHUB:=westes/}
GITHUB_RELEASE=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/westes/flex
COMMENT=	Fast clone of lex(1), the lexical scanner generator
LICENSE=	2-clause-bsd

#BUILD_DEPENDS+=		help2man-[0-9]*:../../converters/help2man
# Cross-compilation in pkgsrc (user's guide)
# Use TOOL_DEPENDS, not BUILD_DEPENDS, for cwrappers
# revert cwrappers version dependency to what it was before. But keep it as TOOL_DEPENDS, not BUILD_DEPENDS.
TOOL_DEPENDS+=		help2man-[0-9]*:../../converters/help2man

# wants stdbool
USE_LANGUAGES=		c99 c++

USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gm4:run	gmake makeinfo gettext
GNU_CONFIGURE=		yes
INFO_FILES=		yes

TEST_TARGET=		check
LIBS.SunOS+=		-lm

.include "../../mk/bsd.prefs.mk"

CFLAGS.AIX+=		-D_LINUX_SOURCE_COMPAT

.if ${OS_VARIANT} == "SCOOSR5"
LDFLAGS.SCO_SV+=	-lsocket
.endif

# https://github.com/westes/flex/issues/219
CONFIGURE_ENV.NetBSD+=	ac_cv_func_reallocarray=no

# https://github.com/westes/flex/issues/241
CFLAGS.Linux+=		-D_GNU_SOURCE

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/bin/
	cd ${DESTDIR}${PREFIX}/ && find bin/* | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/
	cd ${DESTDIR}${PREFIX}/ && find lib/* | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/bin/
#	cd ${DESTDIR}${PREFIX}/native/usr/bin/ && ${LN} -sfv ../../../bin/* .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/ && ${LN} -sfv ../../../lib/* .

#.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
# When cross compiling, the configure script does not determine the correct values for the following.
# Set the values manually:
CONFIGURE_ENV+=		ac_cv_func_malloc_0_nonnull=yes
CONFIGURE_ENV+=		ac_cv_func_realloc_0_nonnull=yes
CONFIGURE_ARGS+=	--disable-bootstrap
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
