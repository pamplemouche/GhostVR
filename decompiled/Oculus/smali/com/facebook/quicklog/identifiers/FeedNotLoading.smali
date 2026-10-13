.class public Lcom/facebook/quicklog/identifiers/FeedNotLoading;
.super Ljava/lang/Object;
.source "FeedNotLoading.java"


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
    .line 65
    packed-switch p0, :pswitch_data_0

    .line 102
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 67
    :pswitch_1
    const-string v0, "FEED_NOT_LOADING_FETCH_REQUEST"

    goto :goto_0

    .line 69
    :pswitch_2
    const-string v0, "FEED_NOT_LOADING_FETCH_SUCCESS_NON_ZERO"

    goto :goto_0

    .line 71
    :pswitch_3
    const-string v0, "FEED_NOT_LOADING_FETCH_SUCCESS_ZERO"

    goto :goto_0

    .line 73
    :pswitch_4
    const-string v0, "FEED_NOT_LOADING_FETCH_ERROR_API"

    goto :goto_0

    .line 75
    :pswitch_5
    const-string v0, "FEED_NOT_LOADING_FETCH_ERROR_HTTP_500"

    goto :goto_0

    .line 77
    :pswitch_6
    const-string v0, "FEED_NOT_LOADING_FETCH_ERROR_HTTP_40X"

    goto :goto_0

    .line 79
    :pswitch_7
    const-string v0, "FEED_NOT_LOADING_FETCH_ERROR_API_SERVER_OOM"

    goto :goto_0

    .line 81
    :pswitch_8
    const-string v0, "FEED_NOT_LOADING_FETCH_ERROR_OTHER"

    goto :goto_0

    .line 83
    :pswitch_9
    const-string v0, "FEED_NOT_LOADING_FETCH_ERROR_CONNECTION_FAILURE"

    goto :goto_0

    .line 85
    :pswitch_a
    const-string v0, "FEED_NOT_LOADING_FETCH_ERROR_CONNECTION_FAILURE_NETWORK_UNREACHABLE"

    goto :goto_0

    .line 87
    :pswitch_b
    const-string v0, "FEED_NOT_LOADING_SAD_CLOUD"

    goto :goto_0

    .line 89
    :pswitch_c
    const-string v0, "FEED_NOT_LOADING_RETRY_BUTTON_CLICKED"

    goto :goto_0

    .line 91
    :pswitch_d
    const-string v0, "FEED_NOT_LOADING_INDICATOR_SHOWN"

    goto :goto_0

    .line 93
    :pswitch_e
    const-string v0, "FEED_NOT_LOADING_STORIES_ADDED_TO_UI"

    goto :goto_0

    .line 95
    :pswitch_f
    const-string v0, "FEED_NOT_LOADING_PULL_TO_REFRESH"

    goto :goto_0

    .line 97
    :pswitch_10
    const-string v0, "FEED_NOT_LOADING_FETCH_INCOMPLETE_5S"

    goto :goto_0

    .line 99
    :pswitch_11
    const-string v0, "FEED_NOT_LOADING_FETCH_INCOMPLETE_10S"

    goto :goto_0

    .line 65
    nop

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
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
