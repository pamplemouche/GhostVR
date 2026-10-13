.class public Lcom/facebook/quicklog/identifiers/Reliability;
.super Ljava/lang/Object;
.source "Reliability.java"


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
    .line 44
    packed-switch p0, :pswitch_data_0

    .line 61
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    const-string v0, "RELIABILITY_APPSTATELOGGER_WRITE"

    goto :goto_0

    .line 48
    :pswitch_1
    const-string v0, "RELIABILITY_TTRC_FAILURE_ANDROID"

    goto :goto_0

    .line 50
    :pswitch_2
    const-string v0, "RELIABILITY_TTRC_LONG_CANCEL_ANDROID"

    goto :goto_0

    .line 52
    :pswitch_3
    const-string v0, "RELIABILITY_ALEX_N_TEST"

    goto :goto_0

    .line 54
    :pswitch_4
    const-string v0, "RELIABILITY_LONG_STALL_TRACE_ANDROID"

    goto :goto_0

    .line 56
    :pswitch_5
    const-string v0, "RELIABILITY_UI_THREAD_LAG_ANDROID"

    goto :goto_0

    .line 58
    :pswitch_6
    const-string v0, "RELIABILITY_SOFT_ERROR"

    goto :goto_0

    .line 44
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
