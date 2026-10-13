.class public Lcom/facebook/quicklog/identifiers/Crash;
.super Ljava/lang/Object;
.source "Crash.java"


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

    .line 41
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    const-string v0, "CRASH_ACRA_SETUP"

    goto :goto_0

    .line 36
    :pswitch_1
    const-string v0, "CRASH_BREAKPAD_MANAGER_SETUP"

    goto :goto_0

    .line 38
    :pswitch_2
    const-string v0, "CRASH_CATCH_ME_IF_YOU_CAN_SETUP"

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
