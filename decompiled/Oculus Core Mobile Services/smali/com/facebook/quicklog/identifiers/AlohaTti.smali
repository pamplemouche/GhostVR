.class public Lcom/facebook/quicklog/identifiers/AlohaTti;
.super Ljava/lang/Object;
.source "AlohaTti.java"


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
    .line 131
    packed-switch p0, :pswitch_data_0

    .line 222
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 133
    :pswitch_1
    const-string v0, "ALOHA_TTI_LOAD_CONTACTS_FROM_SUPERFRAME"

    goto :goto_0

    .line 135
    :pswitch_2
    const-string v0, "ALOHA_TTI_LOAD_FIRSTCARD_ON_SUPERFRAME"

    goto :goto_0

    .line 137
    :pswitch_3
    const-string v0, "ALOHA_TTI_DOWNLOAD_OTA_TOUR_PACKAGE"

    goto :goto_0

    .line 139
    :pswitch_4
    const-string v0, "ALOHA_TTI_CALL_OPEN_CALL_UI_FROM_CONTACT_CARD"

    goto :goto_0

    .line 141
    :pswitch_5
    const-string v0, "ALOHA_TTI_ASSISTANT_RESPONSE_LATENCY"

    goto :goto_0

    .line 143
    :pswitch_6
    const-string v0, "ALOHA_TTI_CALL_ACCEPT_INCOMING_CALL_FROM_UI"

    goto :goto_0

    .line 145
    :pswitch_7
    const-string v0, "ALOHA_TTI_CALL_REJECT_INCOMING_CALL_FROM_UI"

    goto :goto_0

    .line 147
    :pswitch_8
    const-string v0, "ALOHA_TTI_CALL_SWITCH_CONFLICTING_CALL_FROM_UI"

    goto :goto_0

    .line 149
    :pswitch_9
    const-string v0, "ALOHA_TTI_CALL_MERGE_CONFLICTING_CALL_FROM_UI"

    goto :goto_0

    .line 151
    :pswitch_a
    const-string v0, "ALOHA_TTI_CALL_INCOMING_CALL_START"

    goto :goto_0

    .line 153
    :pswitch_b
    const-string v0, "ALOHA_TTI_WIFI_CONNECTION_TIME_ALOHA"

    goto :goto_0

    .line 155
    :pswitch_c
    const-string v0, "ALOHA_TTI_STORYTELLING_INITIAL_LOAD"

    goto :goto_0

    .line 157
    :pswitch_d
    const-string v0, "ALOHA_TTI_STORYTELLING_PAGE_TO_PAGE"

    goto :goto_0

    .line 159
    :pswitch_e
    const-string v0, "ALOHA_TTI_STORYTELLING_PRELOADING_DELAY"

    goto :goto_0

    .line 161
    :pswitch_f
    const-string v0, "ALOHA_TTI_EFFECT_SELECT_TO_RENDER_DELAY"

    goto :goto_0

    .line 163
    :pswitch_10
    const-string v0, "ALOHA_TTI_START_ALOHA_SETTINGS_APP"

    goto :goto_0

    .line 165
    :pswitch_11
    const-string v0, "ALOHA_TTI_SAVE_ALOHA_NAME"

    goto :goto_0

    .line 167
    :pswitch_12
    const-string v0, "ALOHA_TTI_OOBE_START_TO_FINISH"

    goto :goto_0

    .line 169
    :pswitch_13
    const-string v0, "ALOHA_TTI_FETCH_SUPERFRAME_PLACEHOLDERS"

    goto :goto_0

    .line 171
    :pswitch_14
    const-string v0, "ALOHA_TTI_FETCH_SUPERFRAME_CONFIG"

    goto :goto_0

    .line 173
    :pswitch_15
    const-string v0, "ALOHA_TTI_EFFECT_SET_TO_LOAD_DELAY"

    goto :goto_0

    .line 175
    :pswitch_16
    const-string v0, "ALOHA_TTI_EFFECT_LOAD_TO_RENDER_DELAY"

    goto :goto_0

    .line 177
    :pswitch_17
    const-string v0, "ALOHA_TTI_ADD_FAVORITES_LOADING"

    goto :goto_0

    .line 179
    :pswitch_18
    const-string v0, "ALOHA_TTI_INITIAL_WIFI_SCAN_LOADING"

    goto :goto_0

    .line 181
    :pswitch_19
    const-string v0, "ALOHA_TTI_SAVE_NAME_LOADING"

    goto :goto_0

    .line 183
    :pswitch_1a
    const-string v0, "ALOHA_TTI_ALBUM_PICKER_LOADING"

    goto :goto_0

    .line 185
    :pswitch_1b
    const-string v0, "ALOHA_TTI_OTA_CHECK_LOADING"

    goto :goto_0

    .line 187
    :pswitch_1c
    const-string v0, "ALOHA_TTI_AFTER_CONFIRMATION_CODE_ENTERED_LOADING"

    goto :goto_0

    .line 189
    :pswitch_1d
    const-string v0, "ALOHA_TTI_WIFI_CONNECTION_LOADING"

    goto :goto_0

    .line 191
    :pswitch_1e
    const-string v0, "ALOHA_TTI_AFTER_FB_CREDENTIALS_ENTERED_LOADING"

    goto :goto_0

    .line 193
    :pswitch_1f
    const-string v0, "ALOHA_TTI_AFTER_2FA_ENTERED_LOADING"

    goto :goto_0

    .line 195
    :pswitch_20
    const-string v0, "ALOHA_TTI_RICO_PAIRING_CODE_LOADING"

    goto :goto_0

    .line 197
    :pswitch_21
    const-string v0, "ALOHA_TTI_RICO_DEVICE_TOKEN_LOADING"

    goto :goto_0

    .line 199
    :pswitch_22
    const-string v0, "ALOHA_TTI_ABILITY_AUTHORIZATION_LOADING"

    goto :goto_0

    .line 201
    :pswitch_23
    const-string v0, "ALOHA_TTI_LOAD_SUGGESTED_CONTACTS_LAUNCHER"

    goto :goto_0

    .line 203
    :pswitch_24
    const-string v0, "ALOHA_TTI_LOAD_FAVORITES_LAUNCHER"

    goto :goto_0

    .line 205
    :pswitch_25
    const-string v0, "ALOHA_TTI_CONTACT_CARD_OPEN"

    goto :goto_0

    .line 207
    :pswitch_26
    const-string v0, "ALOHA_TTI_CONTACTS_APP_OPEN"

    goto :goto_0

    .line 209
    :pswitch_27
    const-string v0, "ALOHA_TTI_CONTACT_TAB_LOAD"

    goto :goto_0

    .line 211
    :pswitch_28
    const-string v0, "ALOHA_TTI_REMOTE_CONNECTION_OVERALL"

    goto :goto_0

    .line 213
    :pswitch_29
    const-string v0, "ALOHA_TTI_REMOTE_FALLBACK_CONNECTION_OVERALL"

    goto :goto_0

    .line 215
    :pswitch_2a
    const-string v0, "ALOHA_TTI_REMOTE_FOUND"

    goto :goto_0

    .line 217
    :pswitch_2b
    const-string v0, "ALOHA_TTI_REMOTE_CONNECTING"

    goto/16 :goto_0

    .line 219
    :pswitch_2c
    const-string v0, "ALOHA_TTI_FB_GROUP_PICKER_LOADING"

    goto/16 :goto_0

    .line 131
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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
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
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
    .end packed-switch
.end method
