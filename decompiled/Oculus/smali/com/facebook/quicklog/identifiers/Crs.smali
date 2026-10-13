.class public Lcom/facebook/quicklog/identifiers/Crs;
.super Ljava/lang/Object;
.source "Crs.java"


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
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 40
    :pswitch_1
    const-string v0, "CRS_PERF_COLD_START_ANDROID"

    goto :goto_0

    .line 42
    :pswitch_2
    const-string v0, "CRS_PERF_WARM_START_ANDROID"

    goto :goto_0

    .line 44
    :pswitch_3
    const-string v0, "CRS_BACKGROUND_START_ANDROID"

    goto :goto_0

    .line 46
    :pswitch_4
    const-string v0, "CRS_MAIN_FEED_E2E_ANDROID"

    goto :goto_0

    .line 48
    :pswitch_5
    const-string v0, "CRS_FEED_LOAD_ANDROID"

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
