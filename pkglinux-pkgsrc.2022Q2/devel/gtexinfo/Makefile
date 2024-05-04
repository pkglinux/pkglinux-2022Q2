# $NetBSD: Makefile,v 1.111 2021/07/15 10:50:32 wiz Exp $

DISTNAME=		texinfo-6.8
PKGNAME=		g${DISTNAME}
CATEGORIES=		devel sysutils
MASTER_SITES=		${MASTER_SITE_GNU:=texinfo/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://www.gnu.org/software/texinfo/texinfo.html
COMMENT=		GNU info documentation utilities
LICENSE=		gnu-gpl-v3

#BUILD_DEPENDS+=		help2man-[0-9]*:../../converters/help2man
TOOL_DEPENDS+=		help2man-[0-9]*:../../converters/help2man
# otherwise, package installs copies of them itself
#DEPENDS+=		p5-Locale-libintl-[0-9]*:../../misc/p5-Locale-libintl
#DEPENDS+=		p5-Text-Unidecode-[0-9]*:../../textproc/p5-Text-Unidecode
#DEPENDS+=		p5-Unicode-EastAsianWidth-[0-9]*:../../converters/p5-Unicode-EastAsianWidth

GNU_CONFIGURE=		yes
GNU_CONFIGURE_STRICT=	no # otherwise MiscXS.pm won't be installed
#CONFIGURE_ARGS+=	--with-external-libintl-perl
#CONFIGURE_ARGS+=	--with-external-Text-Unidecode
#CONFIGURE_ARGS+=	--with-external-Unicode-EastAsianWidth
#CONFIGURE_ARGS+=	PERL_EXT_CFLAGS=${CFLAGS:Q}
#CONFIGURE_ARGS+=	PERL_EXT_LDFLAGS=${LDFLAGS:Q}

USE_LIBTOOL=		yes

INFO_FILES=		yes
TEST_TARGET=		check
PLIST_SRC=		${PKGDIR}/PLIST
#USE_TOOLS+=		perl:run
USE_TOOLS+=		perl

# Replace deeply nested config.sub files (in vendored perl libraries)
OVERRIDE_DIRDEPTH=	4

PKGSRC_INFOPATH=	${PREFIX}/${PKGINFODIR}:${X11BASE}/${PKGINFODIR}:${PREFIX}/${PKGINFODIR}
MAKE_ENV+=		PKGSRC_INFOPATH=${PKGSRC_INFOPATH:Q}

REPLACE_SH+=		util/texi2dvi

.include "../../mk/bsd.prefs.mk"
post-install:
	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/usr/bin ${DESTDIR}
.if empty(USE_CROSS_COMPILE:M[yY][eE][sS])
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/usr/lib ${DESTDIR}
.endif
#	lndir.sh ${DESTDIR}${PREFIX}/bin ${DESTDIR}${PREFIX}/native/usr/bin
#	lndir.sh ${DESTDIR}${PREFIX}/lib ${DESTDIR}${PREFIX}/native/usr/lib

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
USE_BUILTIN.gettext-lib=	no
.endif
.include "options.mk"

#.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
TOOL_DEPENDS+=		p5-Locale-libintl-[0-9]*:../../misc/p5-Locale-libintl
TOOL_DEPENDS+=		p5-Text-Unidecode-[0-9]*:../../textproc/p5-Text-Unidecode
TOOL_DEPENDS+=		p5-Unicode-EastAsianWidth-[0-9]*:../../converters/p5-Unicode-EastAsianWidth
USE_TOOLS+=		gperf
#CONFIGURE_ARGS+=	--disable-selinux
USE_LIBTOOL=		yes
#CFLAGS+=		--shared -fPIC
CFLAGS+=		-fPIC
LDFLAGS+=		-lpthread -ldl
CONFIGURE_ARGS+=	--with-pic
CONFIGURE_ARGS+=	--host=${MACHINE_GNU_PLATFORM}
CONFIGURE_ARGS+=	--with-sysroot=${TOOLS_CROSS_DESTDIR}
CONFIGURE_ENV+=		BUILD_CC=${PREFIX}/gcc6/bin/gcc
CONFIGURE_ENV+=		CC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
MAKE_ENV+= 		PATH=${TOOLDIR}/bin:$$PATH
MAKE_ENV+=		AS_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-as"
MAKE_ENV+=		LD_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld"
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.else
DEPENDS+=		p5-Locale-libintl-[0-9]*:../../misc/p5-Locale-libintl
DEPENDS+=		p5-Text-Unidecode-[0-9]*:../../textproc/p5-Text-Unidecode
DEPENDS+=		p5-Unicode-EastAsianWidth-[0-9]*:../../converters/p5-Unicode-EastAsianWidth
CONFIGURE_ARGS+=	--with-external-libintl-perl
CONFIGURE_ARGS+=	--with-external-Text-Unidecode
CONFIGURE_ARGS+=	--with-external-Unicode-EastAsianWidth
CONFIGURE_ARGS+=	PERL_EXT_CFLAGS=${CFLAGS:Q}
CONFIGURE_ARGS+=	PERL_EXT_LDFLAGS=${LDFLAGS:Q}
.include "../../lang/perl5/buildlink3.mk"	 # for EXTERN.h in XSParagraph
.endif
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/termcap.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# This need to be defined here to override the setting in texinfo.mk
INSTALL_INFO=		${PREFIX}/bin/install-info
