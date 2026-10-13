.class public Lcom/facebook/quicklog/identifiers/IgNetworkPerf;
.super Ljava/lang/Object;
.source "IgNetworkPerf.java"


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
    .line 40
    packed-switch p0, :pswitch_data_0

    .line 55
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 42
    :pswitch_1
    const-string v0, "IG_NETWORK_PERF_QUEUE_TIME"

    goto :goto_0

    .line 44
    :pswitch_2
    const-string v0, "IG_NETWORK_PERF_REQUEST_ADDED"

    goto :goto_0

    .line 46
    :pswitch_3
    const-string v0, "IG_NETWORK_PERF_REQUEST_DISPATCHED"

    goto :goto_0

    .line 48
    :pswitch_4
    const-string v0, "IG_NETWORK_PERF_BANDWIDTH_CALCULATION"

    goto :goto_0

    .line 50
    :pswitch_5
    const-string v0, "IG_NETWORK_PERF_PAYLOAD_SCHEDULE_CALCULATION"

    goto :goto_0

    .line 52
    :pswitch_6
    const-string v0, "IG_NETWORK_PERF_REQUEST_CAP_BANDWIDTH_CALCULATION"

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
