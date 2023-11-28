# $NetBSD$
# XXX
# XXX This file was created automatically using createbuildlink-3.18.
# XXX After this file has been verified as correct, the comment lines
# XXX beginning with "XXX" should be removed.  Please do not commit
# XXX unverified buildlink3.mk files.
# XXX
# XXX Packages that only install static libraries or headers should
# XXX include the following line:
# XXX
# XXX	BUILDLINK_DEPMETHOD.lm-sensors?=	build

BUILDLINK_TREE+=	lm-sensors

.if !defined(LM_SENSORS_BUILDLINK3_MK)
LM_SENSORS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.lm-sensors+=	lm-sensors>=3.6.0
BUILDLINK_PKGSRCDIR.lm-sensors?=	../../linux/lm-sensors
.endif	# LM_SENSORS_BUILDLINK3_MK

BUILDLINK_TREE+=	-lm-sensors
