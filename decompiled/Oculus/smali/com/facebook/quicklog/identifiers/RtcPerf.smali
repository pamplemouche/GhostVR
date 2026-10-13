.class public Lcom/facebook/quicklog/identifiers/RtcPerf;
.super Ljava/lang/Object;
.source "RtcPerf.java"


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
    .line 94
    packed-switch p0, :pswitch_data_0

    .line 161
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 96
    :pswitch_1
    const-string v0, "RTC_PERF_RTC_OUTGOING_CALL_START"

    goto :goto_0

    .line 98
    :pswitch_2
    const-string v0, "RTC_PERF_RTC_INCOMING_CALL_START"

    goto :goto_0

    .line 100
    :pswitch_3
    const-string v0, "RTC_PERF_RTC_FULLSCREEN_TO_VCH"

    goto :goto_0

    .line 102
    :pswitch_4
    const-string v0, "RTC_PERF_RTC_FULLSCREEN_CREATE_TO_VISIBLE"

    goto :goto_0

    .line 104
    :pswitch_5
    const-string v0, "RTC_PERF_RTC_VCH_TO_FULLSCREEN"

    goto :goto_0

    .line 106
    :pswitch_6
    const-string v0, "RTC_PERF_LAB_METRIC"

    goto :goto_0

    .line 108
    :pswitch_7
    const-string v0, "RTC_PERF_RTC_CREATE_CALL_ENT"

    goto :goto_0

    .line 110
    :pswitch_8
    const-string v0, "RTC_PERF_RTC_INCOMING_CALL_ANSWERED"

    goto :goto_0

    .line 112
    :pswitch_9
    const-string v0, "RTC_PERF_RTC_VOIP_STATUS_BAR_PRESSED"

    goto :goto_0

    .line 114
    :pswitch_a
    const-string v0, "RTC_PERF_PLATFORM_P2P_SET_REMOTE_DESCRIPTION"

    goto :goto_0

    .line 116
    :pswitch_b
    const-string v0, "RTC_PERF_PLATFORM_P2P_AUDIO_PERF"

    goto :goto_0

    .line 118
    :pswitch_c
    const-string v0, "RTC_PERF_PLATFORM_P2P_VIDEO_PERF"

    goto :goto_0

    .line 120
    :pswitch_d
    const-string v0, "RTC_PERF_PLATFORM_P2P_SET_LOCAL_DESCRIPTION"

    goto :goto_0

    .line 122
    :pswitch_e
    const-string v0, "RTC_PERF_PLATFORM_P2P_START_CALL_CALLER_FLOW"

    goto :goto_0

    .line 124
    :pswitch_f
    const-string v0, "RTC_PERF_PLATFORM_P2P_START_CALL_CALLEE_FLOW"

    goto :goto_0

    .line 126
    :pswitch_10
    const-string v0, "RTC_PERF_PLATFORM_P2P_ACCEPT_CALL_CALLER_FLOW"

    goto :goto_0

    .line 128
    :pswitch_11
    const-string v0, "RTC_PERF_PLATFORM_P2P_ACCEPT_CALL_CALLEE_FLOW"

    goto :goto_0

    .line 130
    :pswitch_12
    const-string v0, "RTC_PERF_RTC_OPEN_SCRIM"

    goto :goto_0

    .line 132
    :pswitch_13
    const-string v0, "RTC_PERF_RTC_REGENERATE_GRID_LAYOUT"

    goto :goto_0

    .line 134
    :pswitch_14
    const-string v0, "RTC_PERF_PLATFORM_MW_JOIN_CALL_FLOW"

    goto :goto_0

    .line 136
    :pswitch_15
    const-string v0, "RTC_PERF_PLATFORM_MW_CONNECT_TO_PARTICIPANT_FLOW"

    goto :goto_0

    .line 138
    :pswitch_16
    const-string v0, "RTC_PERF_PLATFORM_MW_INVITE_PARTICIPANT_INVITEE_FLOW"

    goto :goto_0

    .line 140
    :pswitch_17
    const-string v0, "RTC_PERF_PLATFORM_MW_INVITE_PARTICIPANT_INVITER_FLOW"

    goto :goto_0

    .line 142
    :pswitch_18
    const-string v0, "RTC_PERF_RTC_SCRIM_CONTACTS_PICKER"

    goto :goto_0

    .line 144
    :pswitch_19
    const-string v0, "RTC_PERF_PLATFORM_CLIENT_TRANSACTION"

    goto :goto_0

    .line 146
    :pswitch_1a
    const-string v0, "RTC_PERF_BONFIRE_INTEROP_NT"

    goto :goto_0

    .line 148
    :pswitch_1b
    const-string v0, "RTC_PERF_PLATFORM_MW_SET_REMOTE_DESCRIPTION"

    goto :goto_0

    .line 150
    :pswitch_1c
    const-string v0, "RTC_PERF_PLATFORM_SERVER_TRANSACTION"

    goto :goto_0

    .line 152
    :pswitch_1d
    const-string v0, "RTC_PERF_RTC_CALL_ENDED"

    goto :goto_0

    .line 154
    :pswitch_1e
    const-string v0, "RTC_PERF_RTC_LOOPBACK_AUDIO"

    goto :goto_0

    .line 156
    :pswitch_1f
    const-string v0, "RTC_PERF_RTC_COEX_SERVER_MSG"

    goto :goto_0

    .line 158
    :pswitch_20
    const-string v0, "RTC_PERF_PLATFORM_SDP_RENEGOTIATION"

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method
