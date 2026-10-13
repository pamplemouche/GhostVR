.class public Lcom/facebook/quicklog/identifiers/VideoProfiler;
.super Ljava/lang/Object;
.source "VideoProfiler.java"


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
    .line 39
    packed-switch p0, :pswitch_data_0

    .line 52
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 41
    :pswitch_0
    const-string v0, "VIDEO_PROFILER_ABR_DECISION"

    goto :goto_0

    .line 43
    :pswitch_1
    const-string v0, "VIDEO_PROFILER_HTTP_TRANSFER_EVENT"

    goto :goto_0

    .line 45
    :pswitch_2
    const-string v0, "VIDEO_PROFILER_VIDEO_PLAYBACK_STATE"

    goto :goto_0

    .line 47
    :pswitch_3
    const-string v0, "VIDEO_PROFILER_VIDEO_QUALITIES"

    goto :goto_0

    .line 49
    :pswitch_4
    const-string v0, "VIDEO_PROFILER_VIDEO_PROFILER_SUMMARY"

    goto :goto_0

    .line 39
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
