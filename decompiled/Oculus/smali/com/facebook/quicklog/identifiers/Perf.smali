.class public Lcom/facebook/quicklog/identifiers/Perf;
.super Ljava/lang/Object;
.source "Perf.java"


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
    .line 109
    packed-switch p0, :pswitch_data_0

    .line 178
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 111
    :pswitch_1
    const-string v0, "PERF_TEST1"

    goto :goto_0

    .line 113
    :pswitch_2
    const-string v0, "PERF_TEST2"

    goto :goto_0

    .line 115
    :pswitch_3
    const-string v0, "PERF_QUICKLOG"

    goto :goto_0

    .line 117
    :pswitch_4
    const-string v0, "PERF_SEQUENCELOG"

    goto :goto_0

    .line 119
    :pswitch_5
    const-string v0, "PERF_PERFLOG"

    goto :goto_0

    .line 121
    :pswitch_6
    const-string v0, "PERF_MEMORY_PROFILING"

    goto :goto_0

    .line 123
    :pswitch_7
    const-string v0, "PERF_ELIGIBLE_FOR_INTERSTITIAL_TRIGGER"

    goto :goto_0

    .line 125
    :pswitch_8
    const-string v0, "PERF_RESTORE_INTERSTITIAL_TRIGGER_STATE"

    goto :goto_0

    .line 127
    :pswitch_9
    const-string v0, "PERF_RESTORE_LAZY_TRIGGER_IDS"

    goto :goto_0

    .line 129
    :pswitch_a
    const-string v0, "PERF_READ_TRIGGER_TOIDS"

    goto :goto_0

    .line 131
    :pswitch_b
    const-string v0, "PERF_GET_FETCH_INTERSTITIAL_RESULT"

    goto :goto_0

    .line 133
    :pswitch_c
    const-string v0, "PERF_TOUCH_EVENT_LATENCY"

    goto :goto_0

    .line 135
    :pswitch_d
    const-string v0, "PERF_FBLITE_CLIENT_INIT"

    goto :goto_0

    .line 137
    :pswitch_e
    const-string v0, "PERF_FBLITE_CONNECTION_INIT"

    goto :goto_0

    .line 139
    :pswitch_f
    const-string v0, "PERF_FBLITE_SESSION_ESTABLISHED"

    goto :goto_0

    .line 141
    :pswitch_10
    const-string v0, "PERF_FBLITE_CLIENT_TTI"

    goto :goto_0

    .line 143
    :pswitch_11
    const-string v0, "PERF_FBLITE_CLIENT_TTI_SCREEN_READY"

    goto :goto_0

    .line 145
    :pswitch_12
    const-string v0, "PERF_FBLITE_CLIENT_TTI_SCREEN_DRAWN"

    goto :goto_0

    .line 147
    :pswitch_13
    const-string v0, "PERF_FBLITE_SESSION_EVENT"

    goto :goto_0

    .line 149
    :pswitch_14
    const-string v0, "PERF_FBLITE_CLIENT_EVENT_MANAGER"

    goto :goto_0

    .line 151
    :pswitch_15
    const-string v0, "PERF_FBLITE_SESSION_TICKET_AVAILABLE"

    goto :goto_0

    .line 153
    :pswitch_16
    const-string v0, "PERF_FBLITE_CLIENT_SCROLL_PERF"

    goto :goto_0

    .line 155
    :pswitch_17
    const-string v0, "PERF_FBLITE_CLIENT_FRAME_RENDER"

    goto :goto_0

    .line 157
    :pswitch_18
    const-string v0, "PERF_QPL_CLIENT_TTI_TRACE"

    goto :goto_0

    .line 159
    :pswitch_19
    const-string v0, "PERF_QPL_CLIENT_TTI_TRACE_2"

    goto :goto_0

    .line 161
    :pswitch_1a
    const-string v0, "PERF_SCROLLING_OTHER_SURFACE"

    goto :goto_0

    .line 163
    :pswitch_1b
    const-string v0, "PERF_NFC_TEST"

    goto :goto_0

    .line 165
    :pswitch_1c
    const-string v0, "PERF_NFC_TEST_2"

    goto :goto_0

    .line 167
    :pswitch_1d
    const-string v0, "PERF_NFC_TEST_3"

    goto :goto_0

    .line 169
    :pswitch_1e
    const-string v0, "PERF_DELAYED_IO_FLUSH"

    goto :goto_0

    .line 171
    :pswitch_1f
    const-string v0, "PERF_BENCHMARK"

    goto :goto_0

    .line 173
    :pswitch_20
    const-string v0, "PERF_TEST_METRIC_DOCTOR"

    goto :goto_0

    .line 175
    :pswitch_21
    const-string v0, "PERF_TEST_METRIC_DOCTOR_2"

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method
