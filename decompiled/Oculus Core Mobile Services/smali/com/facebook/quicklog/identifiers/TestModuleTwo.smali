.class public Lcom/facebook/quicklog/identifiers/TestModuleTwo;
.super Ljava/lang/Object;
.source "TestModuleTwo.java"


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
    .line 32
    packed-switch p0, :pswitch_data_0

    .line 43
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 34
    :pswitch_1
    const-string v0, "TEST_MODULE_TWO_TEST_EVENT_TWO"

    goto :goto_0

    .line 36
    :pswitch_2
    const-string v0, "TEST_MODULE_TWO_TEST_EVENT_THREE"

    goto :goto_0

    .line 38
    :pswitch_3
    const-string v0, "TEST_MODULE_TWO_TEST_EVENT_FOUR"

    goto :goto_0

    .line 40
    :pswitch_4
    const-string v0, "TEST_MODULE_TWO_TEST_EVENT_ONE"

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
