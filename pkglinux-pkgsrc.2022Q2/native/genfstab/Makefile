# $NetBSD$

GITHUB_PROJECT=	genfstab
DISTNAME=	genfstab-24
CATEGORIES=	native
MASTER_SITES=	${MASTER_SITE_GITHUB:=scardracs/}
GITHUB_RELEASE=	24

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/scardracs/genfstab/
COMMENT=	Script that automatically compile the /etc/fstab file
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

#USE_CWRAPPERS=		no
#USE_NATIVE_GCC=		yes
#USE_PKGSRC_GCC=		no
USE_TOOLS+=		gmake asciidoc

WRKSRC=			${WRKDIR}/${DISTNAME}

TOOL_DEPENDS+=		asciidoc-[0-9]*:../../textproc/asciidoc

HAS_CONFIGURE=		no
#NO_BUILD=		yes
NO_CONFIGURE=		yes
GNU_CONFIGURE=		no

BLDPRE=		${WRKSRC}${PREFIX}/native
DSTPRE=		${DESTDIR}${PREFIX}/native

#MAKE_ENV+=	XML_CATALOG_FILES=${PREFIX}/etc/xml/catalog
MAKE_ENV+=	XML_CATALOG_FILES=/pkg/etc/xml/catalog

do-extract:
		@${CP} -R ${FILESDIR} ${WRKSRC}
		${MKDIR} -p ${BLDPRE}

#post-extract:
#		cd ${WRKSRC} && gsed -e "s:a2x --no-xmllint --asciidoc-opts:a2x --asciidoc-opts:g" -i Makefile

#		cd ${WRKSRC} && gsed -e "s:a2x --no-xmllint --asciidoc-opts:a2x --dblatex-opts \"--param toc.section.depth=0\" --no-xmllint --asciidoc-opts:g" -i Makefile
#		cd ${WRKSRC} && gsed -e "s:a2x --no-xmllint --asciidoc-opts:a2x --xsltproc-opts \"--stringparam toc.section.depth 0\" --no-xmllint --asciidoc-opts:g" -i Makefile
#		cd ${WRKSRC} && gsed -e "s:a2x --no-xmllint --asciidoc-opts:/pkg/bin/a2x --no-xmllint --asciidoc-opts:g" -i Makefile

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS} DESTDIR=${BLDPRE} install

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

#.include "../../textproc/libxslt/xsltproc-nonet.mk"
.include "../../mk/bsd.pkg.mk"
