.class public Lcom/facebook/tigon/iface/TigonErrorCodeUtil;
.super Ljava/lang/Object;
.source "TigonErrorCodeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 23
    const-string v0, "<Unknown>"

    :goto_0
    return-object v0

    .line 11
    :pswitch_0
    const-string v0, "None"

    goto :goto_0

    .line 13
    :pswitch_1
    const-string v0, "Cancel"

    goto :goto_0

    .line 15
    :pswitch_2
    const-string v0, "TransientError"

    goto :goto_0

    .line 17
    :pswitch_3
    const-string v0, "FatalError"

    goto :goto_0

    .line 19
    :pswitch_4
    const-string v0, "InvalidRequest"

    goto :goto_0

    .line 21
    :pswitch_5
    const-string v0, "RequestNotSupported"

    goto :goto_0

    .line 9
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
