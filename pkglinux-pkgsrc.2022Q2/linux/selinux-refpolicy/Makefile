# $NetBSD$

DISTNAME=	refpolicy-2.20221101
PKGNAME=	selinux-${DISTNAME}
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=SELinuxProject/refpolicy/releases/download/RELEASE_2_20221101/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/SELinuxProject/refpolicy/releases/download/RELEASE_2_20221101/ # TODO: check
COMMENT=	Tresys maintains a working SELinux policy 
LICENSE=	gnu-gpl-v2

CONFLICTS=	selinux-[0-9]*

ONLY_FOR_PLATFORM=	Linux-*-*

USE_LANGUAGES=	c,c++

USE_TOOLS+=	gmake pkg-config m4 intltools msgfmt xgettext perl
USE_PKGLOCALEDIR=	yes

INSTALLATION_DIRS=	native/etc/selinux

POLICY_NAME=	refpolicy
MODPKGDIR=	/usr/share/selinux/${POLICY_NAME}
POLICY_STORE=	/var/lib/selinux

#FILES_SUBST+=	POLICY_NAME=${POLICY_NAME:Q}
#FILES_SUBST+=	MODPKGDIR=${MODPKGDIR:Q}
#FILES_SUBST+=	POLICY_STORE=${POLICY_STORE:Q}
FILES_SUBST+=	POLICY_NAME=${POLICY_NAME}
FILES_SUBST+=	MODPKGDIR=${MODPKGDIR}
FILES_SUBST+=	POLICY_STORE=${POLICY_STORE}

WRKSRC=		${WRKDIR}/${POLICY_NAME}

pre-build:
	cd ${WRKSRC} && make bare && make conf

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/config ${DESTDIR}${PREFIX}/native/etc/selinux

.include "../../linux/semodule-utils/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
