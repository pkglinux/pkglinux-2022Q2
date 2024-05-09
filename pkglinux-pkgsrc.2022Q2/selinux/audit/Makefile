# $NetBSD$

GITHUB_TAG=	refs/tags/v${PKGVERSION_NOREV}
DISTNAME=	audit-userspace-3.1
CATEGORIES=	selinux
MASTER_SITES=	${MASTER_SITE_GITHUB:=linux-audit/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/linux-audit/audit-userspace/
COMMENT=	the Linux Auditing Framework.
LICENSE=	gnu-gpl-v2

CONFLICTS=	selinux-[0-9]*

WRKSRC=			${WRKDIR}/${DISTNAME}

GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake pkgconfig
USE_TOOLS+=		autoconf automake
#USE_LIBTOOL=		yes

USE_PKGLOCALEDIR=	yes

CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--exec-prefix=${PREFIX}
CONFIGURE_ARGS+=	--bindir=${PREFIX}/bin
CONFIGURE_ARGS+=	--sbindir=${PREFIX}/sbin
CONFIGURE_ARGS+=	--sysconfdir=${PREFIX}/etc
CONFIGURE_ARGS+=	--datadir=${PREFIX}/share
CONFIGURE_ARGS+=	--includedir=${PREFIX}/include
CONFIGURE_ARGS+=	--libdir=${PREFIX}/lib
CONFIGURE_ARGS+=	--libexecdir=${PREFIX}/libexec
CONFIGURE_ARGS+=	--localstatedir=${PREFIX}/var
CONFIGURE_ARGS+=	--sharedstatedir=${PREFIX}/var/lib
CONFIGURE_ARGS+=	--mandir=${PREFIX}/man
CONFIGURE_ARGS+=	--infodir=${PREFIX}/share/info
CONFIGURE_ARGS+=	--with-python=no
CONFIGURE_ARGS+=	--with-python3=no
#CONFIGURE_ARGS+=	--with-python=yes
#CONFIGURE_ARGS+=	--with-python3=yes
CONFIGURE_ARGS+=	--without-libwrap
#CONFIGURE_ARGS+=	--with-libwrap=yes
CONFIGURE_ARGS+=	--enable-tcp=yes
CONFIGURE_ARGS+=	--enable-gssapi-krb5=yes
#CONFIGURE_ARGS+=	--with-libcap-ng=no
CONFIGURE_ARGS+=	--with-libcap-ng=yes
CONFIGURE_ARGS+=	--without-golang
CONFIGURE_ARGS+=	--disable-syatemd
CONFIGURE_ARGS+=	--disable-zos-remote
#CONFIGURE_ARGS+=	--with-ldap-includes=${BUILDLINK_PREFIX.openldap-client}/include
#CONFIGURE_ARGS+=	--with-ldap-libs=${BUILDLINK_PREFIX.openldap-client}/lib

PKGCONFIG_OVERRIDE+=	auparse/auparse.pc.in
PKGCONFIG_OVERRIDE+=	lib/audit.pc.in

RCD_SCRIPTS=		auditd

pre-configure:
	(cd ${WRKSRC}; ./autogen.sh)

post-install:
	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/bin ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/sbin ${PREFIX}/native/sbin ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/etc ${PREFIX}/native/etc ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/include ${PREFIX}/native/usr/include ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/man ${PREFIX}/native/usr/share/man ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/share ${PREFIX}/native/usr/share ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/usr/lib ${DESTDIR}

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CFLAGS+=	--shared -fPIC
USE_LIBTOOL=		yes
CONFIGURE_ARGS+=	--host=${MACHINE_GNU_PLATFORM}
CONFIGURE_ARGS+=	--with-sysroot=${TOOLS_CROSS_DESTDIR}
CONFIGURE_ARGS+=	--with-libcap-ng=no
#CONFIGURE_ARGS+=	--enable-gssapi-krb5=no
CONFIGURE_ENV+=		BUILD_CC=${PREFIX}/gcc6/bin/gcc
CONFIGURE_ENV+=		CC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.else
.include "../../linux/libcap-ng/buildlink3.mk"
.include "../../lang/python/tool.mk"
.include "../../security/openssl/buildlink3.mk"
.endif
#.include "../../databases/openldap-client/buildlink3.mk"
#.include "../../devel/py-cython/tool.mk"
#.include "../../devel/py-cython/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
