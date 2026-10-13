.class public Lcom/facebook/quicklog/identifiers/FriendsNearby;
.super Ljava/lang/Object;
.source "FriendsNearby.java"


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
    .line 50
    packed-switch p0, :pswitch_data_0

    .line 75
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 52
    :pswitch_0
    const-string v0, "FRIENDS_NEARBY_DASHBOARD_INIT_LOCATION"

    goto :goto_0

    .line 54
    :pswitch_1
    const-string v0, "FRIENDS_NEARBY_DASHBOARD_REFRESH_LOCATION"

    goto :goto_0

    .line 56
    :pswitch_2
    const-string v0, "FRIENDS_NEARBY_DASHBOARD_FETCH_DATA"

    goto :goto_0

    .line 58
    :pswitch_3
    const-string v0, "FRIENDS_NEARBY_DASHBOARD_FETCH_DATA1"

    goto :goto_0

    .line 60
    :pswitch_4
    const-string v0, "FRIENDS_NEARBY_DASHBOARD_FETCH_DATA2"

    goto :goto_0

    .line 62
    :pswitch_5
    const-string v0, "FRIENDS_NEARBY_DASHBOARD_VIEW_RENDER"

    goto :goto_0

    .line 64
    :pswitch_6
    const-string v0, "FRIENDS_NEARBY_DASHBOARD_INIT"

    goto :goto_0

    .line 66
    :pswitch_7
    const-string v0, "FRIENDS_NEARBY_DASHBOARD_TTI"

    goto :goto_0

    .line 68
    :pswitch_8
    const-string v0, "FRIENDS_NEARBY_PING_DELETE"

    goto :goto_0

    .line 70
    :pswitch_9
    const-string v0, "FRIENDS_NEARBY_PING_WRITE"

    goto :goto_0

    .line 72
    :pswitch_a
    const-string v0, "FRIENDS_NEARBY_PING_FETCH_EXIST"

    goto :goto_0

    .line 50
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
