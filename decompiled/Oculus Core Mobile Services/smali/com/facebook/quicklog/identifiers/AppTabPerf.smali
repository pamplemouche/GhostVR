.class public Lcom/facebook/quicklog/identifiers/AppTabPerf;
.super Ljava/lang/Object;
.source "AppTabPerf.java"


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
    .line 54
    packed-switch p0, :pswitch_data_0

    .line 85
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 56
    :pswitch_1
    const-string v0, "APP_TAB_PERF_FB_FEED"

    goto :goto_0

    .line 58
    :pswitch_2
    const-string v0, "APP_TAB_PERF_FB_FRIEND_REQUESTS_TAB"

    goto :goto_0

    .line 60
    :pswitch_3
    const-string v0, "APP_TAB_PERF_FB_MESSAGES_TAB"

    goto :goto_0

    .line 62
    :pswitch_4
    const-string v0, "APP_TAB_PERF_FB_NOTIFICATIONS_TAB"

    goto :goto_0

    .line 64
    :pswitch_5
    const-string v0, "APP_TAB_PERF_FB_BOOKMARKS"

    goto :goto_0

    .line 66
    :pswitch_6
    const-string v0, "APP_TAB_PERF_LOAD_TAB_MESSAGE"

    goto :goto_0

    .line 68
    :pswitch_7
    const-string v0, "APP_TAB_PERF_LOAD_TAB_MESSAGE_NOANIM"

    goto :goto_0

    .line 70
    :pswitch_8
    const-string v0, "APP_TAB_PERF_LOAD_TAB_NOTIFICATIONS"

    goto :goto_0

    .line 72
    :pswitch_9
    const-string v0, "APP_TAB_PERF_LOAD_TAB_NOTIFICATIONS_NOANIM"

    goto :goto_0

    .line 74
    :pswitch_a
    const-string v0, "APP_TAB_PERF_LOAD_TAB_BOOKMARK_NOANIM"

    goto :goto_0

    .line 76
    :pswitch_b
    const-string v0, "APP_TAB_PERF_LOAD_TAB_BOOKMARK"

    goto :goto_0

    .line 78
    :pswitch_c
    const-string v0, "APP_TAB_PERF_NOP_MARKER"

    goto :goto_0

    .line 80
    :pswitch_d
    const-string v0, "APP_TAB_PERF_LOAD_TAB_NOTIFICATIONS_FRIENDING"

    goto :goto_0

    .line 82
    :pswitch_e
    const-string v0, "APP_TAB_PERF_LOAD_TAB_NOTIFICATIONS_FRIENDING_NOANIM"

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
