.class public Lcom/facebook/quicklog/identifiers/GamesAppAndroid;
.super Ljava/lang/Object;
.source "GamesAppAndroid.java"


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
    .line 42
    packed-switch p0, :pswitch_data_0

    .line 59
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    const-string v0, "GAMES_APP_ANDROID_COLD_START_MAIN"

    goto :goto_0

    .line 46
    :pswitch_1
    const-string v0, "GAMES_APP_ANDROID_COLD_START_LOGIN"

    goto :goto_0

    .line 48
    :pswitch_2
    const-string v0, "GAMES_APP_ANDROID_COLD_START_DEX_LOAD"

    goto :goto_0

    .line 50
    :pswitch_3
    const-string v0, "GAMES_APP_ANDROID_INITIAL_FEED_LOAD_TIME"

    goto :goto_0

    .line 52
    :pswitch_4
    const-string v0, "GAMES_APP_ANDROID_FEED_LOAD_TIME"

    goto :goto_0

    .line 54
    :pswitch_5
    const-string v0, "GAMES_APP_ANDROID_GAMES_APP_FEED_TTI"

    goto :goto_0

    .line 56
    :pswitch_6
    const-string v0, "GAMES_APP_ANDROID_COLD_START"

    goto :goto_0

    .line 42
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
    .end packed-switch
.end method
