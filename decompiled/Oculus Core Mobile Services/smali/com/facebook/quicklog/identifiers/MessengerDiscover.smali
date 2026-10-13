.class public Lcom/facebook/quicklog/identifiers/MessengerDiscover;
.super Ljava/lang/Object;
.source "MessengerDiscover.java"


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
    .line 37
    packed-switch p0, :pswitch_data_0

    .line 46
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    const-string v0, "MESSENGER_DISCOVER_PLATFORM_DISCOVER_LOAD"

    goto :goto_0

    .line 41
    :pswitch_1
    const-string v0, "MESSENGER_DISCOVER_DISCOVER_TAB_RENDER"

    goto :goto_0

    .line 43
    :pswitch_2
    const-string v0, "MESSENGER_DISCOVER_DISCOVER_TAB_FETCH_UNITS"

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
