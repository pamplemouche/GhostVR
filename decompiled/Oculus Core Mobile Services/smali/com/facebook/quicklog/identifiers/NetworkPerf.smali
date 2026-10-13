.class public Lcom/facebook/quicklog/identifiers/NetworkPerf;
.super Ljava/lang/Object;
.source "NetworkPerf.java"


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
    sparse-switch p0, :sswitch_data_0

    .line 50
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 41
    :sswitch_0
    const-string v0, "NETWORK_PERF_HTTP_FLOW_TOP"

    goto :goto_0

    .line 43
    :sswitch_1
    const-string v0, "NETWORK_PERF_CONSECUTIVE_FAILED_REQUESTS"

    goto :goto_0

    .line 45
    :sswitch_2
    const-string v0, "NETWORK_PERF_BLACKOUT_DURATION"

    goto :goto_0

    .line 47
    :sswitch_3
    const-string v0, "NETWORK_PERF_REQUESTS"

    goto :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
    .end sparse-switch
.end method
