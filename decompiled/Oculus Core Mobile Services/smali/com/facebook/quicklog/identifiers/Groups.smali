.class public Lcom/facebook/quicklog/identifiers/Groups;
.super Ljava/lang/Object;
.source "Groups.java"


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
    .line 163
    packed-switch p0, :pswitch_data_0

    .line 288
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 165
    :pswitch_1
    const-string v0, "GROUPS_GROUPS_DISCOVER_COLD"

    goto :goto_0

    .line 167
    :pswitch_2
    const-string v0, "GROUPS_GROUPS_GRID"

    goto :goto_0

    .line 169
    :pswitch_3
    const-string v0, "GROUPS_FB4A_GROUP_MALL_TTI"

    goto :goto_0

    .line 171
    :pswitch_4
    const-string v0, "GROUPS_GROUP_MALL_CACHED_LOAD"

    goto :goto_0

    .line 173
    :pswitch_5
    const-string v0, "GROUPS_GROUP_MEMBER_LIST_TTI"

    goto :goto_0

    .line 175
    :pswitch_6
    const-string v0, "GROUPS_COMPONENT_SCRIPT_GROUP_MEMBER_LIST_TTI"

    goto :goto_0

    .line 177
    :pswitch_7
    const-string v0, "GROUPS_GROUPS_TTI"

    goto :goto_0

    .line 179
    :pswitch_8
    const-string v0, "GROUPS_CS_CASUAL_GROUPS_TAB_TTI"

    goto :goto_0

    .line 181
    :pswitch_9
    const-string v0, "GROUPS_CASUAL_GROUPS_TAB_TTI"

    goto :goto_0

    .line 183
    :pswitch_a
    const-string v0, "GROUPS_ADMIN_TOOLS_TTI"

    goto :goto_0

    .line 185
    :pswitch_b
    const-string v0, "GROUPS_CS_GROUP_MEMBER_LIST_SCROLLING"

    goto :goto_0

    .line 187
    :pswitch_c
    const-string v0, "GROUPS_CS_EPISODIC_COMMUNITY_TAB_TTI"

    goto :goto_0

    .line 189
    :pswitch_d
    const-string v0, "GROUPS_CS_CASUAL_GROUPS_TAB_SCROLLING"

    goto :goto_0

    .line 191
    :pswitch_e
    const-string v0, "GROUPS_CS_GROUP_BADGE_MEMBERS_TTI"

    goto :goto_0

    .line 193
    :pswitch_f
    const-string v0, "GROUPS_CS_GROUP_MEETUP_GUEST_LIST_TTI"

    goto :goto_0

    .line 195
    :pswitch_10
    const-string v0, "GROUPS_MALL_TAIL_LOAD_RESTORATION_TIME"

    goto :goto_0

    .line 197
    :pswitch_11
    const-string v0, "GROUPS_COMPONENT_SCRIPT_GROUP_MEMBER_LIST_TTI_EXPERIMENTAL"

    goto :goto_0

    .line 199
    :pswitch_12
    const-string v0, "GROUPS_CS_GROUP_MEMBER_LIST_ADMIN_MODERATOR_TTI"

    goto :goto_0

    .line 201
    :pswitch_13
    const-string v0, "GROUPS_CS_GROUP_MEMBER_LIST_ACTIVE_MEMBERS_TTI"

    goto :goto_0

    .line 203
    :pswitch_14
    const-string v0, "GROUPS_CS_GROUP_MEMBER_LIST_FRIENDS_TTI"

    goto :goto_0

    .line 205
    :pswitch_15
    const-string v0, "GROUPS_CS_GROUP_MEMBER_LIST_IN_COMMON_TTI"

    goto :goto_0

    .line 207
    :pswitch_16
    const-string v0, "GROUPS_CS_GROUP_MEMBER_LIST_SAME_CITY_TTI"

    goto :goto_0

    .line 209
    :pswitch_17
    const-string v0, "GROUPS_CS_GROUP_MEMBER_LIST_PAGES_TTI"

    goto :goto_0

    .line 211
    :pswitch_18
    const-string v0, "GROUPS_CS_GROUP_LINKED_GROUPS_EMPTY_STATE_TTI"

    goto :goto_0

    .line 213
    :pswitch_19
    const-string v0, "GROUPS_CS_CASUAL_GROUPS_TAB_MORE_GROUPS_TTI"

    goto :goto_0

    .line 215
    :pswitch_1a
    const-string v0, "GROUPS_GROUP_MALL_TTRC"

    goto :goto_0

    .line 217
    :pswitch_1b
    const-string v0, "GROUPS_GROUP_MALL_INTERACTION"

    goto :goto_0

    .line 219
    :pswitch_1c
    const-string v0, "GROUPS_GROUP_MALL_SESSION"

    goto :goto_0

    .line 221
    :pswitch_1d
    const-string v0, "GROUPS_ADMIN_TAB_SETTINGS_TTRC"

    goto :goto_0

    .line 223
    :pswitch_1e
    const-string v0, "GROUPS_GROUPS_TTI_BEFORE_FRAGMENT_ONCREATE"

    goto :goto_0

    .line 225
    :pswitch_1f
    const-string v0, "GROUPS_ABOUT_TTRC"

    goto :goto_0

    .line 227
    :pswitch_20
    const-string v0, "GROUPS_ADMIN_ACTIVITY_LOG_TTRC"

    goto :goto_0

    .line 229
    :pswitch_21
    const-string v0, "GROUPS_FLAGGED_MEMBER_POSTS_TTRC"

    goto :goto_0

    .line 231
    :pswitch_22
    const-string v0, "GROUPS_REPORTED_POSTS_TTRC"

    goto :goto_0

    .line 233
    :pswitch_23
    const-string v0, "GROUPS_CHANNELS_TTRC"

    goto :goto_0

    .line 235
    :pswitch_24
    const-string v0, "GROUPS_ANNOUNCEMENTS_TTRC"

    goto :goto_0

    .line 237
    :pswitch_25
    const-string v0, "GROUPS_SCHEDULED_POSTS_TTRC"

    goto :goto_0

    .line 239
    :pswitch_26
    const-string v0, "GROUPS_PENDING_POSTS_TTRC"

    goto :goto_0

    .line 241
    :pswitch_27
    const-string v0, "GROUPS_CSR_GROUPS"

    goto :goto_0

    .line 243
    :pswitch_28
    const-string v0, "GROUPS_GROUP_INTEREST_WIZARD_PICKER_PAGE_TTRC"

    goto :goto_0

    .line 245
    :pswitch_29
    const-string v0, "GROUPS_GROUP_INTEREST_WIZARD_RESULT_PAGE_TTRC"

    goto :goto_0

    .line 247
    :pswitch_2a
    const-string v0, "GROUPS_FOR_SALE_POSTS_TTRC"

    goto :goto_0

    .line 249
    :pswitch_2b
    const-string v0, "GROUPS_PINNED_POSTS_TTRC"

    goto/16 :goto_0

    .line 251
    :pswitch_2c
    const-string v0, "GROUPS_GROUPS_ACTIVITY_LOG_FILTER"

    goto/16 :goto_0

    .line 253
    :pswitch_2d
    const-string v0, "GROUPS_GROUPS_BUY_SELL_GROUP_DISCUSSIONS_TTRC"

    goto/16 :goto_0

    .line 255
    :pswitch_2e
    const-string v0, "GROUPS_GROUP_DISCOVER_TAB_TAIL_FETCH_RESTORATION_ANDROID"

    goto/16 :goto_0

    .line 257
    :pswitch_2f
    const-string v0, "GROUPS_GROUPS_MEMBER_REQUESTS_TTRC"

    goto/16 :goto_0

    .line 259
    :pswitch_30
    const-string v0, "GROUPS_GROUPS_MEMBER_VIOLATIONS_TTRC"

    goto/16 :goto_0

    .line 261
    :pswitch_31
    const-string v0, "GROUPS_GROUPS_MALL_TAIL_LOAD"

    goto/16 :goto_0

    .line 263
    :pswitch_32
    const-string v0, "GROUPS_GROUPS_SIMPLE_FEED_TAIL_LOAD"

    goto/16 :goto_0

    .line 265
    :pswitch_33
    const-string v0, "GROUPS_GROUP_SIMPLE_FEED_SESSION"

    goto/16 :goto_0

    .line 267
    :pswitch_34
    const-string v0, "GROUPS_ADMIN_HOME_LAUNCHER_TTRC"

    goto/16 :goto_0

    .line 269
    :pswitch_35
    const-string v0, "GROUPS_ACTIVE_LIVING_ROOMS_TTRC"

    goto/16 :goto_0

    .line 271
    :pswitch_36
    const-string v0, "GROUPS_MENTORSHIP_TAB_TTRC"

    goto/16 :goto_0

    .line 273
    :pswitch_37
    const-string v0, "GROUPS_POST_TAG_FEED_TTRC"

    goto/16 :goto_0

    .line 275
    :pswitch_38
    const-string v0, "GROUPS_MENTORSHIP_SIGN_UP_TTI"

    goto/16 :goto_0

    .line 277
    :pswitch_39
    const-string v0, "GROUPS_GET_TOGETHER_FEED_TTRC"

    goto/16 :goto_0

    .line 279
    :pswitch_3a
    const-string v0, "GROUPS_GROUP_ACTIVE_MEMBER_SUMMARY_TTRC"

    goto/16 :goto_0

    .line 281
    :pswitch_3b
    const-string v0, "GROUPS_MENTORSHIP_SEARCH_ANDROID_AND_IOS"

    goto/16 :goto_0

    .line 283
    :pswitch_3c
    const-string v0, "GROUPS_MENTORSHIP_ALACORN_SEARCH_ANDROID_AND_IOS"

    goto/16 :goto_0

    .line 285
    :pswitch_3d
    const-string v0, "GROUPS_GROUPS_MALL_TAIL_LOAD_INFRA"

    goto/16 :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
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
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_0
        :pswitch_0
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_0
        :pswitch_30
        :pswitch_0
        :pswitch_0
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_0
        :pswitch_38
        :pswitch_39
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
    .end packed-switch
.end method
