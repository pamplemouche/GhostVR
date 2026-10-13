.class public Lcom/facebook/quicklog/identifiers/WaPerf;
.super Ljava/lang/Object;
.source "WaPerf.java"


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
    .line 38
    packed-switch p0, :pswitch_data_0

    .line 51
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    const-string v0, "WA_PERF_COLD_START_ANDROID"

    goto :goto_0

    .line 42
    :pswitch_1
    const-string v0, "WA_PERF_WARM_START_ANDROID"

    goto :goto_0

    .line 44
    :pswitch_2
    const-string v0, "WA_PERF_HOT_START_ANDROID"

    goto :goto_0

    .line 46
    :pswitch_3
    const-string v0, "WA_PERF_CAMERA_OPEN"

    goto :goto_0

    .line 48
    :pswitch_4
    const-string v0, "WA_PERF_CHAT_OPEN"

    goto :goto_0

    .line 38
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
