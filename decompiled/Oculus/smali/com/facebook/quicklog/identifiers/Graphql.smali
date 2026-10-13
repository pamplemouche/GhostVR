.class public Lcom/facebook/quicklog/identifiers/Graphql;
.super Ljava/lang/Object;
.source "Graphql.java"


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
    .line 139
    packed-switch p0, :pswitch_data_0

    .line 238
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 141
    :pswitch_1
    const-string v0, "GRAPHQL_TRIM_TO_MINIMUM"

    goto :goto_0

    .line 143
    :pswitch_2
    const-string v0, "GRAPHQL_TRIM_TO_NOTHING"

    goto :goto_0

    .line 145
    :pswitch_3
    const-string v0, "GRAPHQL_CONSISTENCY_MODEL_UPDATER"

    goto :goto_0

    .line 147
    :pswitch_4
    const-string v0, "GRAPHQL_CACHEPOLICY_NETWORK_ONLY_POLICY"

    goto :goto_0

    .line 149
    :pswitch_5
    const-string v0, "GRAPHQL_CACHEPOLICY_FETCH_AND_FILL"

    goto :goto_0

    .line 151
    :pswitch_6
    const-string v0, "GRAPHQL_CACHEPOLICY_CACHE_ONLY_POLICY"

    goto :goto_0

    .line 153
    :pswitch_7
    const-string v0, "GRAPHQL_PERF_MARKER_MUTATION"

    goto :goto_0

    .line 155
    :pswitch_8
    const-string v0, "GRAPHQL_PERF_MARKER_SUBSCRIPTION_PUSH"

    goto :goto_0

    .line 157
    :pswitch_9
    const-string v0, "GRAPHQL_PERF_MARKER_PUT_1000_FRIENDS"

    goto :goto_0

    .line 159
    :pswitch_a
    const-string v0, "GRAPHQL_PERF_MARKER_GET_1000_FRIENDS"

    goto :goto_0

    .line 161
    :pswitch_b
    const-string v0, "GRAPHQL_PERF_EVENT_CACHE_HIT"

    goto :goto_0

    .line 163
    :pswitch_c
    const-string v0, "GRAPHQL_PERF_EVENT_CACHE_MISS"

    goto :goto_0

    .line 165
    :pswitch_d
    const-string v0, "GRAPHQL_FETCH_MSG_FAIL"

    goto :goto_0

    .line 167
    :pswitch_e
    const-string v0, "GRAPHQL_PERF_MARKER_GET_100_MAPS"

    goto :goto_0

    .line 169
    :pswitch_f
    const-string v0, "GRAPHQL_CONSISTENCY_BENCHMARK_DISK_READ"

    goto :goto_0

    .line 171
    :pswitch_10
    const-string v0, "GRAPHQL_CONSISTENCY_BENCHMARK_UPDATE_FROM_CACHE"

    goto :goto_0

    .line 173
    :pswitch_11
    const-string v0, "GRAPHQL_BENCHMARK_RMT_TOGGLE_LIKE"

    goto :goto_0

    .line 175
    :pswitch_12
    const-string v0, "GRAPHQL_FETCH_FROM_DB"

    goto :goto_0

    .line 177
    :pswitch_13
    const-string v0, "GRAPHQL_UPDATE_MODEL_FROM_CACHE"

    goto :goto_0

    .line 179
    :pswitch_14
    const-string v0, "GRAPHQL_UPDATE_DB"

    goto :goto_0

    .line 181
    :pswitch_15
    const-string v0, "GRAPHQL_BENCHMARK_READ_CONSISTENT_FIELDS"

    goto :goto_0

    .line 183
    :pswitch_16
    const-string v0, "GRAPHQL_BENCHMARK_READ_CONSISTENT_FIELDS_FLATBUFFER"

    goto :goto_0

    .line 185
    :pswitch_17
    const-string v0, "GRAPHQL_GRAPHQL_READ_QUERY"

    goto :goto_0

    .line 187
    :pswitch_18
    const-string v0, "GRAPHQL_GRAPHQL_BATCH_QUERY"

    goto :goto_0

    .line 189
    :pswitch_19
    const-string v0, "GRAPHQL_GRAPHQL_MUTATION"

    goto :goto_0

    .line 191
    :pswitch_1a
    const-string v0, "GRAPHQL_TRIM_ON_BACKGROUND"

    goto :goto_0

    .line 193
    :pswitch_1b
    const-string v0, "GRAPHQL_CONSISTENT_FIELDS_QUERY"

    goto :goto_0

    .line 195
    :pswitch_1c
    const-string v0, "GRAPHQL_LIVE_QUERY_SUBSCRIBE"

    goto :goto_0

    .line 197
    :pswitch_1d
    const-string v0, "GRAPHQL_LIVE_QUERY_RETRY"

    goto :goto_0

    .line 199
    :pswitch_1e
    const-string v0, "GRAPHQL_LIVE_QUERY_CANCEL"

    goto :goto_0

    .line 201
    :pswitch_1f
    const-string v0, "GRAPHQL_LIVE_QUERY_RECEIVE"

    goto :goto_0

    .line 203
    :pswitch_20
    const-string v0, "GRAPHQL_LIVE_QUERY_ERROR"

    goto :goto_0

    .line 205
    :pswitch_21
    const-string v0, "GRAPHQL_GRAPHSERVICE_CONSISTENCY_CONFIRMED"

    goto :goto_0

    .line 207
    :pswitch_22
    const-string v0, "GRAPHQL_GRAPHSERVICE_CONSISTENCY_OPTIMISTIC_START"

    goto :goto_0

    .line 209
    :pswitch_23
    const-string v0, "GRAPHQL_GRAPHSERVICE_CONSISTENCY_OPTIMISTIC_CANCEL"

    goto :goto_0

    .line 211
    :pswitch_24
    const-string v0, "GRAPHQL_AB_VISITOR_APPLY"

    goto :goto_0

    .line 213
    :pswitch_25
    const-string v0, "GRAPHQL_CONSISTENT_FIELDS_TUPLE_QUERY"

    goto :goto_0

    .line 215
    :pswitch_26
    const-string v0, "GRAPHQL_GRAPHSERVICE_READ_QUERY"

    goto :goto_0

    .line 217
    :pswitch_27
    const-string v0, "GRAPHQL_GRAPHSERVICE_QUERY_EXECUTOR"

    goto :goto_0

    .line 219
    :pswitch_28
    const-string v0, "GRAPHQL_GRAPHSERVICE_LOAD_PAGE"

    goto :goto_0

    .line 221
    :pswitch_29
    const-string v0, "GRAPHQL_REPLACE_NODE_IMPL"

    goto :goto_0

    .line 223
    :pswitch_2a
    const-string v0, "GRAPHQL_GRAPHSERVICE_MUTATION"

    goto :goto_0

    .line 225
    :pswitch_2b
    const-string v0, "GRAPHQL_GRAPHSERVICE_LOAD_NEXT_PAGE"

    goto/16 :goto_0

    .line 227
    :pswitch_2c
    const-string v0, "GRAPHQL_GRAPHSERVICE_LOAD_PREVIOUS_PAGE"

    goto/16 :goto_0

    .line 229
    :pswitch_2d
    const-string v0, "GRAPHQL_GRAPHSERVICE_RESET_PAGE"

    goto/16 :goto_0

    .line 231
    :pswitch_2e
    const-string v0, "GRAPHQL_GRAPHSERVICE_QUERY_EXECUTION"

    goto/16 :goto_0

    .line 233
    :pswitch_2f
    const-string v0, "GRAPHQL_GRAPHSERVICE_CONSISTENCY_UPDATE"

    goto/16 :goto_0

    .line 235
    :pswitch_30
    const-string v0, "GRAPHQL_GRAPHSERVICE_QUERY_EXECUTION_DEBUG"

    goto/16 :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
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
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
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
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
    .end packed-switch
.end method
