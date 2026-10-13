.class public Lcom/facebook/quicklog/identifiers/Friending;
.super Ljava/lang/Object;
.source "Friending.java"


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
    .line 65
    packed-switch p0, :pswitch_data_0

    .line 104
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 67
    :pswitch_1
    const-string v0, "FRIENDING_LOCATION"

    goto :goto_0

    .line 69
    :pswitch_2
    const-string v0, "FRIENDING_SEARCH"

    goto :goto_0

    .line 71
    :pswitch_3
    const-string v0, "FRIENDING_FRIEND_REQUESTS_HARRISON_TAB_SWITCH_TTI"

    goto :goto_0

    .line 73
    :pswitch_4
    const-string v0, "FRIENDING_NUX_ADD_FRIENDS_STEP_TTI"

    goto :goto_0

    .line 75
    :pswitch_5
    const-string v0, "FRIENDING_FRIENDS_TAB_TTI_METRIC_NAME"

    goto :goto_0

    .line 77
    :pswitch_6
    const-string v0, "FRIENDING_REQUESTS_TAB_TTI_METRIC_NAME"

    goto :goto_0

    .line 79
    :pswitch_7
    const-string v0, "FRIENDING_SEARCH_TAB_TTI_METRIC_NAME"

    goto :goto_0

    .line 81
    :pswitch_8
    const-string v0, "FRIENDING_SUGGESTIONS_TAB_TTI_METRIC_NAME"

    goto :goto_0

    .line 83
    :pswitch_9
    const-string v0, "FRIENDING_FRIENDS_TAB_DISK_LOAD_METRIC_NAME"

    goto :goto_0

    .line 85
    :pswitch_a
    const-string v0, "FRIENDING_FRIENDS_TAB_NETWORK_LOAD_METRIC_NAME"

    goto :goto_0

    .line 87
    :pswitch_b
    const-string v0, "FRIENDING_FRIENDS_TAB_WITH_ACTIVE_TTI_METRIC_NAME"

    goto :goto_0

    .line 89
    :pswitch_c
    const-string v0, "FRIENDING_SUGGESTIONS_TAB_SCROLLING_METRIC_FB4A"

    goto :goto_0

    .line 91
    :pswitch_d
    const-string v0, "FRIENDING_TTRC_JEWEL_FB4A"

    goto :goto_0

    .line 93
    :pswitch_e
    const-string v0, "FRIENDING_TTRC_NUX_FB4A"

    goto :goto_0

    .line 95
    :pswitch_f
    const-string v0, "FRIENDING_DYNAMIC_FRIENDING_TAB_TTI_FB4A"

    goto :goto_0

    .line 97
    :pswitch_10
    const-string v0, "FRIENDING_DYNAMIC_FRIENDING_TAB_TTRC_FB4A"

    goto :goto_0

    .line 99
    :pswitch_11
    const-string v0, "FRIENDING_TTI_FRIENDING_TAB_FB4A"

    goto :goto_0

    .line 101
    :pswitch_12
    const-string v0, "FRIENDING_FRIENDS_TAB_TAIL_LOAD"

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_12
    .end packed-switch
.end method
