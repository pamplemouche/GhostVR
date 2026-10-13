.class public Lcom/facebook/quicklog/identifiers/Kototoro;
.super Ljava/lang/Object;
.source "Kototoro.java"


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
    .line 41
    packed-switch p0, :pswitch_data_0

    .line 56
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 43
    :pswitch_1
    const-string v0, "FEED"

    goto :goto_0

    .line 45
    :pswitch_2
    const-string v0, "KOTOTORO_KOTOTORO_COLD_START"

    goto :goto_0

    .line 47
    :pswitch_3
    const-string v0, "KOTOTORO_KOTOTORO_FEED_VIDEO_DOWNLOAD"

    goto :goto_0

    .line 49
    :pswitch_4
    const-string v0, "KOTOTORO_KOTOTORO_WARM_START"

    goto :goto_0

    .line 51
    :pswitch_5
    const-string v0, "KOTOTORO_KOTOTORO_HOT_START"

    goto :goto_0

    .line 53
    :pswitch_6
    const-string v0, "KOTOTORO_KOTOTORO_FEED_DOWNLOAD_FIRST_TIME"

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
