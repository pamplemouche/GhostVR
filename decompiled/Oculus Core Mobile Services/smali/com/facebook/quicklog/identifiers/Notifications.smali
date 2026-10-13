.class public Lcom/facebook/quicklog/identifiers/Notifications;
.super Ljava/lang/Object;
.source "Notifications.java"


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
    .line 99
    packed-switch p0, :pswitch_data_0

    .line 162
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 101
    :pswitch_1
    const-string v0, "NOTIFICATIONS_NOTIF_GET_FROM_DISK"

    goto :goto_0

    .line 103
    :pswitch_2
    const-string v0, "NOTIFICATIONS_NOTIF_FULL_FETCH_FROM_SERVER"

    goto :goto_0

    .line 105
    :pswitch_3
    const-string v0, "NOTIFICATIONS_NOTIF_NEW_FETCH_FROM_SERVER"

    goto :goto_0

    .line 107
    :pswitch_4
    const-string v0, "NOTIFICATIONS_POLL_NOTIF"

    goto :goto_0

    .line 109
    :pswitch_5
    const-string v0, "NOTIFICATIONS_PULL_TO_REFRESH_LOAD_TIME"

    goto :goto_0

    .line 111
    :pswitch_6
    const-string v0, "NOTIFICATIONS_NOTIF_JSON_DESERIALIZE"

    goto :goto_0

    .line 113
    :pswitch_7
    const-string v0, "NOTIFICATIONS_NOTIF_LOCKSCREEN_PERMALINK_LOAD_TIME"

    goto :goto_0

    .line 115
    :pswitch_8
    const-string v0, "NOTIFICATIONS_NOTIF_PERMALINK_REFRESH_STORY_TIME"

    goto :goto_0

    .line 117
    :pswitch_9
    const-string v0, "NOTIFICATIONS_NOTIF_LIST_LOAD_TIME_COLD"

    goto :goto_0

    .line 119
    :pswitch_a
    const-string v0, "NOTIFICATIONS_NOTIF_LIST_LOAD_TIME_WARM"

    goto :goto_0

    .line 121
    :pswitch_b
    const-string v0, "NOTIFICATIONS_NOTIF_SCROLL_LOAD"

    goto :goto_0

    .line 123
    :pswitch_c
    const-string v0, "NOTIFICATIONS_SHOW_NOTIFICATION_IN_SYSTEM_TRAY"

    goto :goto_0

    .line 125
    :pswitch_d
    const-string v0, "NOTIFICATIONS_OPEN_NOTIFICATION_TAB_TTI"

    goto :goto_0

    .line 127
    :pswitch_e
    const-string v0, "NOTIFICATIONS_NOTIFICATION_SYNC_ERROR"

    goto :goto_0

    .line 129
    :pswitch_f
    const-string v0, "NOTIFICATIONS_PERMALINK_REDIRECT_FALLBACK_URL"

    goto :goto_0

    .line 131
    :pswitch_10
    const-string v0, "NOTIFICATIONS_NOTIFICATION_HANDLER"

    goto :goto_0

    .line 133
    :pswitch_11
    const-string v0, "NOTIFICATIONS_MQTT_WAKE_UP"

    goto :goto_0

    .line 135
    :pswitch_12
    const-string v0, "NOTIFICATIONS_NOTIFICATIONS_PTR_TTI"

    goto :goto_0

    .line 137
    :pswitch_13
    const-string v0, "NOTIFICATIONS_NOTIFICATIONS_TAIL_LOAD_TTI"

    goto :goto_0

    .line 139
    :pswitch_14
    const-string v0, "NOTIFICATIONS_NOTIFICATION_HEAD_LOAD"

    goto :goto_0

    .line 141
    :pswitch_15
    const-string v0, "NOTIFICATIONS_PERMALINK_NOTIFICATION_HEAD_LOAD"

    goto :goto_0

    .line 143
    :pswitch_16
    const-string v0, "NOTIFICATIONS_PERMALINK_IN_APP_NOTIFICATION_HEAD_LOAD"

    goto :goto_0

    .line 145
    :pswitch_17
    const-string v0, "NOTIFICATIONS_SEE_POST_FROM_HEAD_LOAD"

    goto :goto_0

    .line 147
    :pswitch_18
    const-string v0, "NOTIFICATIONS_PERMALINK_FROM_PRELOAD_CAROUSEL_LOAD"

    goto :goto_0

    .line 149
    :pswitch_19
    const-string v0, "NOTIFICATIONS_PREINIT_NOTIFICATIONS_TAB"

    goto :goto_0

    .line 151
    :pswitch_1a
    const-string v0, "NOTIFICATIONS_TIME_TILL_BADGE"

    goto :goto_0

    .line 153
    :pswitch_1b
    const-string v0, "NOTIFICATIONS_NOTIFICATIONS_TAB_TTRC"

    goto :goto_0

    .line 155
    :pswitch_1c
    const-string v0, "NOTIFICATIONS_CREATE_LAUNCH_CONFIG"

    goto :goto_0

    .line 157
    :pswitch_1d
    const-string v0, "NOTIFICATIONS_NOTIF_DELTA_ONLY_FETCH"

    goto :goto_0

    .line 159
    :pswitch_1e
    const-string v0, "NOTIFICATIONS_CONVERSATION_HUB_LOAD"

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_1e
    .end packed-switch
.end method
