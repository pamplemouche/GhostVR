.class public Lcom/facebook/quicklog/identifiers/Live;
.super Ljava/lang/Object;
.source "Live.java"


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
    .line 70
    packed-switch p0, :pswitch_data_0

    .line 105
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 72
    :pswitch_1
    const-string v0, "LIVE_ANDROID_RTMP_HANDLE_FRAME"

    goto :goto_0

    .line 74
    :pswitch_2
    const-string v0, "LIVE_UNUSED_II"

    goto :goto_0

    .line 76
    :pswitch_3
    const-string v0, "LIVE_UNUSED_I"

    goto :goto_0

    .line 78
    :pswitch_4
    const-string v0, "LIVE_ANDROID_RTMP_LIVE_STREAMING_HANDLE_FRAME"

    goto :goto_0

    .line 80
    :pswitch_5
    const-string v0, "LIVE_ANDROID_RTMP_DISK_RECORDING_HANDLE_FRAME"

    goto :goto_0

    .line 82
    :pswitch_6
    const-string v0, "LIVE_COMMENTS_TTI"

    goto :goto_0

    .line 84
    :pswitch_7
    const-string v0, "LIVE_LIVING_ROOM_VIDEO_STATE_TTI"

    goto :goto_0

    .line 86
    :pswitch_8
    const-string v0, "LIVE_LIVING_ROOM_JOIN_TTL"

    goto :goto_0

    .line 88
    :pswitch_9
    const-string v0, "LIVE_VIEWER_FULLSCREEN_VIDEO_ENTITY_TTL"

    goto :goto_0

    .line 90
    :pswitch_a
    const-string v0, "LIVE_BROADCAST_RECORD_VIDEO_ENTITY_TTL"

    goto :goto_0

    .line 92
    :pswitch_b
    const-string v0, "LIVE_BROADCAST_COMPOSER_NETWORK_CONNECT_TTL"

    goto :goto_0

    .line 94
    :pswitch_c
    const-string v0, "LIVE_LIVE_ANDROID_CONTROLLER_LIFECYCLE"

    goto :goto_0

    .line 96
    :pswitch_d
    const-string v0, "LIVE_LIVING_ROOM_BUMPER_ANIMATION"

    goto :goto_0

    .line 98
    :pswitch_e
    const-string v0, "LIVE_LIVING_ROOM_ADD_VIDEO_TAB_TTL"

    goto :goto_0

    .line 100
    :pswitch_f
    const-string v0, "LIVE_LIVE_EVENT_DECAY_ANIMATION"

    goto :goto_0

    .line 102
    :pswitch_10
    const-string v0, "LIVE_LIVING_ROOM_CONVERSATION_TOGGLE_ANDROID"

    goto :goto_0

    .line 70
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
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method
