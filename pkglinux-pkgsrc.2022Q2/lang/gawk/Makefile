# $NetBSD: Makefile,v 1.73 2020/08/24 07:52:03 wiz Exp $

DISTNAME=	gawk-5.1.0
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GNU:=gawk/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	bouyer@NetBSD.org
HOMEPAGE=	https://www.gnu.org/software/gawk/gawk.html
COMMENT=	GNU awk
LICENSE=	gnu-gpl-v3

CONFLICTS=	ja-gawk-[0-9]*

USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		msgfmt msgmerge xgettext
GNU_CONFIGURE=		yes
TEST_TARGET=		check
INFO_FILES=		yes

MAKE_ENV+=		PKGLOCALEDIR=${PKGLOCALEDIR}

LDFLAGS.IRIX+=		-lgen
CPPFLAGS.OSF1+=		-D_OSF_SOURCE

# Fix PKG_FAIL_REASON+="No usable termcap library found on the system."
.include "../../mk/termcap.buildlink3.mk"
.include "../../mk/bsd.prefs.mk"

.include "options.mk"

.if !empty(MACHINE_PLATFORM:MDarwin-*-x86_64)
CFLAGS+=	-Dvm_region=vm_region_64
.endif

.if !empty(MACHINE_PLATFORM:MDarwin-[0-8].*-powerpc)
# ld does not have -rpath
CONFIGURE_ARGS+=	--disable-rpath
.endif

PLIST_VARS+=		extension
.if "${OPSYS}" != "MirBSD"
PLIST.extension=	yes
.endif

INSTALLATION_DIRS+=	${PKGGNUDIR}bin ${PKGGNUDIR}${PKGMANDIR}/man1

post-install:
	${LN} -fs ${PREFIX}/bin/gawk ${DESTDIR}${PREFIX}/${PKGGNUDIR}bin/awk
	${LN} -fs ${PREFIX}/${PKGMANDIR}/man1/gawk.1 ${DESTDIR}${PREFIX}/${PKGGNUDIR}${PKGMANDIR}/man1/awk.1

#.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CONFIGURE_ARGS+=	--with-sysroot=${TOOLS_CROSS_DESTDIR}
CONFIGURE_ENV+=		CC_FOR_BUILD=${NATIVE_CC:Q}
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/gmp/buildlink3.mk"
.include "../../math/mpfr/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
