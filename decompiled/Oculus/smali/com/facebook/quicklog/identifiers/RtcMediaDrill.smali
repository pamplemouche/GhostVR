.class public Lcom/facebook/quicklog/identifiers/RtcMediaDrill;
.super Ljava/lang/Object;
.source "RtcMediaDrill.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMarkerName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    packed-switch p0, :pswitch_data_0

    .line 56
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 45
    :pswitch_0
    const-string v0, "RTC_MEDIA_DRILL_MEDIA_DRILL"

    goto :goto_0

    .line 47
    :pswitch_1
    const-string v0, "RTC_MEDIA_DRILL_RESAMPLING_DRILL"

    goto :goto_0

    .line 49
    :pswitch_2
    const-string v0, "RTC_MEDIA_DRILL_OPUS_CODEC_DRILL"

    goto :goto_0

    .line 51
    :pswitch_3
    const-string v0, "RTC_MEDIA_DRILL_VP8_CODEC_DRILL"

    goto :goto_0

    .line 53
    :pswitch_4
    const-string v0, "RTC_MEDIA_DRILL_H264_CODEC_DRILL"

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
