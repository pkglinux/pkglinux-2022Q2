# $NetBSD$

DISTNAME=	man-db-2.9.0
CATEGORIES=	linux
MASTER_SITES=	http://download.savannah.gnu.org/releases/man-db/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://download.savannah.gnu.org/releases/man-db/
COMMENT=	Manual pager and related man page utilities
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

CONFLICTS+=		man-[0-9]*

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

#USE_LANGUAGES=		c c++
#GCC_REQD+=		6	

#USE_LIBTOOL=		yes
USE_TOOLS+=		grep gmake makeinfo sed:run tar:build m4 autoconf automake
USE_TOOLS+=		pkg-config intltools msgfmt xgettext perl
TOOLS_PLATFORM.msgfmt=

# Fix PKG_FAIL_REASON+="No usable termcap library found on the system."
.include "../../mk/termcap.buildlink3.mk"
.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
# Fix linking error
USE_LIBTOOL=		yes
TOOL_DEPENDS+=		bison-[0-9]*:../../devel/bison
.include "../../databases/gdbm/buildlink3.mk"
#AKE_ENV+= 		PATH=${TOOLDIR}/bin:$$PATH
#MAKE_ENV+=		AS_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-as"
#MAKE_ENV+=		LD_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld"
#CONFIGURE_ARGS+=	--disable-nls
.else
BUILD_DEPENDS+=		bison-[0-9]*:../../devel/bison
.endif

GNU_CONFIGURE=		yes
USE_PKGLOCALEDIR=	yes

CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--docdir=${PREFIX}/share/doc/man-db-2.9.0
CONFIGURE_ARGS+=	--sysconfdir=${PREFIX}/etc
CONFIGURE_ARGS+=	--disable-setuid
CONFIGURE_ARGS+=	--enable-cache-owner=bin
CONFIGURE_ARGS+=	--with-browser=${PREFIX}/bin/lynx
CONFIGURE_ARGS+=	--with-vgrind=${PREFIX}/bin/vgrind
CONFIGURE_ARGS+=	--with-grap=${PREFIX}/bin/grap

post-install:
	${CP} -v ${FILESDIR}/man_db.conf ${DESTDIR}${PREFIX}/etc/

.include "../../linux/libpipeline/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
