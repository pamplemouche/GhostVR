.class public Lcom/facebook/quicklog/identifiers/FeedDeliveryHealth;
.super Ljava/lang/Object;
.source "FeedDeliveryHealth.java"


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
    .line 73
    packed-switch p0, :pswitch_data_0

    .line 120
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 75
    :pswitch_1
    const-string v0, "FEED_DELIVERY_HEALTH_FETCH_ATTEMPT_ANDROID"

    goto :goto_0

    .line 77
    :pswitch_2
    const-string v0, "FEED_DELIVERY_HEALTH_RESPONSE_FAILURE_ANDROID"

    goto :goto_0

    .line 79
    :pswitch_3
    const-string v0, "FEED_DELIVERY_HEALTH_RESPONSE_EMPTY_ANDROID"

    goto :goto_0

    .line 81
    :pswitch_4
    const-string v0, "FEED_DELIVERY_HEALTH_RECEIVED_EDGES_ANDROID"

    goto :goto_0

    .line 83
    :pswitch_5
    const-string v0, "FEED_DELIVERY_HEALTH_DB_EMPTY_ANDROID"

    goto :goto_0

    .line 85
    :pswitch_6
    const-string v0, "FEED_DELIVERY_HEALTH_DB_CLEAR_ANDROID"

    goto :goto_0

    .line 87
    :pswitch_7
    const-string v0, "FEED_DELIVERY_HEALTH_FETCH_ATTEMPT_FBLITE"

    goto :goto_0

    .line 89
    :pswitch_8
    const-string v0, "FEED_DELIVERY_HEALTH_RESPONSE_FAILURE_FBLITE"

    goto :goto_0

    .line 91
    :pswitch_9
    const-string v0, "FEED_DELIVERY_HEALTH_RESPONSE_EMPTY_FBLITE"

    goto :goto_0

    .line 93
    :pswitch_a
    const-string v0, "FEED_DELIVERY_HEALTH_RECEIVED_EDGES_FBLITE"

    goto :goto_0

    .line 95
    :pswitch_b
    const-string v0, "FEED_DELIVERY_HEALTH_DB_EMPTY_FBLITE"

    goto :goto_0

    .line 97
    :pswitch_c
    const-string v0, "FEED_DELIVERY_HEALTH_FEED_RENDERED_ANDROID"

    goto :goto_0

    .line 99
    :pswitch_d
    const-string v0, "FEED_DELIVERY_HEALTH_FBLITE_FEED_HELATH"

    goto :goto_0

    .line 101
    :pswitch_e
    const-string v0, "FEED_DELIVERY_HEALTH_FEED_REQUEST_FB4A"

    goto :goto_0

    .line 103
    :pswitch_f
    const-string v0, "FEED_DELIVERY_HEALTH_FEED_RESPONSE_FB4A"

    goto :goto_0

    .line 105
    :pswitch_10
    const-string v0, "FEED_DELIVERY_HEALTH_TIGON_REQUEST_FB4A"

    goto :goto_0

    .line 107
    :pswitch_11
    const-string v0, "FEED_DELIVERY_HEALTH_NETWORK_CALLBACK_TIMEOUT_FB4A"

    goto :goto_0

    .line 109
    :pswitch_12
    const-string v0, "FEED_DELIVERY_HEALTH_FEED_RENDERED_FB4A"

    goto :goto_0

    .line 111
    :pswitch_13
    const-string v0, "FEED_DELIVERY_HEALTH_TIGON_RESPONSE_FB4A"

    goto :goto_0

    .line 113
    :pswitch_14
    const-string v0, "FEED_DELIVERY_HEALTH_NETWORK_CALLBACK_TIMEOUT_FBLITE"

    goto :goto_0

    .line 115
    :pswitch_15
    const-string v0, "FEED_DELIVERY_HEALTH_FEED_RENDERED_FBLITE"

    goto :goto_0

    .line 117
    :pswitch_16
    const-string v0, "FEED_DELIVERY_HEALTH_FEED_FORMATTED_FBLITE"

    goto :goto_0

    .line 73
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
