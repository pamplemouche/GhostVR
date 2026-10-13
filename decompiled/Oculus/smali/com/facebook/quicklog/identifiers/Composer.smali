.class public Lcom/facebook/quicklog/identifiers/Composer;
.super Ljava/lang/Object;
.source "Composer.java"


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
    .line 117
    packed-switch p0, :pswitch_data_0

    .line 194
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 119
    :pswitch_1
    const-string v0, "COMPOSER_COMPOSER_LAUNCH_SEQUENCE"

    goto :goto_0

    .line 121
    :pswitch_2
    const-string v0, "COMPOSER_PHOTO_LOAD"

    goto :goto_0

    .line 123
    :pswitch_3
    const-string v0, "COMPOSER_SUGGESTIONS_APPEARANCE_LAUNCH"

    goto :goto_0

    .line 125
    :pswitch_4
    const-string v0, "COMPOSER_TIME_TO_INTERACT_EXTERNAL_SHARE"

    goto :goto_0

    .line 127
    :pswitch_5
    const-string v0, "COMPOSER_TIME_TO_INTERACT_PLATFORM_SHARE"

    goto :goto_0

    .line 129
    :pswitch_6
    const-string v0, "COMPOSER_POST_DRAW"

    goto :goto_0

    .line 131
    :pswitch_7
    const-string v0, "COMPOSER_ACTION_BUTTON_PRESSED"

    goto :goto_0

    .line 133
    :pswitch_8
    const-string v0, "COMPOSER_SELECTED_PRIVACY_AVAILABLE"

    goto :goto_0

    .line 135
    :pswitch_9
    const-string v0, "COMPOSER_PERF_ALBUMS_LIST_FETCH"

    goto :goto_0

    .line 137
    :pswitch_a
    const-string v0, "COMPOSER_LIFE_EVENT_FETCH_BIRTHDAY"

    goto :goto_0

    .line 139
    :pswitch_b
    const-string v0, "COMPOSER_TEENS_SHARESHEET_FETCH_GROUPS"

    goto :goto_0

    .line 141
    :pswitch_c
    const-string v0, "COMPOSER_COMPOSER_REFERRER_HANDOFF"

    goto :goto_0

    .line 143
    :pswitch_d
    const-string v0, "COMPOSER_COMPOSER_FRAGMENT_ONCREATE"

    goto :goto_0

    .line 145
    :pswitch_e
    const-string v0, "COMPOSER_COMPOSER_LAUNCH_PHASE"

    goto :goto_0

    .line 147
    :pswitch_f
    const-string v0, "COMPOSER_COMPOSER_DEPENDENCY_INJECTION"

    goto :goto_0

    .line 149
    :pswitch_10
    const-string v0, "COMPOSER_COMPOSER_RENDER_MARKER"

    goto :goto_0

    .line 151
    :pswitch_11
    const-string v0, "COMPOSER_COMPOSER_DRAW_MARKER"

    goto :goto_0

    .line 153
    :pswitch_12
    const-string v0, "COMPOSER_COMPOSER_FRAGMENT_SETUP"

    goto :goto_0

    .line 155
    :pswitch_13
    const-string v0, "COMPOSER_COMPOSER_FRAGMENT_CREATE_VIEW"

    goto :goto_0

    .line 157
    :pswitch_14
    const-string v0, "COMPOSER_COMPOSER_LAUNCH_FROM_NEWSFEED"

    goto :goto_0

    .line 159
    :pswitch_15
    const-string v0, "COMPOSER_COMPOSER_NEW_MODEL_BUILDER"

    goto :goto_0

    .line 161
    :pswitch_16
    const-string v0, "COMPOSER_COMPOSER_INLINE_MEDIA_PICKER_VISIBLE"

    goto :goto_0

    .line 163
    :pswitch_17
    const-string v0, "COMPOSER_COMPOSER_MEDIA_CURSOR_READY"

    goto :goto_0

    .line 165
    :pswitch_18
    const-string v0, "COMPOSER_INLINE_COMPOSER_LAUNCH_TRIGGER"

    goto :goto_0

    .line 167
    :pswitch_19
    const-string v0, "COMPOSER_CS_ALBUM_LIST_TTI"

    goto :goto_0

    .line 169
    :pswitch_1a
    const-string v0, "COMPOSER_GROUPS_CROSS_POSTING"

    goto :goto_0

    .line 171
    :pswitch_1b
    const-string v0, "COMPOSER_COMPOSER_CONTENT_READY_TTI_FROM_NEWSFEED"

    goto :goto_0

    .line 173
    :pswitch_1c
    const-string v0, "COMPOSER_COMPOSER_CONTENT_READY_FROM_NEWSFEED"

    goto :goto_0

    .line 175
    :pswitch_1d
    const-string v0, "COMPOSER_COMPOSER_MESSENGER_INBOX_THREADS_READY"

    goto :goto_0

    .line 177
    :pswitch_1e
    const-string v0, "COMPOSER_COMPOSER_CUSTOM_FONT_FETCH"

    goto :goto_0

    .line 179
    :pswitch_1f
    const-string v0, "COMPOSER_COMPOSER_CONTENT_READY_FROM_UI"

    goto :goto_0

    .line 181
    :pswitch_20
    const-string v0, "COMPOSER_COMPOSER_LAUNCH_TTI_FROM_UI"

    goto :goto_0

    .line 183
    :pswitch_21
    const-string v0, "COMPOSER_COMPOSER_LAUNCH_TTI"

    goto :goto_0

    .line 185
    :pswitch_22
    const-string v0, "COMPOSER_STORIES_COMPOSER_LAUNCH"

    goto :goto_0

    .line 187
    :pswitch_23
    const-string v0, "COMPOSER_STORIES_COMPOSER_LAUNCH_TTI"

    goto :goto_0

    .line 189
    :pswitch_24
    const-string v0, "COMPOSER_STORIES_COMPOSER_CONTENT_READY"

    goto :goto_0

    .line 191
    :pswitch_25
    const-string v0, "COMPOSER_FEED_COMPOSER_CONTENT_READY"

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
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
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_1f
        :pswitch_0
        :pswitch_20
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
    .end packed-switch
.end method
