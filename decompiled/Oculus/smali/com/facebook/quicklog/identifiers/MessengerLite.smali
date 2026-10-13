.class public Lcom/facebook/quicklog/identifiers/MessengerLite;
.super Ljava/lang/Object;
.source "MessengerLite.java"


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
    .line 81
    packed-switch p0, :pswitch_data_0

    .line 134
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 83
    :pswitch_1
    const-string v0, "MESSENGER_LITE_COMPONENT_TTI"

    goto :goto_0

    .line 85
    :pswitch_2
    const-string v0, "MESSENGER_LITE_SQLITE_TIME_TO_UPGRADE_DB"

    goto :goto_0

    .line 87
    :pswitch_3
    const-string v0, "MESSENGER_LITE_NETWORK_REQUEST"

    goto :goto_0

    .line 89
    :pswitch_4
    const-string v0, "MESSENGER_LITE_MEDIA_DOWNLOAD"

    goto :goto_0

    .line 91
    :pswitch_5
    const-string v0, "MESSENGER_LITE_MEDIA_UPLOAD_ANDROID"

    goto :goto_0

    .line 93
    :pswitch_6
    const-string v0, "MESSENGER_LITE_MLITE_TIME_TO_LOAD_THREAD_LIST"

    goto :goto_0

    .line 95
    :pswitch_7
    const-string v0, "MESSENGER_LITE_SQLITE_TIME_TO_MIGRATE_DATA"

    goto :goto_0

    .line 97
    :pswitch_8
    const-string v0, "MESSENGER_LITE_MLITE_RESOURCES_WAIT_TIME"

    goto :goto_0

    .line 99
    :pswitch_9
    const-string v0, "MESSENGER_LITE_MESSENGER_LITE_VIDEO_TRANSCODE_TIME"

    goto :goto_0

    .line 101
    :pswitch_a
    const-string v0, "MESSENGER_LITE_API_EXECUTE"

    goto :goto_0

    .line 103
    :pswitch_b
    const-string v0, "MESSENGER_LITE_SQLITE_TIME_TO_CREATE_DB"

    goto :goto_0

    .line 105
    :pswitch_c
    const-string v0, "MESSENGER_LITE_RTC_INCOMING_CALL_ANSWERED"

    goto :goto_0

    .line 107
    :pswitch_d
    const-string v0, "MESSENGER_LITE_LOGIN"

    goto :goto_0

    .line 109
    :pswitch_e
    const-string v0, "MESSENGER_LITE_DB_OPERATION"

    goto :goto_0

    .line 111
    :pswitch_f
    const-string v0, "MESSENGER_LITE_UI_COLD_START_TTI"

    goto :goto_0

    .line 113
    :pswitch_10
    const-string v0, "MESSENGER_LITE_SQLITE_TIME_WAL_CHECKPOINT"

    goto :goto_0

    .line 115
    :pswitch_11
    const-string v0, "MESSENGER_LITE_SQLITE_TIME_PROFILE_IN_WAL_MODE"

    goto :goto_0

    .line 117
    :pswitch_12
    const-string v0, "MESSENGER_LITE_SQLITE_TIME_PROFILE_IN_JOURNAL_MODE"

    goto :goto_0

    .line 119
    :pswitch_13
    const-string v0, "MESSENGER_LITE_COLD_START_TO_UI"

    goto :goto_0

    .line 121
    :pswitch_14
    const-string v0, "MESSENGER_LITE_COLD_START_TO_THREAD_VIEW"

    goto :goto_0

    .line 123
    :pswitch_15
    const-string v0, "MESSENGER_LITE_ANY_THREAD_LIST"

    goto :goto_0

    .line 125
    :pswitch_16
    const-string v0, "MESSENGER_LITE_FAST_LUKEWARM_START_TO_THREAD_LIST"

    goto :goto_0

    .line 127
    :pswitch_17
    const-string v0, "MESSENGER_LITE_SLOW_LUKEWARM_START_TO_THREAD_LIST"

    goto :goto_0

    .line 129
    :pswitch_18
    const-string v0, "MESSENGER_LITE_THREAD_LIST_TO_THREAD_VIEW"

    goto :goto_0

    .line 131
    :pswitch_19
    const-string v0, "MESSENGER_LITE_ANY_THREAD_VIEW"

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
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
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method
