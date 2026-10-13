.class public Lcom/facebook/quicklog/identifiers/TestAndroid;
.super Ljava/lang/Object;
.source "TestAndroid.java"


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
    .line 52
    packed-switch p0, :pswitch_data_0

    .line 71
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    const-string v0, "TEST_ANDROID_TESTYTEST"

    goto :goto_0

    .line 56
    :pswitch_1
    const-string v0, "TEST_ANDROID_TEST2"

    goto :goto_0

    .line 58
    :pswitch_2
    const-string v0, "TEST_ANDROID_TEST3"

    goto :goto_0

    .line 60
    :pswitch_3
    const-string v0, "TEST_ANDROID_TEST_FOR_FIXING"

    goto :goto_0

    .line 62
    :pswitch_4
    const-string v0, "TEST_ANDROID_TEST_5"

    goto :goto_0

    .line 64
    :pswitch_5
    const-string v0, "TEST_ANDROID_TEST4"

    goto :goto_0

    .line 66
    :pswitch_6
    const-string v0, "TEST_ANDROID_TEST6"

    goto :goto_0

    .line 68
    :pswitch_7
    const-string v0, "TEST_ANDROID_ALEXN_TEST_REMOVE"

    goto :goto_0

    .line 52
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
