.class public Lcom/facebook/base/lwperf/perfstats/PerfStats;
.super Ljava/lang/Object;
.source "PerfStats.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mActivityManager:Landroid/app/ActivityManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static mPowerManager:Landroid/os/PowerManager;


# instance fields
.field private mAllocStalls:J

.field private mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;

.field private mCompleted:Z

.field private mDiskStats:Lcom/facebook/base/lwperf/perfstats/FsStats;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInitialized:Z

.field private mLowPowerState:Ljava/lang/String;

.field private mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPagesIn:J

.field private mPagesOut:J

.field private mPriorityStart:I

.field private mPriorityStop:I

.field private mProcessCpuTimeMs:J

.field private mProcessMajorFaults:J

.field private mProcessMinorFaults:J

.field private mThreadCpuTimeMs:J

.field private mThreadMajorFaults:J

.field private mTid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/facebook/base/lwperf/perfstats/PerfStats;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->resetState()V

    .line 54
    return-void
.end method

.method private invalidateThreadStats()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mTid:I

    .line 197
    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mThreadCpuTimeMs:J

    .line 198
    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mThreadMajorFaults:J

    .line 199
    return-void
.end method

.method private resetState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    const-wide/16 v2, -0x1

    .line 308
    iput-boolean v4, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mInitialized:Z

    .line 309
    iput-boolean v4, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mCompleted:Z

    .line 310
    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mTid:I

    .line 311
    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPriorityStart:I

    .line 312
    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPriorityStop:I

    .line 313
    const-string v0, "not set"

    iput-object v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mLowPowerState:Ljava/lang/String;

    .line 314
    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mProcessCpuTimeMs:J

    .line 315
    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mThreadCpuTimeMs:J

    .line 316
    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mProcessMinorFaults:J

    .line 317
    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mProcessMajorFaults:J

    .line 318
    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mThreadMajorFaults:J

    .line 319
    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mAllocStalls:J

    .line 320
    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPagesIn:J

    .line 321
    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPagesOut:J

    .line 322
    iput-object v1, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mDiskStats:Lcom/facebook/base/lwperf/perfstats/FsStats;

    .line 323
    iput-object v1, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;

    .line 324
    iput-object v1, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 325
    return-void
.end method


# virtual methods
.method public generateStartPerfStats()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 207
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mTid:I

    .line 208
    iget v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mTid:I

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPriorityStart:I

    .line 209
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    .line 210
    const-string v0, "unknown"

    .line 211
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 213
    :try_start_0
    sget-object v1, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    const-string v0, "true"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mLowPowerState:Ljava/lang/String;

    .line 224
    :cond_1
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mProcessCpuTimeMs:J

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mThreadCpuTimeMs:J

    .line 227
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->readIoStatsFromProc()[J

    move-result-object v0

    .line 228
    aget-wide v2, v0, v4

    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mProcessMinorFaults:J

    .line 229
    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mProcessMajorFaults:J

    .line 230
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->readThMajorFaultsFromProc()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mThreadMajorFaults:J

    .line 232
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->readFromProc()Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;

    move-result-object v0

    .line 233
    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mAllocStalls:J

    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mAllocStalls:J

    .line 234
    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesIn:J

    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPagesIn:J

    .line 235
    iget-wide v0, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesOut:J

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPagesOut:J

    .line 238
    invoke-static {}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getInstance()Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getSnapShot()Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mInitialized:Z

    .line 241
    iput-boolean v4, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mCompleted:Z

    .line 242
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPriorityStop:I

    .line 243
    return-void

    .line 216
    :cond_2
    :try_start_1
    const-string v0, "false"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public generateStopPerfStats()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    .line 246
    iget-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mCompleted:Z

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 251
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPriorityStop:I

    .line 252
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mProcessCpuTimeMs:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mProcessCpuTimeMs:J

    .line 254
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->readIoStatsFromProc()[J

    move-result-object v1

    .line 255
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    iget-wide v4, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mProcessMinorFaults:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mProcessMinorFaults:J

    .line 256
    const/4 v2, 0x2

    aget-wide v2, v1, v2

    iget-wide v4, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mProcessMajorFaults:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mProcessMajorFaults:J

    .line 257
    iget v1, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mTid:I

    if-ne v0, v1, :cond_7

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mThreadCpuTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mThreadCpuTimeMs:J

    .line 259
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->readThMajorFaultsFromProc()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mThreadMajorFaults:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mThreadMajorFaults:J

    .line 263
    :goto_1
    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mAllocStalls:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPagesIn:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPagesOut:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    .line 264
    :cond_2
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->readFromProc()Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;

    move-result-object v0

    .line 265
    iget-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mAllocStalls:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_8

    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mAllocStalls:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_8

    .line 266
    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mAllocStalls:J

    iget-wide v4, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mAllocStalls:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mAllocStalls:J

    .line 270
    :goto_2
    iget-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPagesIn:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_9

    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesIn:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_9

    .line 271
    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesIn:J

    iget-wide v4, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPagesIn:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPagesIn:J

    .line 275
    :goto_3
    iget-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPagesOut:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_a

    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesOut:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_a

    .line 276
    iget-wide v0, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesOut:J

    iget-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPagesOut:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPagesOut:J

    .line 281
    :cond_3
    :goto_4
    new-instance v0, Lcom/facebook/base/lwperf/perfstats/FsStats;

    invoke-direct {v0}, Lcom/facebook/base/lwperf/perfstats/FsStats;-><init>()V

    iput-object v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mDiskStats:Lcom/facebook/base/lwperf/perfstats/FsStats;

    .line 283
    invoke-static {}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getInstance()Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getDifference(Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;)Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;

    .line 285
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_4

    .line 286
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 287
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 291
    :cond_4
    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mProcessCpuTimeMs:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_5

    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mProcessMajorFaults:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_5

    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mProcessMinorFaults:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_5

    .line 294
    invoke-virtual {p0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->threadStatsAreValid()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mThreadCpuTimeMs:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_5

    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mThreadMajorFaults:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_b

    .line 297
    :cond_5
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->TAG:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 298
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->TAG:Ljava/lang/String;

    const-string v1, "Negative values detected for PerfStats, discarding stats."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_6
    invoke-direct {p0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->resetState()V

    goto/16 :goto_0

    .line 261
    :cond_7
    invoke-direct {p0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->invalidateThreadStats()V

    goto/16 :goto_1

    .line 268
    :cond_8
    iput-wide v6, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mAllocStalls:J

    goto/16 :goto_2

    .line 273
    :cond_9
    iput-wide v6, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPagesIn:J

    goto :goto_3

    .line 278
    :cond_a
    iput-wide v6, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mPagesOut:J

    goto :goto_4

    .line 304
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mCompleted:Z

    goto/16 :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mInitialized:Z

    return v0
.end method

.method public threadStatsAreValid()Z
    .locals 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mCompleted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->mTid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
