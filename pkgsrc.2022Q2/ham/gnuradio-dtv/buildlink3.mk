# $NetBSD: buildlink3.mk,v 1.5 2022/03/12 23:04:45 tnn Exp $

BUILDLINK_TREE+=	gnuradio-dtv

.if !defined(GNURADIO_DTV_BUILDLINK3_MK)
GNURADIO_DTV_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnuradio-dtv+=	gnuradio-dtv>=3.10.1.1
BUILDLINK_PKGSRCDIR.gnuradio-dtv?=	../../ham/gnuradio-dtv
.endif # GNURADIO_DTV_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnuradio-dtv
