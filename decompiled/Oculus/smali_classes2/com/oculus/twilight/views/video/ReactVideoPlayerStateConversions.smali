.class Lcom/oculus/twilight/views/video/ReactVideoPlayerStateConversions;
.super Ljava/lang/Object;
.source "ReactVideoPlayerStateConversions.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertToJSString(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 7
    sget-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerStateConversions$1;->$SwitchMap$com$oculus$twilight$views$video$ReactVideoPlayerState:[I

    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected ReactVideoPlayerState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :pswitch_0
    const-string v0, "idle"

    .line 23
    :goto_0
    return-object v0

    .line 11
    :pswitch_1
    const-string v0, "preparing"

    goto :goto_0

    .line 13
    :pswitch_2
    const-string v0, "ready"

    goto :goto_0

    .line 15
    :pswitch_3
    const-string v0, "buffering"

    goto :goto_0

    .line 17
    :pswitch_4
    const-string v0, "playing"

    goto :goto_0

    .line 19
    :pswitch_5
    const-string v0, "ended"

    goto :goto_0

    .line 21
    :pswitch_6
    const-string v0, "error"

    goto :goto_0

    .line 23
    :pswitch_7
    const-string v0, "undefined"

    goto :goto_0

    .line 7
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
