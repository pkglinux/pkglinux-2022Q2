# $NetBSD$

PKGNAME=	startups-1.0
CATEGORIES=	native
MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	essential files
LICENSE=	mit

ONLY_FOR_PLATFORM=	Linux-*-*

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed?=		/pkg/bin/gsed

USE_LANGUAGES=	# none
NO_CHECKSUM=		yes
HAS_CONFIGURE=		no
NO_BUILD=		yes
NO_CONFIGURE=		yes
GNU_CONFIGURE=		no

# (cd files && find . -type f | sed 's/$/ \\/')
STARTUP_FILES= \
	native/root/.bashrc \
	native/root/watch.pl \
	native/root/watch.desktop \
	native/root/.profile \
	native/root/wallpapers.desktop \
	native/root/xinitrc.kde \
	native/root/alex.bashrc \
	native/root/.bash_profile \
	native/root/.wallpapers \
	native/root/.bash_logout \
	native/root/watch.sh \
	native/root/update.sh \
	native/root/xinitrc \
	native/root/dircolors.ansi-universal \
	native/root/.devilspie/Transparent.ds \
	native/etc/ld.so.conf \
	native/etc/group \
	native/etc/resolv.conf \
	native/etc/profile.d/which.sh \
	native/etc/profile.d/bash_completion.sh \
	native/etc/profile.d/extrapaths.sh \
	native/etc/profile.d/umask.sh \
	native/etc/profile.d/dircolors.sh \
	native/etc/profile.d/sh.local \
	native/etc/profile.d/readline.sh \
	native/etc/modprobe.d/blacklist.conf \
	native/etc/modprobe.d/usb.conf \
	native/etc/fstab.iso \
	native/etc/profile \
	native/etc/rc.local \
	native/etc/rc.shutdown \
	native/etc/shells \
	native/etc/lsb-release \
	native/etc/fstab \
	native/etc/hostname \
	native/etc/netgroup \
	native/etc/hosts \
	native/etc/bashrc \
	native/etc/passwd \
	native/etc/os-release \


# (cd files && find . -type d | sed 's/$/ \\/')
STARTUP_DIRS= \
	native/root \
	native/root/.devilspie \
	native/usr \
	native/usr/lib \
	native/etc \
	native/etc/profile.d \
	native/etc/modprobe.d \


EGDIR=			${PREFIX}/share/examples/${PKGNAME}

.for d in ${STARTUP_DIRS}
REQD_DIRS+=	${EGDIR}/${d} ${PREFIX}/${d}
.endfor
.for f in ${STARTUP_FILES}
REQD_FILES+=	${EGDIR}/${f} ${PREFIX}/${f}
.endfor

do-install:
	${MKDIR} -pv ${DESTDIR}${EGDIR}/
	${CP} -av ${FILESDIR}/* ${DESTDIR}${EGDIR}/
	set -e; \
	cd ${DESTDIR}${EGDIR}/; \
	lnks=`gfind . -type l`; \
	for lnk in "$$lnks"; do \
		d=`gdirname ${DESTDIR}${PREFIX}/"$$lnk"`; \
		/pkg/bin/gmkdir -pv "$$d"; \
		/pkg/bin/gcp -av ${DESTDIR}${EGDIR}/"$$lnk" "$$d"; \
	done


.include "../../mk/bsd.pkg.mk"
