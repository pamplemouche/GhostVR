.class public Lcom/facebook/quicklog/identifiers/Search;
.super Ljava/lang/Object;
.source "Search.java"


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
    .line 125
    packed-switch p0, :pswitch_data_0

    .line 218
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 127
    :pswitch_1
    const-string v0, "SEARCH_KEYWORD_SEARCH_PERFORMANCE"

    goto :goto_0

    .line 129
    :pswitch_2
    const-string v0, "SEARCH_KEYWORD_SEARCH_RESULT_PAGE_LOAD"

    goto :goto_0

    .line 131
    :pswitch_3
    const-string v0, "SEARCH_KEYWORD_SEARCH_RESULT_PAGE_LOAD_MORE"

    goto :goto_0

    .line 133
    :pswitch_4
    const-string v0, "SEARCH_GRAPH_SEARCH_RESULT_FETCH"

    goto :goto_0

    .line 135
    :pswitch_5
    const-string v0, "SEARCH_SEARCH_TYPEAHEAD"

    goto :goto_0

    .line 137
    :pswitch_6
    const-string v0, "SEARCH_SEARCH_WATERFALL"

    goto :goto_0

    .line 139
    :pswitch_7
    const-string v0, "SEARCH_SIMPLE_SEARCH_LOCAL_SUGGESTIONS_TYPEAHEAD"

    goto :goto_0

    .line 141
    :pswitch_8
    const-string v0, "SEARCH_SIMPLE_SEARCH_REMOTE_SUGGESTIONS_TYPEAHEAD"

    goto :goto_0

    .line 143
    :pswitch_9
    const-string v0, "SEARCH_SEARCH_ENTITIES_TIME_TO_DISPLAY_SUGGESTION"

    goto :goto_0

    .line 145
    :pswitch_a
    const-string v0, "SEARCH_NULL_STATE"

    goto :goto_0

    .line 147
    :pswitch_b
    const-string v0, "SEARCH_SEARCH_DB_BOOTSTRAP_LOAD"

    goto :goto_0

    .line 149
    :pswitch_c
    const-string v0, "SEARCH_SEARCH_DB_BOOTSTRAP_FETCH"

    goto :goto_0

    .line 151
    :pswitch_d
    const-string v0, "SEARCH_SEARCH_DB_BOOTSTRAP_INDEX_LOAD"

    goto :goto_0

    .line 153
    :pswitch_e
    const-string v0, "SEARCH_SEARCH_DB_BOOTSTRAP_PREFETCH_LOAD"

    goto :goto_0

    .line 155
    :pswitch_f
    const-string v0, "SEARCH_SEARCH_DB_BOOTSTRAP_DELTA_LOAD"

    goto :goto_0

    .line 157
    :pswitch_10
    const-string v0, "SEARCH_SEARCH_DB_BOOTSTRAP_RECENT_SEARCH_DELTA"

    goto :goto_0

    .line 159
    :pswitch_11
    const-string v0, "SEARCH_GRAPH_SEARCH_REMOTE_SUGGESTIONS_TYPEAHEAD"

    goto :goto_0

    .line 161
    :pswitch_12
    const-string v0, "SEARCH_GRAPH_SEARCH_LOCAL_SUGGESTIONS_TYPEAHEAD"

    goto :goto_0

    .line 163
    :pswitch_13
    const-string v0, "SEARCH_SUGGESTIONS_END_TO_END"

    goto :goto_0

    .line 165
    :pswitch_14
    const-string v0, "SEARCH_GRAPH_SEARCH_REMOTE_KEYWORD_SUGGESTIONS_TYPEAHEAD"

    goto :goto_0

    .line 167
    :pswitch_15
    const-string v0, "SEARCH_GRAPH_SEARCH_REMOTE_ENTITY_SUGGESTIONS_TYPEAHEAD"

    goto :goto_0

    .line 169
    :pswitch_16
    const-string v0, "SEARCH_SERP_SUGGESTIONS_END_TO_END"

    goto :goto_0

    .line 171
    :pswitch_17
    const-string v0, "SEARCH_KEYWORD_SEARCH_RESULT_PAGE_DISLAY_DONE"

    goto :goto_0

    .line 173
    :pswitch_18
    const-string v0, "SEARCH_SERP_PREPROCESS"

    goto :goto_0

    .line 175
    :pswitch_19
    const-string v0, "SEARCH_SERP_POSTPROCESS"

    goto :goto_0

    .line 177
    :pswitch_1a
    const-string v0, "SEARCH_SERP_NETWORK"

    goto :goto_0

    .line 179
    :pswitch_1b
    const-string v0, "SEARCH_SERP_TTI"

    goto :goto_0

    .line 181
    :pswitch_1c
    const-string v0, "SEARCH_FETCH_BOOTSTRAP_KEYWORD_QUERY"

    goto :goto_0

    .line 183
    :pswitch_1d
    const-string v0, "SEARCH_SEARCH_SNIPPET_LAYOUT_ANDROID"

    goto :goto_0

    .line 185
    :pswitch_1e
    const-string v0, "SEARCH_RESULTS_NT_BG_PARSE_ANDROID"

    goto :goto_0

    .line 187
    :pswitch_1f
    const-string v0, "SEARCH_RESULTS_NT_FG_WAIT_ANDROID"

    goto :goto_0

    .line 189
    :pswitch_20
    const-string v0, "SEARCH_PAGE_SURFACE_INITIAL_LOAD_LATENCY"

    goto :goto_0

    .line 191
    :pswitch_21
    const-string v0, "SEARCH_SERP_TTRC_ANDROID"

    goto :goto_0

    .line 193
    :pswitch_22
    const-string v0, "SEARCH_TA_TTRC_ANDROID"

    goto :goto_0

    .line 195
    :pswitch_23
    const-string v0, "SEARCH_SERP_PAGINATION_ANDROID"

    goto :goto_0

    .line 197
    :pswitch_24
    const-string v0, "SEARCH_LITHO_COMPONENT_CREATION_AND_LAYOUT"

    goto :goto_0

    .line 199
    :pswitch_25
    const-string v0, "SEARCH_NS_TTRC_ANDROID"

    goto :goto_0

    .line 201
    :pswitch_26
    const-string v0, "SEARCH_RESULTS_NT_BACKGROUND_ENQUEUE_ANDROID"

    goto :goto_0

    .line 203
    :pswitch_27
    const-string v0, "SEARCH_RESULTS_NT_FINISH_IDLE_ANDROID"

    goto :goto_0

    .line 205
    :pswitch_28
    const-string v0, "SEARCH_TYPEAHEAD_KEYPRESS_ANDROID"

    goto :goto_0

    .line 207
    :pswitch_29
    const-string v0, "SEARCH_SEARCH_VOYAGER_TOPIC_FEED"

    goto :goto_0

    .line 209
    :pswitch_2a
    const-string v0, "SEARCH_SEARCH_VOYAGER_TOPIC_ENDPOINT"

    goto :goto_0

    .line 211
    :pswitch_2b
    const-string v0, "SEARCH_SERP_INITIAL_RENDER_BOOST"

    goto/16 :goto_0

    .line 213
    :pswitch_2c
    const-string v0, "SEARCH_CLIENT_INSTANT_SEARCH_ANDROID"

    goto/16 :goto_0

    .line 215
    :pswitch_2d
    const-string v0, "SEARCH_SERP_PAGINATION_ANDROID_LINKS"

    goto/16 :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_18
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
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_0
        :pswitch_24
        :pswitch_0
        :pswitch_25
        :pswitch_0
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
    .end packed-switch
.end method
