.class public Lcom/facebook/quicklog/identifiers/Ufi;
.super Ljava/lang/Object;
.source "Ufi.java"


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
    .line 106
    packed-switch p0, :pswitch_data_0

    .line 181
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 108
    :pswitch_1
    const-string v0, "UFI_NNF_FLYOUT_LOAD_DB_CACHE"

    goto :goto_0

    .line 110
    :pswitch_2
    const-string v0, "UFI_NNF_FLYOUT_LOAD_DB_CACHE_AND_RENDER"

    goto :goto_0

    .line 112
    :pswitch_3
    const-string v0, "UFI_NNF_FLYOUT_LOAD_NETWORK"

    goto :goto_0

    .line 114
    :pswitch_4
    const-string v0, "UFI_NNF_FLYOUT_LOAD_NETWORK_AND_RENDER"

    goto :goto_0

    .line 116
    :pswitch_5
    const-string v0, "UFI_NNF_FLYOUT_LOAD_NETWORK_WITHOUT_CACHE"

    goto :goto_0

    .line 118
    :pswitch_6
    const-string v0, "UFI_NNF_FLYOUT_LOAD_NETWORK_WITHOUT_CACHE_AND_RENDER"

    goto :goto_0

    .line 120
    :pswitch_7
    const-string v0, "NNF_FlyoutLoadCompleteFlow"

    goto :goto_0

    .line 122
    :pswitch_8
    const-string v0, "NNF_FlyoutLoadCompleteFlowAndRender"

    goto :goto_0

    .line 124
    :pswitch_9
    const-string v0, "UFI_NNF_FLYOUT_ON_CREATE_TIME"

    goto :goto_0

    .line 126
    :pswitch_a
    const-string v0, "UFI_NNF_FLYOUT_FRAGMENT_CREATE_TIME"

    goto :goto_0

    .line 128
    :pswitch_b
    const-string v0, "UFI_PHOTO_FLYOUT_LOAD_CACHED"

    goto :goto_0

    .line 130
    :pswitch_c
    const-string v0, "UFI_PHOTO_FLYOUT_LOAD_NETWORK"

    goto :goto_0

    .line 132
    :pswitch_d
    const-string v0, "UFI_DASH_FLYOUT_LOAD_CACHED"

    goto :goto_0

    .line 134
    :pswitch_e
    const-string v0, "UFI_DASH_FLYOUT_LOAD_NETWORK"

    goto :goto_0

    .line 136
    :pswitch_f
    const-string v0, "UFI_FLYOUT_NETWORK_TIME_FEEDBACK_ID"

    goto :goto_0

    .line 138
    :pswitch_10
    const-string v0, "UFI_FLYOUT_NETWORK_TIME_EXECUTOR_FEEDBACK_ID"

    goto :goto_0

    .line 140
    :pswitch_11
    const-string v0, "UFI_FLYOUT_NETWORK_TIME_PHOTO_ID"

    goto :goto_0

    .line 142
    :pswitch_12
    const-string v0, "UFI_NNF_FLYOUT_ON_CREATEVIEW_TIME"

    goto :goto_0

    .line 144
    :pswitch_13
    const-string v0, "UFI_NNF_FLYOUT_ON_VIEWCREATED_TIME"

    goto :goto_0

    .line 146
    :pswitch_14
    const-string v0, "UFI_NNF_FLYOUT_ON_ACTIVITYCRAETED_TIME"

    goto :goto_0

    .line 148
    :pswitch_15
    const-string v0, "UFI_NNF_FLYOUT_ON_RESUME_TIME"

    goto :goto_0

    .line 150
    :pswitch_16
    const-string v0, "UFI_NNF_FLYOUT_RESUME_TO_RENDER_TIME"

    goto :goto_0

    .line 152
    :pswitch_17
    const-string v0, "UFI_NNF_FLYOUT_ANIMATION_WAIT_TIME"

    goto :goto_0

    .line 154
    :pswitch_18
    const-string v0, "UFI_NNF_FLYOUT_LOAD_COMPLETE_FLOW_TO_RENDER"

    goto :goto_0

    .line 156
    :pswitch_19
    const-string v0, "UfiLoadMoreComments"

    goto :goto_0

    .line 158
    :pswitch_1a
    const-string v0, "UFI_NNF_FLYOUT_ANIMATION_ADJUSTED_WAIT_TIME"

    goto :goto_0

    .line 160
    :pswitch_1b
    const-string v0, "UFI_NNF_FLYOUT_RESUME_TO_ANIMATION_WAIT"

    goto :goto_0

    .line 162
    :pswitch_1c
    const-string v0, "UFI_NNF_FLYOUT_ANIMATION_TO_DATA_FETCH"

    goto :goto_0

    .line 164
    :pswitch_1d
    const-string v0, "UfiFuturesPostComment"

    goto :goto_0

    .line 166
    :pswitch_1e
    const-string v0, "UFI_PERF_MARKER_OPTIMISTIC_COMMENT"

    goto :goto_0

    .line 168
    :pswitch_1f
    const-string v0, "NNF_FlyoutLoadNetworkWithCache"

    goto :goto_0

    .line 170
    :pswitch_20
    const-string v0, "UFI_NNF_FLYOUT_BG_INFLATABLE_FEEDBACK_TOTAL_TIME"

    goto :goto_0

    .line 172
    :pswitch_21
    const-string v0, "UFI_NNF_FLYOUT_BG_INFLATION_TIME"

    goto :goto_0

    .line 174
    :pswitch_22
    const-string v0, "UFI_THREADED_FLYOUT_LOAD_COMPLETE_FLOW_AND_RENDER"

    goto :goto_0

    .line 176
    :pswitch_23
    const-string v0, "UFI_SINGLELINECOMMENTCOMPOSERVIEW_INITIALIZATION"

    goto :goto_0

    .line 178
    :pswitch_24
    const-string v0, "UFI_COMMENT_FLYOUT_TTRC"

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_0
        :pswitch_22
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_24
    .end packed-switch
.end method
