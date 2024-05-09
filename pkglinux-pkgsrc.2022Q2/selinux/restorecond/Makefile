# $NetBSD$

GITHUB_PROJECT=	selinux
DISTNAME=	restorecond-3.5
CATEGORIES=	selinux
MASTER_SITES=	${MASTER_SITE_GITHUB:=SELinuxProject/}
GITHUB_RELEASE=	3.5
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/SELinuxProject/selinux/
COMMENT=	Daemon which maintains the label of some files
LICENSE=	gnu-gpl-v2

CONFLICTS=	selinux-[0-9]*

USE_LANGUAGES=	c c++

USE_TOOLS+=	gmake pkg-config
USE_PKGLOCALEDIR=	yes

USE_PKGLOCALEDIR=	yes

MAKE_ENV+=	PREFIX=${PREFIX}
MAKE_ENV+=	SBINDIR=${PREFIX}/sbin
MAKE_ENV+=	ETCDIR=${PREFIX}/etc
MAKE_ENV+=	INITDIR=${PREFIX}/etc/rc.d/init.d
MAKE_ENV+=	SELINUXDIR=${PREFIX}/etc/selinux
MAKE_ENV+=	AUTOSTARTDIR=${PREFIX}/etc/xdg/autostart
MAKE_ENV+=	SYSTEMDSYSTEMUNITDIR=${PREFIX}/lib/systemd/system
MAKE_ENV+=	SYSTEMDUSERUNITDIR=${PREFIX}/lib/systemd/user
MAKE_ENV+=	PAMH=n

#CFLAGS+=	-D_GNU_SOURCE

post-install:
	lndir.sh -l sf ${PREFIX}/share/man ${PREFIX}/man ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/sbin ${PREFIX}/native/usr/sbin ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/etc ${PREFIX}/native/etc ${DESTDIR}

.include "../../sysutils/dbus/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../selinux/libselinux/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
