# $NetBSD$

DISTNAME=	acl-2.2.53
CATEGORIES=	linux
MASTER_SITES=	http://download.savannah.gnu.org/releases/acl/

MAINTAINER=	use pkgsrc-users@NetBSD.org
HOMEPAGE=	http://download.savannah.gnu.org/releases/acl/
COMMENT=	Access control list package
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config gmake
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	libacl.pc.in

CONFIGURE_ARGS+=	--disable-static
CONFIGURE_ARGS+=	--libexecdir=/usr/lib
CONFIGURE_ARGS+=	--docdir=/usr/share/doc/${DISTNAME}
.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CONFIG_ARGS+=		--host=${MACHINE_GNU_PLATFORM}
CONFIG_ARGS+=		--with-sysroot=${TOOLS_CROSS_DESTDIR}
CFLAGS+=	-fPIC
#CPPFLAGS+=	-fPIC
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

post-install:
	${MKDIR} ${DESTDIR}${PREFIX}/native/usr/bin/
	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/usr/bin ${DESTDIR}
	${MKDIR} ${DESTDIR}${PREFIX}/native/usr/lib/
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/usr/lib ${DESTDIR}
	${MKDIR} ${DESTDIR}${PREFIX}/native/lib/
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/lib ${DESTDIR}


.include "../../sysutils/attr/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
