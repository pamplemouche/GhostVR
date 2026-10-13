.class public Lcom/facebook/quicklog/identifiers/Video;
.super Ljava/lang/Object;
.source "Video.java"


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
    .line 144
    packed-switch p0, :pswitch_data_0

    .line 249
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 146
    :pswitch_1
    const-string v0, "VIDEO_INITIALIZATION"

    goto :goto_0

    .line 148
    :pswitch_2
    const-string v0, "VIDEO_CHANNEL_VIDEO_PLAYER"

    goto :goto_0

    .line 150
    :pswitch_3
    const-string v0, "VIDEO_FULLSCREEN_TRANSITION"

    goto :goto_0

    .line 152
    :pswitch_4
    const-string v0, "VIDEO_PREFETCH_ITEM"

    goto :goto_0

    .line 154
    :pswitch_5
    const-string v0, "VIDEO_VIDEO_HOME_LOADING"

    goto :goto_0

    .line 156
    :pswitch_6
    const-string v0, "VIDEO_VIDEO_HOME_FUNNEL"

    goto :goto_0

    .line 158
    :pswitch_7
    const-string v0, "VIDEO_VIDEO_PLAYBACK_EVENT"

    goto :goto_0

    .line 160
    :pswitch_8
    const-string v0, "VIDEO_CHANNEL_TRANSITION"

    goto :goto_0

    .line 162
    :pswitch_9
    const-string v0, "VIDEO_VIDEO_UNUSED"

    goto :goto_0

    .line 164
    :pswitch_a
    const-string v0, "VIDEO_VIDEO_UNUSED_II"

    goto :goto_0

    .line 166
    :pswitch_b
    const-string v0, "VIDEO_QUALITY_SUMMARY_EVENT"

    goto :goto_0

    .line 168
    :pswitch_c
    const-string v0, "VIDEO_VIDEO_PLAYBACK_STALL"

    goto :goto_0

    .line 170
    :pswitch_d
    const-string v0, "VIDEO_EXOPLAYER_DO_SOME_WORK"

    goto :goto_0

    .line 172
    :pswitch_e
    const-string v0, "VIDEO_SOCIAL_PLAYER_TRANSITION"

    goto :goto_0

    .line 174
    :pswitch_f
    const-string v0, "VIDEO_DISMISS_VIDEO"

    goto :goto_0

    .line 176
    :pswitch_10
    const-string v0, "VIDEO_PLAYER_BACK_BTN_PRESSED"

    goto :goto_0

    .line 178
    :pswitch_11
    const-string v0, "VIDEO_RICH_VIDEO_PLAYER_EVENTS"

    goto :goto_0

    .line 180
    :pswitch_12
    const-string v0, "VIDEO_JEWEL_NOTIFICATION_TO_PLAYBACK"

    goto :goto_0

    .line 182
    :pswitch_13
    const-string v0, "VIDEO_PREPARE_FEED_VIDEO"

    goto :goto_0

    .line 184
    :pswitch_14
    const-string v0, "VIDEO_HTTP_TRANSFER_EVENT"

    goto :goto_0

    .line 186
    :pswitch_15
    const-string v0, "VIDEO_WATCH_TAB_E2E_TTI"

    goto :goto_0

    .line 188
    :pswitch_16
    const-string v0, "VIDEO_VIDEO_PLAYBACK_STATE"

    goto :goto_0

    .line 190
    :pswitch_17
    const-string v0, "VIDEO_MOUNT_FEED_VIDEO"

    goto :goto_0

    .line 192
    :pswitch_18
    const-string v0, "VIDEO_ABR_DECISION"

    goto :goto_0

    .line 194
    :pswitch_19
    const-string v0, "VIDEO_RICH_VIDEO_PLAYER_EVENTS_WATCH_FEED"

    goto :goto_0

    .line 196
    :pswitch_1a
    const-string v0, "VIDEO_VIDEO_QUALITIES"

    goto :goto_0

    .line 198
    :pswitch_1b
    const-string v0, "VIDEO_WATCH_TAB_SCROLL_PERF"

    goto :goto_0

    .line 200
    :pswitch_1c
    const-string v0, "VIDEO_PLAYER_INIT"

    goto :goto_0

    .line 202
    :pswitch_1d
    const-string v0, "VIDEO_BIND_PLAYER_SERVICE"

    goto :goto_0

    .line 204
    :pswitch_1e
    const-string v0, "VIDEO_PLAYER_ACTION"

    goto :goto_0

    .line 206
    :pswitch_1f
    const-string v0, "VIDEO_VIDEO_PLAYBACK_STALL_DATA"

    goto :goto_0

    .line 208
    :pswitch_20
    const-string v0, "VIDEO_VIDEO_FETCH_REQUEST_EVENT"

    goto :goto_0

    .line 210
    :pswitch_21
    const-string v0, "VIDEO_THUMBNAIL"

    goto :goto_0

    .line 212
    :pswitch_22
    const-string v0, "VIDEO_HERO_MODULE_INIT"

    goto :goto_0

    .line 214
    :pswitch_23
    const-string v0, "VIDEO_HERO_MODULE_DOWNLOAD"

    goto :goto_0

    .line 216
    :pswitch_24
    const-string v0, "VIDEO_RVP_PLUGIN_LOAD"

    goto :goto_0

    .line 218
    :pswitch_25
    const-string v0, "VIDEO_VIDEO_PROFILER_START"

    goto :goto_0

    .line 220
    :pswitch_26
    const-string v0, "VIDEO_SCURBBER"

    goto :goto_0

    .line 222
    :pswitch_27
    const-string v0, "VIDEO_STORY_VIDEO_PROFILER_START"

    goto :goto_0

    .line 224
    :pswitch_28
    const-string v0, "VIDEO_PARSE_SEGMENT_TIMELINE_ANDROID"

    goto :goto_0

    .line 226
    :pswitch_29
    const-string v0, "VIDEO_HERO_LIVE_MODULE_DOWNLOAD"

    goto :goto_0

    .line 228
    :pswitch_2a
    const-string v0, "VIDEO_CHANNEL_FEED_UP_NEXT_TTI_ANDROID_VIDEO"

    goto :goto_0

    .line 230
    :pswitch_2b
    const-string v0, "VIDEO_BIND_FEED_VIDEO"

    goto/16 :goto_0

    .line 232
    :pswitch_2c
    const-string v0, "VIDEO_START_AD_BREAK_ANDROID"

    goto/16 :goto_0

    .line 234
    :pswitch_2d
    const-string v0, "VIDEO_ENTER_AD_BREAK_RESPONSIVENESS"

    goto/16 :goto_0

    .line 236
    :pswitch_2e
    const-string v0, "VIDEO_MOUNT_GROOT_VIDEO_COMPONENT"

    goto/16 :goto_0

    .line 238
    :pswitch_2f
    const-string v0, "VIDEO_GROOT_VIDEO_TRANSITION"

    goto/16 :goto_0

    .line 240
    :pswitch_30
    const-string v0, "VIDEO_GROOT_WATCH_ARLTW_TRANSITION"

    goto/16 :goto_0

    .line 242
    :pswitch_31
    const-string v0, "VIDEO_WARION_ARLTW_TTI"

    goto/16 :goto_0

    .line 244
    :pswitch_32
    const-string v0, "VIDEO_GROOT_DECISION_EVENT"

    goto/16 :goto_0

    .line 246
    :pswitch_33
    const-string v0, "VIDEO_WATCH_ARLTW_RELATED_VIDEO_SCROLL_PERF"

    goto/16 :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_0
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_0
        :pswitch_2d
        :pswitch_0
        :pswitch_0
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
    .end packed-switch
.end method
