.class public Lcom/facebook/quicklog/identifiers/FbliteNetworkMessages;
.super Ljava/lang/Object;
.source "FbliteNetworkMessages.java"


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
    .line 38
    packed-switch p0, :pswitch_data_0

    .line 49
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    const-string v0, "FBLITE_NETWORK_MESSAGES_SEND_CLIENT_MESSAGE"

    goto :goto_0

    .line 42
    :pswitch_1
    const-string v0, "FBLITE_NETWORK_MESSAGES_RECEIVE_SERVER_MESSAGE"

    goto :goto_0

    .line 44
    :pswitch_2
    const-string v0, "FBLITE_NETWORK_MESSAGES_FBLITE_NETWORK_PROFILING"

    goto :goto_0

    .line 46
    :pswitch_3
    const-string v0, "FBLITE_NETWORK_MESSAGES_FBLITE_RTT"

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
