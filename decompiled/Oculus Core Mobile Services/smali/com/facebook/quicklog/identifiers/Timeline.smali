.class public Lcom/facebook/quicklog/identifiers/Timeline;
.super Ljava/lang/Object;
.source "Timeline.java"


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
    .line 116
    packed-switch p0, :pswitch_data_0

    .line 205
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 118
    :pswitch_1
    const-string v0, "TIMELINE_TIMELINE_HEADER_TTI"

    goto :goto_0

    .line 120
    :pswitch_2
    const-string v0, "TIMELINE_TIMELINE_INITIAL_UNITS_WAIT_TIME"

    goto :goto_0

    .line 122
    :pswitch_3
    const-string v0, "TIMELINE_TIMELINE_RENDER_CORE_HEADER"

    goto :goto_0

    .line 124
    :pswitch_4
    const-string v0, "TIMELINE_TIMELINE_RENDER_ENTIRE_HEADER"

    goto :goto_0

    .line 126
    :pswitch_5
    const-string v0, "TIMELINE_TIMELINE_RENDER_ENTIRE_HEADER_FROM_SERVER"

    goto :goto_0

    .line 128
    :pswitch_6
    const-string v0, "TIMELINE_TIMELINE_RENDER_ENTIRE_HEADER_FROM_DISK_CACHE"

    goto :goto_0

    .line 130
    :pswitch_7
    const-string v0, "TIMELINE_TIMELINE_RENDER_LOWRES_HEADER_FROM_SERVER"

    goto :goto_0

    .line 132
    :pswitch_8
    const-string v0, "TIMELINE_TIMELINE_RENDER_LOWRES_HEADER_FROM_DISK_CACHE"

    goto :goto_0

    .line 134
    :pswitch_9
    const-string v0, "TIMELINE_TIMELINE_FIRST_UNITS_NETWORK_FETCH"

    goto :goto_0

    .line 136
    :pswitch_a
    const-string v0, "TIMELINE_TIMELINE_LOAD_FIRST_SECTION"

    goto :goto_0

    .line 138
    :pswitch_b
    const-string v0, "TIMELINE_TIMELINE_LOAD_FIRST_SECTION_FROM_SERVER"

    goto :goto_0

    .line 140
    :pswitch_c
    const-string v0, "TIMELINE_TIMELINE_LOAD_FIRST_SECTION_FROM_CACHE"

    goto :goto_0

    .line 142
    :pswitch_d
    const-string v0, "TIMELINE_TIMELINE_VISIBLE_SCROLL_FETCH_UNITS"

    goto :goto_0

    .line 144
    :pswitch_e
    const-string v0, "TIMELINE_TIMELINE_LOAD_PROFILE_PIC_PREVIEW"

    goto :goto_0

    .line 146
    :pswitch_f
    const-string v0, "TIMELINE_TIMELINE_LOAD_COVER_PHOTO_LOW_RES"

    goto :goto_0

    .line 148
    :pswitch_10
    const-string v0, "TIMELINE_TIMELINE_LOAD_COVER_PHOTO"

    goto :goto_0

    .line 150
    :pswitch_11
    const-string v0, "TIMELINE_TIMELINE_LOAD_PROFILE_PIC"

    goto :goto_0

    .line 152
    :pswitch_12
    const-string v0, "TIMELINE_TIMELINE_RENDER_LOWRES_HEADER"

    goto :goto_0

    .line 154
    :pswitch_13
    const-string v0, "TIMELINE_TIMELINE_RENDER_LOWRES_HEADER_COVERPHOTO_OPTIONAL"

    goto :goto_0

    .line 156
    :pswitch_14
    const-string v0, "TIMELINE_COLLECTIONS_SUMMARY_LOAD_FIRST_SECTIONS"

    goto :goto_0

    .line 158
    :pswitch_15
    const-string v0, "TIMELINE_TIMELINE_INITIAL_FETCH_UNITS"

    goto :goto_0

    .line 160
    :pswitch_16
    const-string v0, "TIMELINE_TIMELINE_SCROLL_FETCH_UNITS"

    goto :goto_0

    .line 162
    :pswitch_17
    const-string v0, "TIMELINE_COLLECTIONS_COLLECTION_LOAD_FIRST_FETCHED_ITEMS"

    goto :goto_0

    .line 164
    :pswitch_18
    const-string v0, "TIMELINE_LIFE_EVENT_TYPE_TTI"

    goto :goto_0

    .line 166
    :pswitch_19
    const-string v0, "TIMELINE_PROTILES_WAIT_TIME"

    goto :goto_0

    .line 168
    :pswitch_1a
    const-string v0, "TIMELINE_PROTILES_NETWORK_FETCH"

    goto :goto_0

    .line 170
    :pswitch_1b
    const-string v0, "TIMELINE_TIMELINE_CONTEXT_ITEMS_NETWORK_FETCH"

    goto :goto_0

    .line 172
    :pswitch_1c
    const-string v0, "TIMELINE_COLLECTIONS_SUMMARY_LOAD_PRELIM_DATA"

    goto :goto_0

    .line 174
    :pswitch_1d
    const-string v0, "TIMELINE_COLLECTIONS_SECTION_LOAD_PRELIM_DATA"

    goto :goto_0

    .line 176
    :pswitch_1e
    const-string v0, "TIMELINE_COLLECTIONS_COLLECTION_LOAD_PRELIM_DATA"

    goto :goto_0

    .line 178
    :pswitch_1f
    const-string v0, "TIMELINE_COLLECTIONS_SUMMARY_LOAD_ALL_SECTIONS"

    goto :goto_0

    .line 180
    :pswitch_20
    const-string v0, "TIMELINE_COLLECTIONS_SECTION_LOAD_ALL_COLLECTIONS"

    goto :goto_0

    .line 182
    :pswitch_21
    const-string v0, "TIMELINE_COLLECTIONS_COLLECTION_LOAD_COLLECTION"

    goto :goto_0

    .line 184
    :pswitch_22
    const-string v0, "TIMELINE_COLLECTIONS_SUMMARY_HAS_PRELIM_DATA"

    goto :goto_0

    .line 186
    :pswitch_23
    const-string v0, "TIMELINE_COLLECTIONS_SUMMARY_NO_PRELIM_DATA"

    goto :goto_0

    .line 188
    :pswitch_24
    const-string v0, "TIMELINE_COLLECTIONS_SECTION_HAS_PRELIM_DATA"

    goto :goto_0

    .line 190
    :pswitch_25
    const-string v0, "TIMELINE_COLLECTIONS_SECTION_NO_PRELIM_DATA"

    goto :goto_0

    .line 192
    :pswitch_26
    const-string v0, "TIMELINE_COLLECTIONS_COLLECTION_HAS_PRELIM_DATA"

    goto :goto_0

    .line 194
    :pswitch_27
    const-string v0, "TIMELINE_COLLECTIONS_COLLECTION_NO_PRELIM_DATA"

    goto :goto_0

    .line 196
    :pswitch_28
    const-string v0, "TIMELINE_FETCH_STORIES"

    goto :goto_0

    .line 198
    :pswitch_29
    const-string v0, "TIMELINE_TIMELINE_SPINNER_VISIBLE_FETCHING_STORIES"

    goto :goto_0

    .line 200
    :pswitch_2a
    const-string v0, "TIMELINE_PROTILES_WAIT_TO_RENDER_TIME"

    goto :goto_0

    .line 202
    :pswitch_2b
    const-string v0, "Additional Content Restoration Time"

    goto/16 :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
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
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_0
        :pswitch_29
        :pswitch_2a
        :pswitch_0
        :pswitch_0
        :pswitch_2b
    .end packed-switch
.end method
