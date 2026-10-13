.class public Lcom/facebook/quicklog/identifiers/ProcAndPerf;
.super Ljava/lang/Object;
.source "ProcAndPerf.java"


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
    .line 151
    packed-switch p0, :pswitch_data_0

    .line 276
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 153
    :pswitch_1
    const-string v0, "PROC_AND_PERF_PROC_CPU_TIME"

    goto :goto_0

    .line 155
    :pswitch_2
    const-string v0, "PROC_AND_PERF_PROC_SW_FAULTS_MAJOR"

    goto :goto_0

    .line 157
    :pswitch_3
    const-string v0, "PROC_AND_PERF_THREAD_CPU_TIME"

    goto :goto_0

    .line 159
    :pswitch_4
    const-string v0, "PROC_AND_PERF_THREAD_SW_FAULTS_MAJOR"

    goto :goto_0

    .line 161
    :pswitch_5
    const-string v0, "PROC_AND_PERF_ATTEMPTED_CLASS_LOADS"

    goto :goto_0

    .line 163
    :pswitch_6
    const-string v0, "PROC_AND_PERF_DEX_FILE_QUERIES"

    goto :goto_0

    .line 165
    :pswitch_7
    const-string v0, "PROC_AND_PERF_GLOBAL_ALLOC_COUNT"

    goto :goto_0

    .line 167
    :pswitch_8
    const-string v0, "PROC_AND_PERF_GLOBAL_ALLOC_SIZE"

    goto :goto_0

    .line 169
    :pswitch_9
    const-string v0, "PROC_AND_PERF_GLOBAL_GC_INVOCATION_COUNT"

    goto :goto_0

    .line 171
    :pswitch_a
    const-string v0, "PROC_AND_PERF_PSS"

    goto :goto_0

    .line 173
    :pswitch_b
    const-string v0, "PROC_AND_PERF_PROC_SW_FAULTS_MINOR"

    goto :goto_0

    .line 175
    :pswitch_c
    const-string v0, "PROC_AND_PERF_LOW_POWER_STATE"

    goto :goto_0

    .line 177
    :pswitch_d
    const-string v0, "PROC_AND_PERF_LOADAVG_1M"

    goto :goto_0

    .line 179
    :pswitch_e
    const-string v0, "PROC_AND_PERF_LOADAVG_5M"

    goto :goto_0

    .line 181
    :pswitch_f
    const-string v0, "PROC_AND_PERF_LOADAVG_15M"

    goto :goto_0

    .line 183
    :pswitch_10
    const-string v0, "PROC_AND_PERF_TOTAL_MEM"

    goto :goto_0

    .line 185
    :pswitch_11
    const-string v0, "PROC_AND_PERF_FREE_MEM"

    goto :goto_0

    .line 187
    :pswitch_12
    const-string v0, "PROC_AND_PERF_SHARED_MEM"

    goto :goto_0

    .line 189
    :pswitch_13
    const-string v0, "PROC_AND_PERF_BUFFER_MEM"

    goto :goto_0

    .line 191
    :pswitch_14
    const-string v0, "PROC_AND_PERF_NUM_PROCS"

    goto :goto_0

    .line 193
    :pswitch_15
    const-string v0, "PROC_AND_PERF_ALLOC_MMAP_BYTES"

    goto :goto_0

    .line 195
    :pswitch_16
    const-string v0, "PROC_AND_PERF_ALLOC_MAX_BYTES"

    goto :goto_0

    .line 197
    :pswitch_17
    const-string v0, "PROC_AND_PERF_ALLOC_TOTAL_BYTES"

    goto :goto_0

    .line 199
    :pswitch_18
    const-string v0, "PROC_AND_PERF_ALLOC_FREE_BYTES"

    goto :goto_0

    .line 201
    :pswitch_19
    const-string v0, "PROC_AND_PERF_THREAD_WAIT_IN_RUNQUEUE_TIME"

    goto :goto_0

    .line 203
    :pswitch_1a
    const-string v0, "PROC_AND_PERF_CONTEXT_SWITCHES_VOLUNTARY"

    goto :goto_0

    .line 205
    :pswitch_1b
    const-string v0, "PROC_AND_PERF_CONTEXT_SWITCHES_INVOLUNTARY"

    goto :goto_0

    .line 207
    :pswitch_1c
    const-string v0, "PROC_AND_PERF_IOWAIT_COUNT"

    goto :goto_0

    .line 209
    :pswitch_1d
    const-string v0, "PROC_AND_PERF_IOWAIT_TIME"

    goto :goto_0

    .line 211
    :pswitch_1e
    const-string v0, "PROC_AND_PERF_JAVA_FREE_BYTES"

    goto :goto_0

    .line 213
    :pswitch_1f
    const-string v0, "PROC_AND_PERF_JAVA_MAX_BYTES"

    goto :goto_0

    .line 215
    :pswitch_20
    const-string v0, "PROC_AND_PERF_JAVA_ALLOC_BYTES"

    goto :goto_0

    .line 217
    :pswitch_21
    const-string v0, "PROC_AND_PERF_JAVA_TOTAL_BYTES"

    goto :goto_0

    .line 219
    :pswitch_22
    const-string v0, "PROC_AND_PERF_CONNECTED_PROCESSES"

    goto :goto_0

    .line 221
    :pswitch_23
    const-string v0, "PROC_AND_PERF_THREAD_CPU_NUM"

    goto :goto_0

    .line 223
    :pswitch_24
    const-string v0, "PROC_AND_PERF_CPU_CORE_FREQUENCY"

    goto :goto_0

    .line 225
    :pswitch_25
    const-string v0, "PROC_AND_PERF_MAX_CPU_CORE_FREQUENCY"

    goto :goto_0

    .line 227
    :pswitch_26
    const-string v0, "PROC_AND_PERF_THREAD_KERNEL_CPU_TIME"

    goto :goto_0

    .line 229
    :pswitch_27
    const-string v0, "PROC_AND_PERF_PROC_KERNEL_CPU_TIME"

    goto :goto_0

    .line 231
    :pswitch_28
    const-string v0, "PROC_AND_PERF_THREAD_SW_FAULTS_MINOR"

    goto :goto_0

    .line 233
    :pswitch_29
    const-string v0, "PROC_AND_PERF_VMSTAT_NR_DIRTY"

    goto :goto_0

    .line 235
    :pswitch_2a
    const-string v0, "PROC_AND_PERF_VMSTAT_NR_WRITEBACK"

    goto :goto_0

    .line 237
    :pswitch_2b
    const-string v0, "PROC_AND_PERF_VMSTAT_PGPGIN"

    goto/16 :goto_0

    .line 239
    :pswitch_2c
    const-string v0, "PROC_AND_PERF_VMSTAT_PGPGOUT"

    goto/16 :goto_0

    .line 241
    :pswitch_2d
    const-string v0, "PROC_AND_PERF_VMSTAT_ALLOCSTALL"

    goto/16 :goto_0

    .line 243
    :pswitch_2e
    const-string v0, "PROC_AND_PERF_VMSTAT_PAGEOUTRUN"

    goto/16 :goto_0

    .line 245
    :pswitch_2f
    const-string v0, "PROC_AND_PERF_VMSTAT_KSWAPD_STEAL"

    goto/16 :goto_0

    .line 247
    :pswitch_30
    const-string v0, "PROC_AND_PERF_VMSTAT_PGMAJFAULT"

    goto/16 :goto_0

    .line 249
    :pswitch_31
    const-string v0, "PROC_AND_PERF_VMSTAT_NR_FREE_PAGES"

    goto/16 :goto_0

    .line 251
    :pswitch_32
    const-string v0, "PROC_AND_PERF_PROC_IOWAIT_COUNT"

    goto/16 :goto_0

    .line 253
    :pswitch_33
    const-string v0, "PROC_AND_PERF_PROC_IOWAIT_TIME"

    goto/16 :goto_0

    .line 255
    :pswitch_34
    const-string v0, "PROC_AND_PERF_PROC_CONTEXT_SWITCHES_INVOLUNTARY"

    goto/16 :goto_0

    .line 257
    :pswitch_35
    const-string v0, "PROC_AND_PERF_PROC_CONTEXT_SWITCHES_VOLUNTARY"

    goto/16 :goto_0

    .line 259
    :pswitch_36
    const-string v0, "PROC_AND_PERF_THREAD_READ_BYTES"

    goto/16 :goto_0

    .line 261
    :pswitch_37
    const-string v0, "PROC_AND_PERF_PROC_READ_BYTES"

    goto/16 :goto_0

    .line 263
    :pswitch_38
    const-string v0, "PROC_AND_PERF_THREAD_WRITE_BYTES"

    goto/16 :goto_0

    .line 265
    :pswitch_39
    const-string v0, "PROC_AND_PERF_PROC_WRITE_BYTES"

    goto/16 :goto_0

    .line 267
    :pswitch_3a
    const-string v0, "PROC_AND_PERF_GLOBAL_BLOCKING_GC_COUNT"

    goto/16 :goto_0

    .line 269
    :pswitch_3b
    const-string v0, "PROC_AND_PERF_GLOBAL_GC_TIME"

    goto/16 :goto_0

    .line 271
    :pswitch_3c
    const-string v0, "PROC_AND_PERF_GLOBAL_BLOCKING_GC_TIME"

    goto/16 :goto_0

    .line 273
    :pswitch_3d
    const-string v0, "PROC_AND_PERF_THREAD_PRIORITY"

    goto/16 :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
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
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_23
        :pswitch_0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
    .end packed-switch
.end method
