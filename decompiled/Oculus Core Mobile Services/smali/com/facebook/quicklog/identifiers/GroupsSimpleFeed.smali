.class public Lcom/facebook/quicklog/identifiers/GroupsSimpleFeed;
.super Ljava/lang/Object;
.source "GroupsSimpleFeed.java"


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
    .line 49
    packed-switch p0, :pswitch_data_0

    .line 66
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    const-string v0, "GROUPS_SIMPLE_FEED_LOAD_START"

    goto :goto_0

    .line 53
    :pswitch_1
    const-string v0, "GROUPS_SIMPLE_FEED_LOAD_SUCCESS"

    goto :goto_0

    .line 55
    :pswitch_2
    const-string v0, "GROUPS_SIMPLE_FEED_ON_TTI"

    goto :goto_0

    .line 57
    :pswitch_3
    const-string v0, "GROUPS_SIMPLE_FEED_ON_CACHE_HIT"

    goto :goto_0

    .line 59
    :pswitch_4
    const-string v0, "GROUPS_SIMPLE_FEED_ON_USER_CANCEL"

    goto :goto_0

    .line 61
    :pswitch_5
    const-string v0, "GROUPS_SIMPLE_FEED_FETCH_TAIL"

    goto :goto_0

    .line 63
    :pswitch_6
    const-string v0, "GROUPS_SIMPLE_FEED_PULL_TO_REFRESH"

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
