.class public Lcom/facebook/quicklog/identifiers/Loom;
.super Ljava/lang/Object;
.source "Loom.java"


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
    .line 131
    packed-switch p0, :pswitch_data_0

    .line 236
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 133
    :pswitch_1
    const-string v0, "LOOM_TRACE_CREATED"

    goto :goto_0

    .line 135
    :pswitch_2
    const-string v0, "LOOM_TRACE_ABORTED"

    goto :goto_0

    .line 137
    :pswitch_3
    const-string v0, "LOOM_TRACE_UPLOAD"

    goto :goto_0

    .line 139
    :pswitch_4
    const-string v0, "loom_config"

    goto :goto_0

    .line 141
    :pswitch_5
    const-string v0, "LOOM_TRACE_FILEMAN_ERRORS"

    goto :goto_0

    .line 143
    :pswitch_6
    const-string v0, "LOOM_TRACE_FILEMAN_TRIMMED_COUNT"

    goto :goto_0

    .line 145
    :pswitch_7
    const-string v0, "LOOM_TRACE_FILEMAN_TRIMMED_AGE"

    goto :goto_0

    .line 147
    :pswitch_8
    const-string v0, "LOOM_TRACE_FILEMAN_ADDED_UPLOAD"

    goto :goto_0

    .line 149
    :pswitch_9
    const-string v0, "LOOM_DEXOPT"

    goto :goto_0

    .line 151
    :pswitch_a
    const-string v0, "LOOM_TRACE_FILEMAN_TRIMMED_LOGOUT"

    goto :goto_0

    .line 153
    :pswitch_b
    const-string v0, "LOOM_DEVICE_TYPE"

    goto :goto_0

    .line 155
    :pswitch_c
    const-string v0, "LOOM_DEVICE_BRAND"

    goto :goto_0

    .line 157
    :pswitch_d
    const-string v0, "LOOM_MANUFACTURER"

    goto :goto_0

    .line 159
    :pswitch_e
    const-string v0, "LOOM_YEAR_CLASS"

    goto :goto_0

    .line 161
    :pswitch_f
    const-string v0, "LOOM_OS_VER"

    goto :goto_0

    .line 163
    :pswitch_10
    const-string v0, "LOOM_CONNECTION_CLASS"

    goto :goto_0

    .line 165
    :pswitch_11
    const-string v0, "LOOM_NETWORK_TYPE"

    goto :goto_0

    .line 167
    :pswitch_12
    const-string v0, "LOOM_NETWORK_SUBTYPE"

    goto :goto_0

    .line 169
    :pswitch_13
    const-string v0, "LOOM_PERF_TEST_INFO"

    goto :goto_0

    .line 171
    :pswitch_14
    const-string v0, "LOOM_KERNEL_PERF_EVENTS"

    goto :goto_0

    .line 173
    :pswitch_15
    const-string v0, "LOOM_PROF_ERR_SIG_CRASHES"

    goto :goto_0

    .line 175
    :pswitch_16
    const-string v0, "LOOM_PROF_ERR_SLOT_MISSES"

    goto :goto_0

    .line 177
    :pswitch_17
    const-string v0, "LOOM_PROF_ERR_STACK_OVERFLOWS"

    goto :goto_0

    .line 179
    :pswitch_18
    const-string v0, "LOOM_VERIFIER"

    goto :goto_0

    .line 181
    :pswitch_19
    const-string v0, "CPU Sampling Interval (ms)"

    goto :goto_0

    .line 183
    :pswitch_1a
    const-string v0, "LOOM_FREE_DISK_PERCENT"

    goto :goto_0

    .line 185
    :pswitch_1b
    const-string v0, "LOOM_SKIPPED_FRAMES"

    goto :goto_0

    .line 187
    :pswitch_1c
    const-string v0, "LOOM_NUM_CONNECTED_PROCESSES"

    goto :goto_0

    .line 189
    :pswitch_1d
    const-string v0, "LOOM_AVAILABLE_COUNTERS"

    goto :goto_0

    .line 191
    :pswitch_1e
    const-string v0, "LOOM_DEVICE_TOTAL_MEMORY"

    goto :goto_0

    .line 193
    :pswitch_1f
    const-string v0, "LOOM_DEVICE_MAX_CPU_FREQUENCY"

    goto :goto_0

    .line 195
    :pswitch_20
    const-string v0, "LOOM_PROCESS_UPTIME"

    goto :goto_0

    .line 197
    :pswitch_21
    const-string v0, "LOOM_UI_THREAD_RESPONSIVENESS"

    goto :goto_0

    .line 199
    :pswitch_22
    const-string v0, "LOOM_TRACE_STARTED"

    goto :goto_0

    .line 201
    :pswitch_23
    const-string v0, "LOOM_ACTIVE_PROVIDERS"

    goto :goto_0

    .line 203
    :pswitch_24
    const-string v0, "LOOM_FRAME_DURATION"

    goto :goto_0

    .line 205
    :pswitch_25
    const-string v0, "LOOM_TRACE_STOPPED"

    goto :goto_0

    .line 207
    :pswitch_26
    const-string v0, "LOOM_REACT_BUNDLE_VERSION"

    goto :goto_0

    .line 209
    :pswitch_27
    const-string v0, "Build number"

    goto :goto_0

    .line 211
    :pswitch_28
    const-string v0, "App version"

    goto :goto_0

    .line 213
    :pswitch_29
    const-string v0, "LOOM_ACTIVE_BLACKBOX_TRIGGER_ID"

    goto :goto_0

    .line 215
    :pswitch_2a
    const-string v0, "LOOM_KERNEL_VERSION"

    goto :goto_0

    .line 217
    :pswitch_2b
    const-string v0, "LOOM_BLACKBOX_TRACE_REQUESTED"

    goto/16 :goto_0

    .line 219
    :pswitch_2c
    const-string v0, "LOOM_APPLICATION_STATE"

    goto/16 :goto_0

    .line 221
    :pswitch_2d
    const-string v0, "LOOM_MANUAL_TRACE"

    goto/16 :goto_0

    .line 223
    :pswitch_2e
    const-string v0, "LOOM_VSYNC_TIME_NS"

    goto/16 :goto_0

    .line 225
    :pswitch_2f
    const-string v0, "LOOM_TOTAL_SKIPPED_FRAMES_UNCAPPED"

    goto/16 :goto_0

    .line 227
    :pswitch_30
    const-string v0, "LOOM_TOTAL_FRAME_TIME_SPENT_UNCAPPED"

    goto/16 :goto_0

    .line 229
    :pswitch_31
    const-string v0, "LOOM_LARGE_FRAME_DROP_UNCAPPED"

    goto/16 :goto_0

    .line 231
    :pswitch_32
    const-string v0, "LOOM_NOOP"

    goto/16 :goto_0

    .line 233
    :pswitch_33
    const-string v0, "LOOM_OS_SDK"

    goto/16 :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_0
        :pswitch_20
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_0
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_29
        :pswitch_0
        :pswitch_2a
        :pswitch_2b
        :pswitch_0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
    .end packed-switch
.end method
