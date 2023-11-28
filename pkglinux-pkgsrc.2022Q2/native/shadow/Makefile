# $NetBSD$

DISTNAME=	shadow-4.8.1
PKGNAME=	native-shadow-4.8.1
CATEGORIES=	native
MASTER_SITES=	https://github.com/shadow-maint/shadow/releases/download/4.8.1/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/shadow-maint/shadow/releases/download/4.8.1/
COMMENT=	User administration and passwd database tools for Linux
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1

ONLY_FOR_PLATFORM=	Linux-*-* # Linux shadow format

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config gmake gsed

PKGCONFIG_OVERRIDE+=	libacl.pc.in

USE_LANGUAGES=		c c++
USE_NATIVE_GCC=	yes
#USE_NATIVE_GCC=	no
USE_PKGSRC_GCC=		no
#GCC_REQD+=		6

PKGSRC_USE_SSP=		no
MKPIE_SUPPORTED=	no
PKGSRC_MKPIE=		no
#STACK_CHECK_SUPPORTED=	no
#PKGSRC_USE_STACK_CHECKD=	no
#SSP_SUPPORTED=		yes

#GNU_CONFIGURE=		no
#NO_BUILD=		yes
#NO_CONFIGURE=		yes
#GNU_CONFIGURE_PREDIR=	${PREFIX}
PREDIR=			${PREFIX}/native
BLDDIR=			${WRKDIR}/build
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

post-extract:
	cd ${WRKSRC} && sed -i 's/groups$(EXEEXT) //' src/Makefile.in
	cd ${WRKSRC} && find man -name Makefile.in -exec sed -i 's/groups\.1 / /'   {} \;
	cd ${WRKSRC} && find man -name Makefile.in -exec sed -i 's/getspnam\.3 / /' {} \;
	cd ${WRKSRC} && find man -name Makefile.in -exec sed -i 's/passwd\.5 / /'   {} \;
	cd ${WRKSRC} && sed -i -e 's@#ENCRYPT_METHOD DES@ENCRYPT_METHOD SHA512@' \
		       -e 's@/var/spool/mail@/var/mail@' etc/login.defs
	cd ${WRKSRC} && sed -i 's@DICTPATH.*@DICTPATH\t/lib/cracklib/pw_dict@' etc/login.defs
	cd ${WRKSRC} && sed -i 's/1000/999/' etc/useradd
	${MKDIR} -v ${BLDPRE}

do-configure:
	cd ${BLDDIR} && \
	${WRKSRC}/configure			\
		--sysconfdir=/etc		\
		--with-selinux=yes		\
		--with-group-name-max-length=32

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDPRE} install-strip || ${GMAKE} DESTDIR=${BLDPRE} install)
	sed -i 's/yes/no/' ${BLDPRE}/etc/default/useradd
	if [[ -d ${BLDPRE}/man ]]; then \
		${MKDIR} -v ${BLDPRE}/share/man/; \
		${CP} -a ${BLDPRE}/man/* ${BLDPRE}/share/man/; \
		${RM} -rf ${BLDPRE}/man; \
	fi
	${MKDIR} -v ${BLDPRE}/bin/
	${MV} -v ${BLDPRE}/usr/bin/passwd ${BLDPRE}/bin/

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../linux/selinux-libselinux/buildlink3.mk"
.include "../../linux/selinux-libsepol/buildlink3.mk"
.include "../../linux/selinux-libsemanage/buildlink3.mk"
.include "../../linux/audit/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
