.class public Lcom/facebook/quicklog/identifiers/WiktorkTest;
.super Ljava/lang/Object;
.source "WiktorkTest.java"


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
    .line 40
    packed-switch p0, :pswitch_data_0

    .line 53
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 42
    :pswitch_1
    const-string v0, "hehe"

    goto :goto_0

    .line 44
    :pswitch_2
    const-string v0, "WIKTORK_TEST_WIKTORK_TEST_TWELVE"

    goto :goto_0

    .line 46
    :pswitch_3
    const-string v0, "WIKTORK_TEST_WIKTORK_TEST_APRIL"

    goto :goto_0

    .line 48
    :pswitch_4
    const-string v0, "WIKTORK_TEST_WIKTORK_TEST_EVENT_AGAIN"

    goto :goto_0

    .line 50
    :pswitch_5
    const-string v0, "WIKTORK_TEST_HELLO_DARKNESS_MY_OLD_FRIEND"

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
