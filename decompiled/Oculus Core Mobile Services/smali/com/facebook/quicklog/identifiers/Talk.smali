.class public Lcom/facebook/quicklog/identifiers/Talk;
.super Ljava/lang/Object;
.source "Talk.java"


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
    .line 56
    packed-switch p0, :pswitch_data_0

    .line 87
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    const-string v0, "TALK_T4A_PERF_COLD_START_FBAPPIMPL_ON_CREATE"

    goto :goto_0

    .line 60
    :pswitch_1
    const-string v0, "TALK_T4A_PERF_COLD_START"

    goto :goto_0

    .line 62
    :pswitch_2
    const-string v0, "TALK_T4A_PERF_WARM_START"

    goto :goto_0

    .line 64
    :pswitch_3
    const-string v0, "TALK_T4A_PERF_LUKEWARM_START"

    goto :goto_0

    .line 66
    :pswitch_4
    const-string v0, "TALK_T4A_PERF_MSG_THEAD_LOAD"

    goto :goto_0

    .line 68
    :pswitch_5
    const-string v0, "TALK_T4A_PERF_RTC_OUTGOING_CALL_START"

    goto :goto_0

    .line 70
    :pswitch_6
    const-string v0, "TALK_T4A_PERF_RTC_INCOMING_CALL_START"

    goto :goto_0

    .line 72
    :pswitch_7
    const-string v0, "TALK_T4A_PERF_THREAD_LIST"

    goto :goto_0

    .line 74
    :pswitch_8
    const-string v0, "TALK_T4A_PERF_PROFILE_LOAD"

    goto :goto_0

    .line 76
    :pswitch_9
    const-string v0, "TALK_THREAD_VIEW_INITIALIZATION"

    goto :goto_0

    .line 78
    :pswitch_a
    const-string v0, "TALK_T4A_COLD_START"

    goto :goto_0

    .line 80
    :pswitch_b
    const-string v0, "TALK_T4A_LUKEWARM_START"

    goto :goto_0

    .line 82
    :pswitch_c
    const-string v0, "TALK_T4A_WARM_START"

    goto :goto_0

    .line 84
    :pswitch_d
    const-string v0, "TALK_T4A_COLD_START_IN_BACKGROUND"

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
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
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
