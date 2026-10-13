.class public Lcom/facebook/quicklog/identifiers/Pages;
.super Ljava/lang/Object;
.source "Pages.java"


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
    .line 161
    sparse-switch p0, :sswitch_data_0

    .line 282
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 163
    :sswitch_0
    const-string v0, "PAGES_FB4A_ADMINED_FIRST_POSTS_BY_OTHERS_STORIES"

    goto :goto_0

    .line 165
    :sswitch_1
    const-string v0, "PAGES_PAGES_MANAGER_FIRST_POSTS_BY_OTHERS_STORIES"

    goto :goto_0

    .line 167
    :sswitch_2
    const-string v0, "PAGES_FB4A_PAGE_FIRST_STORIES_SEQUENCE"

    goto :goto_0

    .line 169
    :sswitch_3
    const-string v0, "PAGES_FB4A_ADMINED_FIRST_STORIES"

    goto :goto_0

    .line 171
    :sswitch_4
    const-string v0, "PAGES_PAGES_MANAGER_FIRST_STORIES"

    goto :goto_0

    .line 173
    :sswitch_5
    const-string v0, "PAGES_FB4A_PAGE_FIRST_POSTS_BY_OTHERS_STORIES"

    goto :goto_0

    .line 175
    :sswitch_6
    const-string v0, "PAGES_PAGES_MANAGER_COLD_START"

    goto :goto_0

    .line 177
    :sswitch_7
    const-string v0, "PAGES_PAGES_MANAGER_COLD_START_FIRST_RUN"

    goto :goto_0

    .line 179
    :sswitch_8
    const-string v0, "PAGES_PAGES_MANAGER_WARM_START"

    goto :goto_0

    .line 181
    :sswitch_9
    const-string v0, "PAGES_DESERIALIZE_PAGE_ATTRIBUTES"

    goto :goto_0

    .line 183
    :sswitch_a
    const-string v0, "PAGES_DESERIALIZE_ALL_PAGES"

    goto :goto_0

    .line 185
    :sswitch_b
    const-string v0, "PAGES_CHROME_CREATE"

    goto :goto_0

    .line 187
    :sswitch_c
    const-string v0, "PAGES_CHROME_RESUME"

    goto :goto_0

    .line 189
    :sswitch_d
    const-string v0, "PAGES_WARM_START_TO_PAGE_VIEW_CREATED"

    goto :goto_0

    .line 191
    :sswitch_e
    const-string v0, "PAGES_COLD_START_TO_PAGE_VIEW_CREATED"

    goto :goto_0

    .line 193
    :sswitch_f
    const-string v0, "PAGES_LOGIN_TO_ALL_PAGES_LOADED_CHROME"

    goto :goto_0

    .line 195
    :sswitch_10
    const-string v0, "PAGES_DESERIALIZE_AND_COMPILE_URI_CONFIG"

    goto :goto_0

    .line 197
    :sswitch_11
    const-string v0, "PAGES_PAGE_TIME_TO_PRIMARY"

    goto :goto_0

    .line 199
    :sswitch_12
    const-string v0, "PAGES_PAGE_TIME_TO_SECONDARY"

    goto :goto_0

    .line 201
    :sswitch_13
    const-string v0, "PAGES_PAGES_TIMELINE_DRAW_FIRST_CARD"

    goto :goto_0

    .line 203
    :sswitch_14
    const-string v0, "PAGES_COLD_START_TAG"

    goto :goto_0

    .line 205
    :sswitch_15
    const-string v0, "PAGES_COLD_START_TO_LOGIN_SCREEN"

    goto :goto_0

    .line 207
    :sswitch_16
    const-string v0, "PAGES_APP_ONCREATE"

    goto :goto_0

    .line 209
    :sswitch_17
    const-string v0, "PAGES_COLD_START_FROM_DEEP_LINKING"

    goto :goto_0

    .line 211
    :sswitch_18
    const-string v0, "PAGES_AUTH_TO_LOGIN_COMPLETE"

    goto :goto_0

    .line 213
    :sswitch_19
    const-string v0, "PAGES_FACEWEB_CREATE_TAG"

    goto :goto_0

    .line 215
    :sswitch_1a
    const-string v0, "PAGES_PAGES_PROFILE_PIC_LOAD"

    goto :goto_0

    .line 217
    :sswitch_1b
    const-string v0, "PAGES_CREATE_THREAD_LIST_METRIC_NAME"

    goto :goto_0

    .line 219
    :sswitch_1c
    const-string v0, "PAGES_PAGE_HEADER_FETCH"

    goto :goto_0

    .line 221
    :sswitch_1d
    const-string v0, "PAGES_PAGE_SURFACE_FIRST_CARD"

    goto :goto_0

    .line 223
    :sswitch_1e
    const-string v0, "PAGES_PAGE_HEADER_LOAD"

    goto :goto_0

    .line 225
    :sswitch_1f
    const-string v0, "PAGES_PAGES_LAUNCHPOINT_TTI"

    goto :goto_0

    .line 227
    :sswitch_20
    const-string v0, "PAGES_PAGES_LAUNCHPOINT_SCROLL_LOAD"

    goto :goto_0

    .line 229
    :sswitch_21
    const-string v0, "PAGES_COMMSHUB_MESSAGE_LIST_LOAD_FIRST_PAGE"

    goto :goto_0

    .line 231
    :sswitch_22
    const-string v0, "PAGES_COMMSHUB_MESSAGE_LIST_LOAD_NEXT_PAGE"

    goto :goto_0

    .line 233
    :sswitch_23
    const-string v0, "PAGES_COMMSHUB_CONVERSATION_LOAD"

    goto :goto_0

    .line 235
    :sswitch_24
    const-string v0, "PAGES_COMMSHUB_MESSAGE_LIST_RELOAD_PAGE"

    goto :goto_0

    .line 237
    :sswitch_25
    const-string v0, "PAGES_COMMSHUB_MESSAGE_LIST_UPDATE_FILTER"

    goto :goto_0

    .line 239
    :sswitch_26
    const-string v0, "PAGES_COMMSHUB_SAVED_REPLIES_LOAD"

    goto :goto_0

    .line 241
    :sswitch_27
    const-string v0, "PAGES_PAGE_EARLY_FETCHER_PREPARE"

    goto :goto_0

    .line 243
    :sswitch_28
    const-string v0, "PAGES_PAGE_SURFACE_BATCH_CARD_DATA_LOADED"

    goto :goto_0

    .line 245
    :sswitch_29
    const-string v0, "PAGES_CROWDSOURCING_GRAPH_EDITOR_LOAD"

    goto :goto_0

    .line 247
    :sswitch_2a
    const-string v0, "PAGES_CS_PROMOTIONS_HUB_TTI"

    goto/16 :goto_0

    .line 249
    :sswitch_2b
    const-string v0, "PAGES_CS_POST_SELECTOR_TTI"

    goto/16 :goto_0

    .line 251
    :sswitch_2c
    const-string v0, "PAGES_ADMIN_SURFACE_TTI"

    goto/16 :goto_0

    .line 253
    :sswitch_2d
    const-string v0, "PAGES_SERVICE_LEAD_GEN_MOBILE"

    goto/16 :goto_0

    .line 255
    :sswitch_2e
    const-string v0, "PAGES_PAGES_SURFACE_HEADER_LOAD"

    goto/16 :goto_0

    .line 257
    :sswitch_2f
    const-string v0, "PAGES_PAGE_TAB_LOADING_TTI_ANDROID"

    goto/16 :goto_0

    .line 259
    :sswitch_30
    const-string v0, "PAGES_PAGES_MOBILECONFIG_INIT_IOS"

    goto/16 :goto_0

    .line 261
    :sswitch_31
    const-string v0, "PAGES_PAGES_REACTION_TAB_LOADING"

    goto/16 :goto_0

    .line 263
    :sswitch_32
    const-string v0, "PAGES_CS_SEE_ALL_PROMOTIONS_TTI"

    goto/16 :goto_0

    .line 265
    :sswitch_33
    const-string v0, "PAGES_ADMIN_SURFACE_DYNAMIC_TABS_TTI"

    goto/16 :goto_0

    .line 267
    :sswitch_34
    const-string v0, "PAGES_PAGES_ANDROID_TTRC"

    goto/16 :goto_0

    .line 269
    :sswitch_35
    const-string v0, "PAGES_CROWDSOURCING_GRAPH_EDITOR_MAP_LOAD"

    goto/16 :goto_0

    .line 271
    :sswitch_36
    const-string v0, "PAGES_NT_PAGE_INFO"

    goto/16 :goto_0

    .line 273
    :sswitch_37
    const-string v0, "PAGES_RN_PROMOTIONS_HUB_TTI"

    goto/16 :goto_0

    .line 275
    :sswitch_38
    const-string v0, "PAGES_PAGES_TAB_TTRC"

    goto/16 :goto_0

    .line 277
    :sswitch_39
    const-string v0, "PAGES_PAGES_ANDROID_PAGINATION_TAILLOAD"

    goto/16 :goto_0

    .line 279
    :sswitch_3a
    const-string v0, "PAGES_PAGES_ANDROID_ADMIN_TTRC"

    goto/16 :goto_0

    .line 161
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0xc -> :sswitch_6
        0xd -> :sswitch_7
        0xe -> :sswitch_8
        0x14 -> :sswitch_9
        0x15 -> :sswitch_a
        0x16 -> :sswitch_b
        0x17 -> :sswitch_c
        0x18 -> :sswitch_d
        0x19 -> :sswitch_e
        0x1a -> :sswitch_f
        0x1b -> :sswitch_10
        0x2d -> :sswitch_11
        0x2e -> :sswitch_12
        0x2f -> :sswitch_13
        0x5d -> :sswitch_14
        0x5e -> :sswitch_15
        0x5f -> :sswitch_16
        0x60 -> :sswitch_17
        0x61 -> :sswitch_18
        0x62 -> :sswitch_19
        0x65 -> :sswitch_1a
        0x75 -> :sswitch_1b
        0x7a -> :sswitch_1c
        0x7d -> :sswitch_1d
        0x80 -> :sswitch_1e
        0x83 -> :sswitch_1f
        0x84 -> :sswitch_20
        0x89 -> :sswitch_21
        0x8a -> :sswitch_22
        0x8b -> :sswitch_23
        0x8c -> :sswitch_24
        0x8d -> :sswitch_25
        0x8e -> :sswitch_26
        0x8f -> :sswitch_27
        0x90 -> :sswitch_28
        0x91 -> :sswitch_29
        0x92 -> :sswitch_2a
        0x93 -> :sswitch_2b
        0x94 -> :sswitch_2c
        0x95 -> :sswitch_2d
        0x96 -> :sswitch_2e
        0x99 -> :sswitch_2f
        0x9a -> :sswitch_30
        0x9b -> :sswitch_31
        0x9c -> :sswitch_32
        0x9e -> :sswitch_33
        0x9f -> :sswitch_34
        0xa0 -> :sswitch_35
        0xa5 -> :sswitch_36
        0xa7 -> :sswitch_37
        0xa9 -> :sswitch_38
        0xaa -> :sswitch_39
        0xab -> :sswitch_3a
    .end sparse-switch
.end method
