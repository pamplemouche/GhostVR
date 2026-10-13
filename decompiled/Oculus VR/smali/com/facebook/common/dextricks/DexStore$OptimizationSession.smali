.class final Lcom/facebook/common/dextricks/DexStore$OptimizationSession;
.super Ljava/lang/Object;
.source "DexStore.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/DexStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OptimizationSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;
    }
.end annotation


# static fields
.field private static final PHASE_RUNNING:I = 0x0

.field private static final PHASE_YIELDING:I = 0x1


# instance fields
.field accumulatedRunNs:J

.field accumulatedYieldNs:J

.field final config:Lcom/facebook/common/dextricks/OptimizationConfiguration;

.field final configProvider:Lcom/facebook/common/dextricks/OptimizationConfiguration$Provider;

.field final dexStoreConfig:Lcom/facebook/common/dextricks/DexStore$Config;

.field final inForeground:Z

.field private final mOptLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

.field private final mRegenStampFile:Ljava/io/FileInputStream;

.field final optimizationAttemptNumber:I

.field final startRealtimeMs:J

.field final startUptimeMs:J

.field final synthetic this$0:Lcom/facebook/common/dextricks/DexStore;


# direct methods
.method private constructor <init>(Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/OptimizationConfiguration$Provider;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3093
    iput-object p1, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->this$0:Lcom/facebook/common/dextricks/DexStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3101
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v3, "optimization_log"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3102
    invoke-static {v0}, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->readOrMakeDefault(Ljava/io/File;)Lcom/facebook/common/dextricks/DexStore$OptimizationLog;

    move-result-object v1

    .line 3103
    invoke-direct {p0, v1}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->incrementOptimizationAttempts(Lcom/facebook/common/dextricks/DexStore$OptimizationLog;)I

    move-result v3

    iput v3, v1, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->nrOptimizationsAttempted:I

    .line 3104
    iget v3, v1, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->nrOptimizationsAttempted:I

    iput v3, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->optimizationAttemptNumber:I

    .line 3105
    invoke-static {p1}, Lcom/facebook/common/dextricks/DexStore;->access$300(Lcom/facebook/common/dextricks/DexStore;)J

    move-result-wide v4

    .line 3106
    invoke-static {p1, v4, v5}, Lcom/facebook/common/dextricks/DexStore;->access$400(Lcom/facebook/common/dextricks/DexStore;J)V

    .line 3107
    invoke-virtual {v1, v0}, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->write(Ljava/io/File;)V

    .line 3108
    invoke-virtual {p1, v4, v5}, Lcom/facebook/common/dextricks/DexStore;->writeStatusLocked(J)V

    .line 3110
    invoke-virtual {p1}, Lcom/facebook/common/dextricks/DexStore;->readConfig()Lcom/facebook/common/dextricks/DexStore$Config;

    move-result-object v0

    .line 3112
    iput-object v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->dexStoreConfig:Lcom/facebook/common/dextricks/DexStore$Config;

    .line 3113
    iput-boolean p3, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->inForeground:Z

    .line 3117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->startUptimeMs:J

    .line 3118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->startRealtimeMs:J

    .line 3121
    :try_start_0
    iput-object p2, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->configProvider:Lcom/facebook/common/dextricks/OptimizationConfiguration$Provider;

    .line 3122
    iget-object v0, p2, Lcom/facebook/common/dextricks/OptimizationConfiguration$Provider;->baseline:Lcom/facebook/common/dextricks/OptimizationConfiguration;

    iput-object v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->config:Lcom/facebook/common/dextricks/OptimizationConfiguration;

    .line 3124
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v4, "regen_stamp"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3125
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v4, "odex_lock"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/common/dextricks/ReentrantLockFile;->open(Ljava/io/File;)Lcom/facebook/common/dextricks/ReentrantLockFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 3127
    :try_start_2
    iput-object v3, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->mRegenStampFile:Ljava/io/FileInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3130
    :try_start_3
    iput-object v1, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->mOptLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 3134
    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 3135
    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 3137
    return-void

    .line 3134
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 3135
    invoke-static {v1}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    throw v0

    .line 3134
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catchall_3
    move-exception v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/OptimizationConfiguration$Provider;ZLcom/facebook/common/dextricks/DexStore$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3067
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;-><init>(Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/OptimizationConfiguration$Provider;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/common/dextricks/DexStore$OptimizationSession;)Lcom/facebook/common/dextricks/ReentrantLockFile;
    .locals 1

    .prologue
    .line 3067
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->mOptLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    return-object v0
.end method

.method private determineOptimizationFailureState(B)B
    .locals 1

    .prologue
    .line 3337
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 3338
    const/4 v0, 0x7

    .line 3345
    :goto_0
    return v0

    .line 3341
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 3342
    const/4 v0, 0x4

    goto :goto_0

    .line 3345
    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private incrementOptimizationAttempts(Lcom/facebook/common/dextricks/DexStore$OptimizationLog;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3142
    iget v1, p1, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->nrOptimizationsAttempted:I

    if-ge v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->nrOptimizationsAttempted:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resumeProcess(Lcom/facebook/forker/Process;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 3158
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/facebook/forker/Process;->kill(I)V

    .line 3159
    const/4 v0, -0x1

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/facebook/forker/Process;->waitFor(II)I

    move-result v0

    return v0
.end method

.method private stopProcess(Lcom/facebook/forker/Process;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 3163
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/facebook/forker/Process;->kill(I)V

    .line 3164
    const/4 v0, -0x1

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/facebook/forker/Process;->waitFor(II)I

    move-result v0

    return v0
.end method

.method private updateOptimizationLogCounters(Lcom/facebook/common/dextricks/DexStore$OptimizationLog;)V
    .locals 10

    .prologue
    const-wide/32 v8, 0xf4240

    const/4 v0, 0x0

    .line 3349
    iget-object v1, p1, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->lastAttemptCounters:[J

    .line 3350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->startUptimeMs:J

    sub-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 3351
    iget-object v1, p1, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->lastAttemptCounters:[J

    const/4 v2, 0x1

    .line 3352
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->startRealtimeMs:J

    sub-long/2addr v4, v6

    aput-wide v4, v1, v2

    .line 3353
    iget-object v1, p1, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->lastAttemptCounters:[J

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->accumulatedRunNs:J

    div-long/2addr v4, v8

    aput-wide v4, v1, v2

    .line 3354
    iget-object v1, p1, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->lastAttemptCounters:[J

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->accumulatedYieldNs:J

    div-long/2addr v4, v8

    aput-wide v4, v1, v2

    .line 3356
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 3357
    iget-object v1, p1, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->counters:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->lastAttemptCounters:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 3356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3359
    :cond_0
    return-void
.end method


# virtual methods
.method checkShouldStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 3263
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->mRegenStampFile:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/forker/Fd;->fileno(Ljava/io/FileDescriptor;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/dextricks/DalvikInternals;->getOpenFileLinkCount(I)I

    move-result v0

    .line 3264
    if-nez v0, :cond_0

    .line 3265
    new-instance v0, Lcom/facebook/common/dextricks/DexStore$OptimizationCanceledException;

    const-string v1, "obsolete optimization: regeneration pending"

    invoke-direct {v0, v1}, Lcom/facebook/common/dextricks/DexStore$OptimizationCanceledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3267
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 3153
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->mOptLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 3154
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->mRegenStampFile:Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 3155
    return-void
.end method

.method copeWithOptimizationFailure(Ljava/lang/Throwable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3299
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->this$0:Lcom/facebook/common/dextricks/DexStore;

    invoke-static {v0}, Lcom/facebook/common/dextricks/DexStore;->access$000(Lcom/facebook/common/dextricks/DexStore;)Lcom/facebook/common/dextricks/ReentrantLockFile;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    const/4 v1, 0x0

    .line 3300
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->checkShouldStop()V

    .line 3301
    invoke-virtual {p0, p1}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->copeWithOptimizationFailureImpl(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3302
    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 3307
    :cond_0
    :goto_0
    return-void

    .line 3302
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3305
    const-string v1, "recording optimization failure itself failed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3302
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 3299
    :catch_2
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3302
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_2
    :try_start_7
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method copeWithOptimizationFailureImpl(Ljava/lang/Throwable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3310
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->this$0:Lcom/facebook/common/dextricks/DexStore;

    iget-object v0, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v1, "optimization_log"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3311
    invoke-static {v2}, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->readOrMakeDefault(Ljava/io/File;)Lcom/facebook/common/dextricks/DexStore$OptimizationLog;

    move-result-object v3

    .line 3313
    const-string v0, "optimization failed (%s failures already)"

    new-array v1, v8, [Ljava/lang/Object;

    iget v4, v3, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->nrOptimizationsFailed:I

    .line 3316
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v7

    .line 3313
    invoke-static {p1, v0, v1}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3318
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->this$0:Lcom/facebook/common/dextricks/DexStore;

    invoke-static {v0}, Lcom/facebook/common/dextricks/DexStore;->access$300(Lcom/facebook/common/dextricks/DexStore;)J

    move-result-wide v0

    .line 3319
    const-wide/16 v4, 0xf

    and-long/2addr v4, v0

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 3320
    invoke-direct {p0, v3}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->updateOptimizationLogCounters(Lcom/facebook/common/dextricks/DexStore$OptimizationLog;)V

    .line 3321
    iget v5, v3, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->nrOptimizationsFailed:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->nrOptimizationsFailed:I

    .line 3322
    invoke-static {p1}, Lcom/facebook/common/util/exception/ExceptionUtil;->exceptionToJson(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->lastFailureExceptionJson:Ljava/lang/String;

    .line 3323
    iget v5, v3, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->nrOptimizationsFailed:I

    iget-object v6, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->config:Lcom/facebook/common/dextricks/OptimizationConfiguration;

    iget v6, v6, Lcom/facebook/common/dextricks/OptimizationConfiguration;->maximumOptimizationAttempts:I

    if-lt v5, v6, :cond_0

    .line 3324
    const-string v0, "too many optimization failures (threshold is %s): will not keep trying"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->config:Lcom/facebook/common/dextricks/OptimizationConfiguration;

    iget v5, v5, Lcom/facebook/common/dextricks/OptimizationConfiguration;->maximumOptimizationAttempts:I

    .line 3326
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v7

    .line 3324
    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3327
    invoke-direct {p0, v4}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->determineOptimizationFailureState(B)B

    move-result v0

    int-to-long v0, v0

    .line 3328
    iget v4, v3, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->flags:I

    .line 3331
    :cond_0
    iget-object v4, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->this$0:Lcom/facebook/common/dextricks/DexStore;

    invoke-static {v4, v0, v1}, Lcom/facebook/common/dextricks/DexStore;->access$400(Lcom/facebook/common/dextricks/DexStore;J)V

    .line 3332
    invoke-virtual {v3, v2}, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->write(Ljava/io/File;)V

    .line 3333
    iget-object v2, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->this$0:Lcom/facebook/common/dextricks/DexStore;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/common/dextricks/DexStore;->writeStatusLocked(J)V

    .line 3334
    return-void
.end method

.method maxOptimizationAttempts()I
    .locals 1

    .prologue
    .line 3148
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->config:Lcom/facebook/common/dextricks/OptimizationConfiguration;

    iget v0, v0, Lcom/facebook/common/dextricks/OptimizationConfiguration;->maximumOptimizationAttempts:I

    return v0
.end method

.method noteOptimizationSuccess()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 3271
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->this$0:Lcom/facebook/common/dextricks/DexStore;

    invoke-static {v0}, Lcom/facebook/common/dextricks/DexStore;->access$000(Lcom/facebook/common/dextricks/DexStore;)Lcom/facebook/common/dextricks/ReentrantLockFile;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v2

    const/4 v1, 0x0

    .line 3272
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->inForeground:Z

    if-nez v0, :cond_0

    .line 3275
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->checkShouldStop()V

    .line 3277
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->this$0:Lcom/facebook/common/dextricks/DexStore;

    iget-object v3, v3, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v4, "optimization_log"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3279
    invoke-static {v0}, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->readOrMakeDefault(Ljava/io/File;)Lcom/facebook/common/dextricks/DexStore$OptimizationLog;

    move-result-object v3

    .line 3281
    iget v4, v3, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->flags:I

    or-int/lit8 v4, v4, 0x3

    iput v4, v3, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->flags:I

    .line 3282
    invoke-direct {p0, v3}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->updateOptimizationLogCounters(Lcom/facebook/common/dextricks/DexStore$OptimizationLog;)V

    .line 3283
    iget-object v4, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->this$0:Lcom/facebook/common/dextricks/DexStore;

    invoke-static {v4}, Lcom/facebook/common/dextricks/DexStore;->access$300(Lcom/facebook/common/dextricks/DexStore;)J

    move-result-wide v4

    .line 3284
    iget-object v6, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->this$0:Lcom/facebook/common/dextricks/DexStore;

    invoke-static {v6, v4, v5}, Lcom/facebook/common/dextricks/DexStore;->access$400(Lcom/facebook/common/dextricks/DexStore;J)V

    .line 3285
    invoke-virtual {v3, v0}, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->write(Ljava/io/File;)V

    .line 3286
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->this$0:Lcom/facebook/common/dextricks/DexStore;

    invoke-virtual {v0, v4, v5}, Lcom/facebook/common/dextricks/DexStore;->writeStatusLocked(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3287
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3288
    :cond_1
    :goto_0
    return-void

    .line 3287
    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_0

    .line 3271
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3287
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method waitForAndManageProcess(Lcom/facebook/forker/Process;Lcom/facebook/common/dextricks/DexStore$ExternalProcessProgressListener;)I
    .locals 20
    .param p2    # Lcom/facebook/common/dextricks/DexStore$ExternalProcessProgressListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 3185
    const/high16 v7, -0x80000000

    .line 3186
    const/4 v6, 0x0

    .line 3187
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 3188
    const-wide/32 v4, 0xf4240

    div-long v4, v2, v4

    move-wide v8, v4

    move v10, v6

    move v11, v7

    move-wide v6, v4

    move-wide v4, v2

    .line 3193
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->configProvider:Lcom/facebook/common/dextricks/OptimizationConfiguration$Provider;

    invoke-virtual {v12}, Lcom/facebook/common/dextricks/OptimizationConfiguration$Provider;->getInstantaneous()Lcom/facebook/common/dextricks/OptimizationConfiguration;

    move-result-object v14

    .line 3194
    sub-long v16, v8, v6

    .line 3197
    if-nez v10, :cond_6

    .line 3198
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->accumulatedRunNs:J

    sub-long v2, v4, v2

    add-long/2addr v2, v12

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->accumulatedRunNs:J

    .line 3199
    iget v2, v14, Lcom/facebook/common/dextricks/OptimizationConfiguration;->optTimeSliceMs:I

    int-to-long v12, v2

    .line 3200
    cmp-long v2, v16, v12

    if-ltz v2, :cond_b

    .line 3201
    iget v2, v14, Lcom/facebook/common/dextricks/OptimizationConfiguration;->yieldTimeSliceMs:I

    if-lez v2, :cond_c

    .line 3202
    const-string v2, "beginning yield"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3203
    invoke-direct/range {p0 .. p1}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->stopProcess(Lcom/facebook/forker/Process;)I

    move-result v2

    .line 3204
    const v3, -0x7fffffff

    if-ne v2, v3, :cond_0

    .line 3205
    const/high16 v2, -0x80000000

    .line 3207
    :cond_0
    const/4 v10, 0x1

    :goto_1
    move v11, v2

    move-wide v2, v8

    move-wide v8, v12

    .line 3231
    :goto_2
    const/high16 v6, -0x80000000

    if-ne v11, v6, :cond_3

    .line 3232
    iget v6, v14, Lcom/facebook/common/dextricks/OptimizationConfiguration;->processPollMs:I

    .line 3233
    sub-long v12, v8, v16

    int-to-long v14, v6

    cmp-long v7, v12, v14

    if-gez v7, :cond_1

    .line 3234
    sub-long v6, v8, v16

    long-to-int v6, v6

    .line 3236
    :cond_1
    if-gez v6, :cond_2

    .line 3237
    const/4 v6, 0x0

    .line 3239
    :cond_2
    const/4 v7, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/facebook/forker/Process;->waitFor(II)I

    move-result v11

    .line 3241
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->checkShouldStop()V

    .line 3242
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 3243
    const-wide/32 v6, 0xf4240

    div-long v6, v8, v6

    .line 3244
    if-eqz p2, :cond_4

    .line 3245
    invoke-interface/range {p2 .. p2}, Lcom/facebook/common/dextricks/DexStore$ExternalProcessProgressListener;->onCheckpoint()V

    .line 3247
    :cond_4
    const/high16 v12, -0x80000000

    if-eq v11, v12, :cond_9

    .line 3249
    const-string v2, "process exited with status %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3251
    if-eqz p2, :cond_5

    .line 3252
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/facebook/common/dextricks/DexStore$ExternalProcessProgressListener;->onComplete(I)V

    .line 3254
    :cond_5
    return v11

    .line 3211
    :cond_6
    const/4 v12, 0x1

    if-ne v10, v12, :cond_8

    .line 3212
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->accumulatedYieldNs:J

    sub-long v2, v4, v2

    add-long/2addr v2, v12

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->accumulatedYieldNs:J

    .line 3213
    iget v2, v14, Lcom/facebook/common/dextricks/OptimizationConfiguration;->yieldTimeSliceMs:I

    int-to-long v12, v2

    .line 3214
    cmp-long v2, v16, v12

    if-ltz v2, :cond_b

    .line 3215
    iget v2, v14, Lcom/facebook/common/dextricks/OptimizationConfiguration;->optTimeSliceMs:I

    if-lez v2, :cond_a

    .line 3216
    const-string v2, "ending yield"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3217
    invoke-direct/range {p0 .. p1}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->resumeProcess(Lcom/facebook/forker/Process;)I

    move-result v2

    .line 3218
    const v3, -0x7ffffffe

    if-ne v2, v3, :cond_7

    .line 3219
    const/high16 v2, -0x80000000

    .line 3221
    :cond_7
    const/4 v10, 0x0

    :goto_3
    move v11, v2

    move-wide v2, v8

    move-wide v8, v12

    .line 3223
    goto :goto_2

    .line 3226
    :cond_8
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_9
    move-wide/from16 v18, v4

    move-wide v4, v8

    move-wide v8, v6

    move-wide v6, v2

    move-wide/from16 v2, v18

    goto/16 :goto_0

    :cond_a
    move v2, v11

    goto :goto_3

    :cond_b
    move-wide v8, v12

    move-wide v2, v6

    goto/16 :goto_2

    :cond_c
    move v2, v11

    goto/16 :goto_1
.end method
