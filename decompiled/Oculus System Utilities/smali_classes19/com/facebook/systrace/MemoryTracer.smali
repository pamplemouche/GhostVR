.class public final Lcom/facebook/systrace/MemoryTracer;
.super Ljava/lang/Object;
.source "MemoryTracer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final SAMPLE_DELAY_MILLIS:I = 0x64


# instance fields
.field private mGlobalAllocCount:I

.field private mGlobalAllocSize:I

.field private mGlobalClassInitCount:I

.field private mGlobalClassLoadCount:I

.field private mLastSampleTime:J

.field private volatile mStopRequested:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/systrace/MemoryTracer;->mStopRequested:Z

    return-void
.end method

.method public static register()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/facebook/systrace/MemoryTracer$1;

    invoke-direct {v0}, Lcom/facebook/systrace/MemoryTracer$1;-><init>()V

    invoke-static {v0}, Lcom/facebook/systrace/TraceConfig;->addListener(Lcom/facebook/systrace/TraceListener;)V

    .line 44
    return-void
.end method

.method private static waitForNextSample()V
    .locals 2

    .prologue
    .line 127
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public requestStop()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/systrace/MemoryTracer;->mStopRequested:Z

    .line 48
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 55
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v0

    iput v0, p0, Lcom/facebook/systrace/MemoryTracer;->mGlobalAllocCount:I

    .line 56
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v0

    iput v0, p0, Lcom/facebook/systrace/MemoryTracer;->mGlobalAllocSize:I

    .line 57
    invoke-static {}, Landroid/os/Debug;->getLoadedClassCount()I

    move-result v0

    iput v0, p0, Lcom/facebook/systrace/MemoryTracer;->mGlobalClassLoadCount:I

    .line 58
    invoke-static {}, Landroid/os/Debug;->getGlobalClassInitCount()I

    move-result v0

    iput v0, p0, Lcom/facebook/systrace/MemoryTracer;->mGlobalClassInitCount:I

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/systrace/MemoryTracer;->mLastSampleTime:J

    .line 61
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/systrace/MemoryTracer;->mStopRequested:Z

    if-nez v0, :cond_0

    .line 62
    const-wide/16 v0, 0x400

    const-string v2, "MemoryTracer"

    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/systrace/MemoryTracer;->takeSample()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    const-wide/16 v0, 0x400

    :try_start_2
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 69
    invoke-static {}, Lcom/facebook/systrace/MemoryTracer;->waitForNextSample()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    throw v0

    .line 66
    :catchall_1
    move-exception v0

    const-wide/16 v2, 0x400

    :try_start_3
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    :cond_0
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 74
    return-void
.end method

.method takeSample()V
    .locals 20

    .prologue
    .line 77
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v4

    .line 78
    .local v4, "globalAllocCount":I
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v5

    .line 79
    .local v5, "globalAllocSize":I
    invoke-static {}, Landroid/os/Debug;->getLoadedClassCount()I

    move-result v7

    .line 80
    .local v7, "globalClassLoadCount":I
    invoke-static {}, Landroid/os/Debug;->getGlobalClassInitCount()I

    move-result v6

    .line 81
    .local v6, "globalClassInitCount":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 82
    .local v10, "sampleTime":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/facebook/systrace/MemoryTracer;->mLastSampleTime:J

    sub-long v14, v10, v14

    long-to-int v9, v14

    .line 84
    .local v9, "sampleDuration":I
    if-nez v9, :cond_0

    .line 123
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    .line 89
    .local v8, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v8}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v12

    .line 90
    .local v12, "totalHeapSize":J
    invoke-virtual {v8}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    .line 92
    .local v2, "freeHeapSize":J
    const-wide/16 v14, 0x400

    const-string v16, "Java bytes allocated"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/systrace/MemoryTracer;->mGlobalAllocSize:I

    move/from16 v17, v0

    sub-int v17, v5, v17

    invoke-static/range {v14 .. v17}, Lcom/facebook/systrace/Systrace;->traceCounter(JLjava/lang/String;I)V

    .line 96
    const-wide/16 v14, 0x400

    const-string v16, "# Java allocations"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/systrace/MemoryTracer;->mGlobalAllocCount:I

    move/from16 v17, v0

    sub-int v17, v4, v17

    invoke-static/range {v14 .. v17}, Lcom/facebook/systrace/Systrace;->traceCounter(JLjava/lang/String;I)V

    .line 100
    const-wide/16 v14, 0x400

    const-string v16, "classinits"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/systrace/MemoryTracer;->mGlobalClassInitCount:I

    move/from16 v17, v0

    sub-int v17, v6, v17

    invoke-static/range {v14 .. v17}, Lcom/facebook/systrace/Systrace;->traceCounter(JLjava/lang/String;I)V

    .line 104
    const-wide/16 v14, 0x400

    const-string v16, "classloads"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/systrace/MemoryTracer;->mGlobalClassLoadCount:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    invoke-static/range {v14 .. v17}, Lcom/facebook/systrace/Systrace;->traceCounter(JLjava/lang/String;I)V

    .line 108
    const-wide/16 v14, 0x400

    const-string v16, "free Java heap"

    long-to-int v0, v2

    move/from16 v17, v0

    invoke-static/range {v14 .. v17}, Lcom/facebook/systrace/Systrace;->traceCounter(JLjava/lang/String;I)V

    .line 109
    const-wide/16 v14, 0x400

    const-string v16, "used Java heap"

    sub-long v18, v12, v2

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v14 .. v17}, Lcom/facebook/systrace/Systrace;->traceCounter(JLjava/lang/String;I)V

    .line 111
    const-wide/16 v14, 0x400

    const-string v16, "total Java heap"

    long-to-int v0, v12

    move/from16 v17, v0

    invoke-static/range {v14 .. v17}, Lcom/facebook/systrace/Systrace;->traceCounter(JLjava/lang/String;I)V

    .line 113
    const-wide/16 v14, 0x400

    const-string v16, "initialized classes"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v6}, Lcom/facebook/systrace/Systrace;->traceCounter(JLjava/lang/String;I)V

    .line 115
    const-wide/16 v14, 0x400

    const-string v16, "loaded classes"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v7}, Lcom/facebook/systrace/Systrace;->traceCounter(JLjava/lang/String;I)V

    .line 118
    move-object/from16 v0, p0

    iput v4, v0, Lcom/facebook/systrace/MemoryTracer;->mGlobalAllocCount:I

    .line 119
    move-object/from16 v0, p0

    iput v5, v0, Lcom/facebook/systrace/MemoryTracer;->mGlobalAllocSize:I

    .line 120
    move-object/from16 v0, p0

    iput v7, v0, Lcom/facebook/systrace/MemoryTracer;->mGlobalClassLoadCount:I

    .line 121
    move-object/from16 v0, p0

    iput v6, v0, Lcom/facebook/systrace/MemoryTracer;->mGlobalClassInitCount:I

    .line 122
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/facebook/systrace/MemoryTracer;->mLastSampleTime:J

    goto/16 :goto_0
.end method
