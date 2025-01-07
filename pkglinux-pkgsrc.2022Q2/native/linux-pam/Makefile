# $NetBSD$

DISTNAME=	Linux-PAM-1.5.3
CATEGORIES=	native
MASTER_SITES=	${MASTER_SITE_GITHUB:=linux-pam/linux-pam/releases/download/v1.5.3/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/linux-pam/linux-pam/releases/download/v1.5.3/ # TODO: check
COMMENT=	Pluggable Authentication Modules to control how to authenticate users
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

WRKSRC=		${WRKDIR}/${DISTNAME}

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config gsed
USE_TOOLS+=		grep gmake makeinfo sed:run tar:build m4 autoconf automake
USE_TOOLS+=		pkg-config intltools msgfmt xgettext perl
TOOLS_PLATFORM.msgfmt=
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	libpam/pam.pc.in
PKGCONFIG_OVERRIDE+=	libpam_misc/pam_misc.pc.in
PKGCONFIG_OVERRIDE+=	libpamc/pamc.pc.in

USE_LANGUAGES=		c c++
#GCC_REQD+=		6	

USE_LIBTOOL=		yes

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

PREDIR=			${PREFIX}/native
BLDDIR=			${WRKDIR}/build
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

MAKE_ENV+=	CFLAGS+= -fPIC

post-extract:
	${MKDIR} -v ${BLDPRE}/

do-configure:
# First, prevent the installation of an unneeded systemd file:
	cd ${WRKSRC} && gsed -e /service_DATA/d -i modules/pam_namespace/Makefile.am
	cd ${WRKSRC} && autoreconf
	cd ${BLDDIR} && ${WRKSRC}/configure			\
		--prefix=${PREDIR}/usr				\
		--bindir=${PREDIR}/usr/sbin			\
		--sysconfdir=${PREDIR}/etc			\
		--libdir=${PREDIR}/usr/lib			\
		--enable-securedir=${PREDIR}/usr/lib/security

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDDIR} install-strip || ${GMAKE} DESTDIR=${BLDDIR} install)

do-install:
	${MKDIR} -v ${DSTPRE}/
	${CP} -av ${BLDPRE}/* ${DSTPRE}/
	${CP} -av ${FILESDIR}/* ${DSTPRE}/

#.include "../../linux/libnsl/buildlink3.mk"
.include "../../linux/libtirpc/buildlink3.mk"
.include "../../selinux/audit/buildlink3.mk"
.include "../../databases/db4/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
