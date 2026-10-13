.class public Lcom/facebook/quicklog/identifiers/IgNavigationLatency;
.super Ljava/lang/Object;
.source "IgNavigationLatency.java"


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
    .line 62
    packed-switch p0, :pswitch_data_0

    .line 99
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 64
    :pswitch_1
    const-string v0, "IG_NAVIGATION_LATENCY_LOCATION_MAIN_FEED"

    goto :goto_0

    .line 66
    :pswitch_2
    const-string v0, "IG_NAVIGATION_LATENCY_COMMENT_THREAD"

    goto :goto_0

    .line 68
    :pswitch_3
    const-string v0, "IG_NAVIGATION_LATENCY_FEED_GALLERY"

    goto :goto_0

    .line 70
    :pswitch_4
    const-string v0, "IG_NAVIGATION_LATENCY_ACCOUNT_SWITCH"

    goto :goto_0

    .line 72
    :pswitch_5
    const-string v0, "IG_NAVIGATION_LATENCY_USER_LIST_LIKERS"

    goto :goto_0

    .line 74
    :pswitch_6
    const-string v0, "IG_NAVIGATION_LATENCY_USER_LIST_FOLLOW_REQUESTS"

    goto :goto_0

    .line 76
    :pswitch_7
    const-string v0, "IG_NAVIGATION_LATENCY_USER_LIST_FOLLOWERS"

    goto :goto_0

    .line 78
    :pswitch_8
    const-string v0, "IG_NAVIGATION_LATENCY_USER_LIST_FOLLOWING"

    goto :goto_0

    .line 80
    :pswitch_9
    const-string v0, "IG_NAVIGATION_LATENCY_NEWSFEED_YOU"

    goto :goto_0

    .line 82
    :pswitch_a
    const-string v0, "IG_NAVIGATION_LATENCY_DIRECT_INBOX"

    goto :goto_0

    .line 84
    :pswitch_b
    const-string v0, "IG_NAVIGATION_LATENCY_DIRECT_THREAD"

    goto :goto_0

    .line 86
    :pswitch_c
    const-string v0, "IG_NAVIGATION_LATENCY_EXPLORE_POPULAR"

    goto :goto_0

    .line 88
    :pswitch_d
    const-string v0, "IG_NAVIGATION_LATENCY_REEL_COMPOSER_CAMERA"

    goto :goto_0

    .line 90
    :pswitch_e
    const-string v0, "IG_NAVIGATION_LATENCY_FEED_GALLERY_CAMERA"

    goto :goto_0

    .line 92
    :pswitch_f
    const-string v0, "IG_NAVIGATION_LATENCY_URI_HANDLER"

    goto :goto_0

    .line 94
    :pswitch_10
    const-string v0, "IG_NAVIGATION_LATENCY_IGTV_BROWSER"

    goto :goto_0

    .line 96
    :pswitch_11
    const-string v0, "IG_NAVIGATION_LATENCY_IG_PROFILE"

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
