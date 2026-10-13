.class public Lcom/facebook/quicklog/identifiers/Newsfeed;
.super Ljava/lang/Object;
.source "Newsfeed.java"


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

    .line 54
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 43
    :pswitch_1
    const-string v0, "NEWSFEED_FEED_START_TO_TTI"

    goto :goto_0

    .line 45
    :pswitch_2
    const-string v0, "NEWSFEED_SCROLL_STATE_TRACKER_DATA_ANDROID"

    goto :goto_0

    .line 47
    :pswitch_3
    const-string v0, "NEWSFEED_CONTEXTUAL_CONFIG_QPL"

    goto :goto_0

    .line 49
    :pswitch_4
    const-string v0, "NEWSFEED_VIEWPOINT_SPONSORED_IMPRESSION_FB4A"

    goto :goto_0

    .line 51
    :pswitch_5
    const-string v0, "NEWSFEED_DEPRECATED_CODE_VALIDATOR_ANDROID"

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
