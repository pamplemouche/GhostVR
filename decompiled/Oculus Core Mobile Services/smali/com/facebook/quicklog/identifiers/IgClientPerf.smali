.class public Lcom/facebook/quicklog/identifiers/IgClientPerf;
.super Ljava/lang/Object;
.source "IgClientPerf.java"


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
    .line 45
    sparse-switch p0, :sswitch_data_0

    .line 60
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 47
    :sswitch_0
    const-string v0, "IG_CLIENT_PERF_IMAGE_DOWNLOAD"

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v0, "IG_CLIENT_PERF_NOTIFICATION_PREFETCH"

    goto :goto_0

    .line 51
    :sswitch_2
    const-string v0, "IG_CLIENT_PERF_APP_START"

    goto :goto_0

    .line 53
    :sswitch_3
    const-string v0, "IG_CLIENT_PERF_DOWNLOAD_MODULES"

    goto :goto_0

    .line 55
    :sswitch_4
    const-string v0, "IG_CLIENT_PERF_LOAD_MODULE"

    goto :goto_0

    .line 57
    :sswitch_5
    const-string v0, "IG_CLIENT_PERF_CRONET_USAGE"

    goto :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0xb -> :sswitch_2
        0xe -> :sswitch_3
        0x14 -> :sswitch_4
        0x17 -> :sswitch_5
    .end sparse-switch
.end method
