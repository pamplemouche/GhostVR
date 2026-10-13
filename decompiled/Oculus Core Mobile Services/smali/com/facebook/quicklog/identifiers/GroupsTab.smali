.class public Lcom/facebook/quicklog/identifiers/GroupsTab;
.super Ljava/lang/Object;
.source "GroupsTab.java"


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
    .line 97
    packed-switch p0, :pswitch_data_0

    .line 158
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 99
    :pswitch_1
    const-string v0, "GROUPS_TAB_TTI"

    goto :goto_0

    .line 101
    :pswitch_2
    const-string v0, "GROUPS_TAB_FAVORITE_GROUPS_SECTION_LOAD"

    goto :goto_0

    .line 103
    :pswitch_3
    const-string v0, "GROUPS_TAB_NON_FAVORITE_GROUPS_SECTION_LOAD"

    goto :goto_0

    .line 105
    :pswitch_4
    const-string v0, "GROUPS_TAB_MERGED_GROUPS_LIST_SECTION_LOAD"

    goto :goto_0

    .line 107
    :pswitch_5
    const-string v0, "GROUPS_TAB_HSCROLL_GROUPS_LIST_SECTION_LOAD"

    goto :goto_0

    .line 109
    :pswitch_6
    const-string v0, "GROUPS_TAB_FIRST_HEADER_SECTION_LOAD"

    goto :goto_0

    .line 111
    :pswitch_7
    const-string v0, "GROUPS_TAB_ALL_HEADER_SECTIONS_LOAD"

    goto :goto_0

    .line 113
    :pswitch_8
    const-string v0, "GROUPS_TAB_FAVORITE_GROUPS_FULL_LIST"

    goto :goto_0

    .line 115
    :pswitch_9
    const-string v0, "GROUPS_TAB_NON_FAVORITE_GROUPS_FULL_LIST"

    goto :goto_0

    .line 117
    :pswitch_a
    const-string v0, "GROUPS_TAB_FAVORITE_GROUPS_FULL_LIST_IN_FAV_ONLY_FRAGMENT"

    goto :goto_0

    .line 119
    :pswitch_b
    const-string v0, "GROUPS_TAB_FULL_GROUP_LIST_TTI"

    goto :goto_0

    .line 121
    :pswitch_c
    const-string v0, "GROUPS_TAB_MAIN_FRAGMENT_LIFECYCLE"

    goto :goto_0

    .line 123
    :pswitch_d
    const-string v0, "GROUPS_TAB_TAIL_LOAD"

    goto :goto_0

    .line 125
    :pswitch_e
    const-string v0, "GROUPS_TAB_DISCOVER_LANDING_TTI"

    goto :goto_0

    .line 127
    :pswitch_f
    const-string v0, "GROUPS_TAB_DISCOVER_CATEGORY_TTI"

    goto :goto_0

    .line 129
    :pswitch_10
    const-string v0, "GROUPS_TAB_PTR"

    goto :goto_0

    .line 131
    :pswitch_11
    const-string v0, "GROUPS_TAB_DISCOVER_CATEGORIES_TTI"

    goto :goto_0

    .line 133
    :pswitch_12
    const-string v0, "GROUPS_TAB_EDIT_GROUP_LIST_TTI"

    goto :goto_0

    .line 135
    :pswitch_13
    const-string v0, "GROUPS_TAB_DISCOVER_LANDING_TTRC"

    goto :goto_0

    .line 137
    :pswitch_14
    const-string v0, "GROUPS_TAB_GROUP_TAB_TTRC"

    goto :goto_0

    .line 139
    :pswitch_15
    const-string v0, "GROUPS_TAB_FULL_GROUP_LIST_TTRC"

    goto :goto_0

    .line 141
    :pswitch_16
    const-string v0, "GROUPS_TAB_DISCOVER_CATEGORY_TTRC"

    goto :goto_0

    .line 143
    :pswitch_17
    const-string v0, "GROUPS_TAB_DISCOVER_CATEGORIES_TTRC"

    goto :goto_0

    .line 145
    :pswitch_18
    const-string v0, "GROUPS_TAB_GROUPS_TAB_TAIL_LOAD"

    goto :goto_0

    .line 147
    :pswitch_19
    const-string v0, "GROUPS_TAB_SETTINGS_TAB_TTRC"

    goto :goto_0

    .line 149
    :pswitch_1a
    const-string v0, "GROUPS_TAB_GROUPS_DISCOVER_TAB_TAIL_FETCH_RESTORATION_ANDROID"

    goto :goto_0

    .line 151
    :pswitch_1b
    const-string v0, "GROUPS_TAB_TAIL_LOAD_V2"

    goto :goto_0

    .line 153
    :pswitch_1c
    const-string v0, "GROUPS_TAB_GYSJ_PREVIEW_TTRC"

    goto :goto_0

    .line 155
    :pswitch_1d
    const-string v0, "GROUPS_TAB_COLLECTION_TTRC"

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method
