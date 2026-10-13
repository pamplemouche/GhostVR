.class public Lcom/facebook/quicklog/identifiers/GraphqlAndroidCursor;
.super Ljava/lang/Object;
.source "GraphqlAndroidCursor.java"


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
    .line 80
    packed-switch p0, :pswitch_data_0

    .line 129
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 82
    :pswitch_1
    const-string v0, "GRAPHQL_ANDROID_CURSOR_CURSOR_DB_PUT_MULTI"

    goto :goto_0

    .line 84
    :pswitch_2
    const-string v0, "GRAPHQL_ANDROID_CURSOR_CURSOR_DB_DELETE_SESSION"

    goto :goto_0

    .line 86
    :pswitch_3
    const-string v0, "GRAPHQL_ANDROID_CURSOR_CURSOR_DB_VISIT_REFLATTEN"

    goto :goto_0

    .line 88
    :pswitch_4
    const-string v0, "GRAPHQL_ANDROID_CURSOR_CURSOR_DB_VISIT_DELTA_BUFFER"

    goto :goto_0

    .line 90
    :pswitch_5
    const-string v0, "GRAPHQL_ANDROID_CURSOR_CURSOR_DB_CTSCAN_LIKE_CONFIRMED"

    goto :goto_0

    .line 92
    :pswitch_6
    const-string v0, "GRAPHQL_ANDROID_CURSOR_CURSOR_DB_CTSCAN_LIKE_OPTIMISTIC"

    goto :goto_0

    .line 94
    :pswitch_7
    const-string v0, "GRAPHQL_ANDROID_CURSOR_VISIT_ROW"

    goto :goto_0

    .line 96
    :pswitch_8
    const-string v0, "GRAPHQL_ANDROID_CURSOR_APPLY_VISITORS"

    goto :goto_0

    .line 98
    :pswitch_9
    const-string v0, "GRAPHQL_ANDROID_CURSOR_APPLY_VISITOR"

    goto :goto_0

    .line 100
    :pswitch_a
    const-string v0, "GRAPHQL_ANDROID_CURSOR_TRIM_OLD_SESSIONS"

    goto :goto_0

    .line 102
    :pswitch_b
    const-string v0, "GRAPHQL_ANDROID_CURSOR_TRIM_OLD_ROWS_FROM_SESSIONS"

    goto :goto_0

    .line 104
    :pswitch_c
    const-string v0, "GRAPHQL_ANDROID_CURSOR_TRIM_UNUSED_MODEL_FILES"

    goto :goto_0

    .line 106
    :pswitch_d
    const-string v0, "GRAPHQL_ANDROID_CURSOR_TRIM_TO_MINIMUM"

    goto :goto_0

    .line 108
    :pswitch_e
    const-string v0, "GRAPHQL_ANDROID_CURSOR_QUERY_CHUNKS"

    goto :goto_0

    .line 110
    :pswitch_f
    const-string v0, "GRAPHQL_ANDROID_CURSOR_QUERY_ROWS"

    goto :goto_0

    .line 112
    :pswitch_10
    const-string v0, "GRAPHQL_ANDROID_CURSOR_TRIM_TO_NOTHING"

    goto :goto_0

    .line 114
    :pswitch_11
    const-string v0, "GRAPHQL_ANDROID_CURSOR_CURSOR_DB_PUT_MULTI_CONSISTENCY"

    goto :goto_0

    .line 116
    :pswitch_12
    const-string v0, "GRAPHQL_ANDROID_CURSOR_QUERY"

    goto :goto_0

    .line 118
    :pswitch_13
    const-string v0, "GRAPHQL_ANDROID_CURSOR_FLUSH_SESSION"

    goto :goto_0

    .line 120
    :pswitch_14
    const-string v0, "GRAPHQL_ANDROID_CURSOR_CONNECTION_CONTROLLER_INITIALIZE"

    goto :goto_0

    .line 122
    :pswitch_15
    const-string v0, "GRAPHQL_ANDROID_CURSOR_CONNECTION_CONTROLLER_FETCH_EDGES"

    goto :goto_0

    .line 124
    :pswitch_16
    const-string v0, "GRAPHQL_ANDROID_CURSOR_FLATTEN_TREE_MODELS_IN_CONNECTION_CONTROLLER_ON_GRAPH_SERVICES"

    goto :goto_0

    .line 126
    :pswitch_17
    const-string v0, "GRAPHQL_ANDROID_CURSOR_DESERIALIZE_MODEL"

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
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
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
