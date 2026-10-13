.class public Lcom/facebook/quicklog/identifiers/Hello;
.super Ljava/lang/Object;
.source "Hello.java"


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
    .line 64
    packed-switch p0, :pswitch_data_0

    .line 91
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 66
    :pswitch_1
    const-string v0, "HELLO_EVERYONE_TAB"

    goto :goto_0

    .line 68
    :pswitch_2
    const-string v0, "HELLO_ME_TAB"

    goto :goto_0

    .line 70
    :pswitch_3
    const-string v0, "HELLO_RECENT_TAB"

    goto :goto_0

    .line 72
    :pswitch_4
    const-string v0, "HELLO_DIALER_TAB"

    goto :goto_0

    .line 74
    :pswitch_5
    const-string v0, "HELLO_COLD_START"

    goto :goto_0

    .line 76
    :pswitch_6
    const-string v0, "HELLO_WARM_START"

    goto :goto_0

    .line 78
    :pswitch_7
    const-string v0, "HELLO_MAIN_ACTIVITY_CREATE"

    goto :goto_0

    .line 80
    :pswitch_8
    const-string v0, "HELLO_SHOW_HISTORY"

    goto :goto_0

    .line 82
    :pswitch_9
    const-string v0, "HELLO_LOCAL_SEARCH"

    goto :goto_0

    .line 84
    :pswitch_a
    const-string v0, "HELLO_SEARCH_TIME_TO_FIRST_RESULT"

    goto :goto_0

    .line 86
    :pswitch_b
    const-string v0, "HELLO_REMOTE_SEARCH"

    goto :goto_0

    .line 88
    :pswitch_c
    const-string v0, "HELLO_REMOTE_SEARCH_NO_LOCATION"

    goto :goto_0

    .line 64
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
        :pswitch_c
    .end packed-switch
.end method
