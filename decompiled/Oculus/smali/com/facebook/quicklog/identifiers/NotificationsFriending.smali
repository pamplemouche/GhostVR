.class public Lcom/facebook/quicklog/identifiers/NotificationsFriending;
.super Ljava/lang/Object;
.source "NotificationsFriending.java"


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
    .line 36
    packed-switch p0, :pswitch_data_0

    .line 47
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 38
    :pswitch_1
    const-string v0, "NOTIFICATIONS_FRIENDING_PULL_TO_REFRESH_LOAD_TIME"

    goto :goto_0

    .line 40
    :pswitch_2
    const-string v0, "NOTIFICATIONS_FRIENDING_NOTIF_LIST_LOAD_TIME_COLD"

    goto :goto_0

    .line 42
    :pswitch_3
    const-string v0, "NOTIFICATIONS_FRIENDING_NOTIF_LIST_LOAD_TIME_WARM"

    goto :goto_0

    .line 44
    :pswitch_4
    const-string v0, "NOTIFICATIONS_FRIENDING_NOTIF_SCROLL_LOAD"

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
