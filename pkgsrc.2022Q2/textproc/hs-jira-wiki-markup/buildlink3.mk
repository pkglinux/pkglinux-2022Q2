# $NetBSD: buildlink3.mk,v 1.7 2022/02/26 03:58:28 pho Exp $

BUILDLINK_TREE+=	hs-jira-wiki-markup

.if !defined(HS_JIRA_WIKI_MARKUP_BUILDLINK3_MK)
HS_JIRA_WIKI_MARKUP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-jira-wiki-markup+=	hs-jira-wiki-markup>=1.4.0
BUILDLINK_ABI_DEPENDS.hs-jira-wiki-markup+=	hs-jira-wiki-markup>=1.4.0nb2
BUILDLINK_PKGSRCDIR.hs-jira-wiki-markup?=	../../textproc/hs-jira-wiki-markup
.endif	# HS_JIRA_WIKI_MARKUP_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-jira-wiki-markup
