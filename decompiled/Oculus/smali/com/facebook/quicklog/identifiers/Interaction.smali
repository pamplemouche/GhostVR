.class public Lcom/facebook/quicklog/identifiers/Interaction;
.super Ljava/lang/Object;
.source "Interaction.java"


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
    .line 88
    packed-switch p0, :pswitch_data_0

    .line 151
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 90
    :pswitch_0
    const-string v0, "INTERACTION_TTI"

    goto :goto_0

    .line 92
    :pswitch_1
    const-string v0, "INTERACTION_TOUCH"

    goto :goto_0

    .line 94
    :pswitch_2
    const-string v0, "INTERACTION_INTENT_MAPPING"

    goto :goto_0

    .line 96
    :pswitch_3
    const-string v0, "INTERACTION_START_ACTIVITY"

    goto :goto_0

    .line 98
    :pswitch_4
    const-string v0, "INTERACTION_START_ACTIVITY_FOR_RESULT"

    goto :goto_0

    .line 100
    :pswitch_5
    const-string v0, "INTERACTION_ACTIVITY_ON_CREATE"

    goto :goto_0

    .line 102
    :pswitch_6
    const-string v0, "INTERACTION_ACTIVITY_ON_START"

    goto :goto_0

    .line 104
    :pswitch_7
    const-string v0, "INTERACTION_ACTIVITY_ON_RESUME"

    goto :goto_0

    .line 106
    :pswitch_8
    const-string v0, "INTERACTION_ACTIVITY_ON_PAUSE"

    goto :goto_0

    .line 108
    :pswitch_9
    const-string v0, "INTERACTION_ANIMATION"

    goto :goto_0

    .line 110
    :pswitch_a
    const-string v0, "INTERACTION_NEW_FRAGMENT"

    goto :goto_0

    .line 112
    :pswitch_b
    const-string v0, "INTERACTION_ADD_FRAGMENT"

    goto :goto_0

    .line 114
    :pswitch_c
    const-string v0, "INTERACTION_ACTIVITY_ON_STOP"

    goto :goto_0

    .line 116
    :pswitch_d
    const-string v0, "INTERACTION_LOAD_TIMELINE_HEADER"

    goto :goto_0

    .line 118
    :pswitch_e
    const-string v0, "INTERACTION_LOAD_PAGE_HEADER"

    goto :goto_0

    .line 120
    :pswitch_f
    const-string v0, "INTERACTION_LOAD_EVENT_PERMALINK"

    goto :goto_0

    .line 122
    :pswitch_10
    const-string v0, "INTERACTION_LOAD_GROUPS_FEED"

    goto :goto_0

    .line 124
    :pswitch_11
    const-string v0, "INTERACTION_LOAD_PAGE_HEADER_ADMIN"

    goto :goto_0

    .line 126
    :pswitch_12
    const-string v0, "INTERACTION_LOAD_PERMALINK"

    goto :goto_0

    .line 128
    :pswitch_13
    const-string v0, "INTERACTION_OPEN_COMPOSER"

    goto :goto_0

    .line 130
    :pswitch_14
    const-string v0, "INTERACTION_OPEN_MEDIA_PICKER"

    goto :goto_0

    .line 132
    :pswitch_15
    const-string v0, "INTERACTION_OPEN_PHOTO_GALLERY"

    goto :goto_0

    .line 134
    :pswitch_16
    const-string v0, "INTERACTION_OPEN_CHECK_IN"

    goto :goto_0

    .line 136
    :pswitch_17
    const-string v0, "INTERACTION_LOAD_WEB_VIEW"

    goto :goto_0

    .line 138
    :pswitch_18
    const-string v0, "INTERACTION_SEARCH_TYPEAHEAD"

    goto :goto_0

    .line 140
    :pswitch_19
    const-string v0, "INTERACTION_LOAD_EVENTS_DASHBOARD"

    goto :goto_0

    .line 142
    :pswitch_1a
    const-string v0, "INTERACTION_OPEN_PHOTOS_FEED"

    goto :goto_0

    .line 144
    :pswitch_1b
    const-string v0, "INTERACTION_TIME_TO_ACTIVITY_ON_PAUSE"

    goto :goto_0

    .line 146
    :pswitch_1c
    const-string v0, "INTERACTION_TIME_TO_ACTIVITY_ON_CREATE"

    goto :goto_0

    .line 148
    :pswitch_1d
    const-string v0, "INTERACTION_TIME_TO_FRAGMENT_ON_CREATE"

    goto :goto_0

    .line 88
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
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method
