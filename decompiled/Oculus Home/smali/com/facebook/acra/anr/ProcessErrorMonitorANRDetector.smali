.class public Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;
.super Lcom/facebook/acra/anr/AbstractANRDetector;
.source "ProcessErrorMonitorANRDetector.java"

# interfaces
.implements Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector$ThreadProvider;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final START_DELAY_MS:I = 0xfa0

.field private static sInstance:Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final mAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

.field private mDetectorStartTime:J

.field private mErrorCleared:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mFirstStart:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mInAnr:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mPaused:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mReportLock:Ljava/lang/Object;

.field private mShouldReport:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/acra/anr/ANRDetectorConfig;I)V
    .locals 8
    .param p1, "anrConfig"    # Lcom/facebook/acra/anr/ANRDetectorConfig;
    .param p2, "errorMonitorCheckIntervalTimeMs"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-direct {p0, p1, v3, v3}, Lcom/facebook/acra/anr/AbstractANRDetector;-><init>(Lcom/facebook/acra/anr/ANRDetectorConfig;ZZ)V

    .line 30
    iput-boolean v5, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mFirstStart:Z

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mReportLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    .line 60
    invoke-virtual {p1}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getProcessName()Ljava/lang/String;

    move-result-object v2

    move v4, p2

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;ZIZII)V

    iput-object v0, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    .line 67
    iput-boolean v5, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mPaused:Z

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->endAndProcessANRDataCapture()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mErrorCleared:Z

    return v0
.end method

.method private declared-synchronized endAndProcessANRDataCapture()V
    .locals 2

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Recovered from ANR"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mInAnr:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 170
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mInAnr:Z

    .line 159
    new-instance v0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector$2;

    invoke-direct {v0, p0}, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector$2;-><init>(Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;)V

    invoke-static {v0}, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector$ThreadProvider;->runOnNewThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance(Lcom/facebook/acra/anr/ANRDetectorConfig;I)Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;
    .locals 2
    .param p0, "anrConfig"    # Lcom/facebook/acra/anr/ANRDetectorConfig;
    .param p1, "errorMonitorCheckIntervalTimeMs"    # I

    .prologue
    .line 49
    const-class v1, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->sInstance:Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;

    invoke-direct {v0, p0, p1}, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;-><init>(Lcom/facebook/acra/anr/ANRDetectorConfig;I)V

    sput-object v0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->sInstance:Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;

    .line 52
    :cond_0
    sget-object v0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->sInstance:Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized resetInstance()V
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 72
    const-class v0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->sInstance:Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit v0

    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected collectStackTrace()V
    .locals 4

    .prologue
    .line 213
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 214
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v0, Lcom/facebook/acra/anr/ANRException;

    const-string v2, "ANR detected by ProcessErrorMonitorAnrDetector"

    invoke-direct {v0, v2}, Lcom/facebook/acra/anr/ANRException;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "exception":Lcom/facebook/acra/anr/ANRException;
    invoke-virtual {v0, v1}, Lcom/facebook/acra/anr/ANRException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 216
    sget-object v2, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Generating ANR Report"

    invoke-static {v2, v0, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public onCheckFailed()V
    .locals 0
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "ProcessAnrErrorMonitorThread"
    .end annotation

    .prologue
    .line 202
    return-void
.end method

.method public onErrorCleared()V
    .locals 3
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "ProcessAnrErrorMonitorThread"
    .end annotation

    .prologue
    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mShouldReport:Z

    .line 182
    .local v0, "shouldReport":Z
    iget-boolean v1, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mErrorCleared:Z

    if-nez v1, :cond_0

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mErrorCleared:Z

    .line 184
    sget-object v1, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->NO_ANR_DETECTED:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    invoke-virtual {p0, v1}, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->notifyStateListeners(Lcom/facebook/acra/anr/AppStateUpdater$AnrState;)V

    .line 186
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-object v2, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mReportLock:Ljava/lang/Object;

    monitor-enter v2

    .line 188
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->anrHasEnded(Z)V

    .line 189
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    return-void

    .line 186
    .end local v0    # "shouldReport":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 189
    .restart local v0    # "shouldReport":Z
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public onErrorDetectOnOtherProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "tag"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "ProcessAnrErrorMonitorThread"
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public onErrorDetected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "ProcessAnrErrorMonitorThread"
    .end annotation

    .prologue
    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mPaused:Z

    .line 116
    .local v0, "paused":Z
    iget-boolean v1, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mPaused:Z

    if-nez v1, :cond_1

    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mInAnr:Z

    .line 118
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mErrorCleared:Z

    .line 119
    sget-object v1, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->DURING_ANR:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    invoke-virtual {p0, v1}, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->notifyStateListeners(Lcom/facebook/acra/anr/AppStateUpdater$AnrState;)V

    .line 120
    invoke-virtual {p0}, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->shouldCollectAndUploadANRReportsNow()Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mShouldReport:Z

    .line 121
    iget-boolean v1, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mShouldReport:Z

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v1}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getANRReport()Lcom/facebook/acra/anr/ANRReport;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/facebook/acra/anr/ANRReport;->logSystemInfo(Ljava/lang/String;Ljava/lang/String;J)V

    .line 124
    :cond_0
    sget-object v1, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Should report is %b inForeground is %b"

    iget-boolean v3, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mShouldReport:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mInForeground:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    if-nez v0, :cond_2

    .line 128
    sget-object v1, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ANR detected"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 131
    invoke-virtual {v1}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector$1;

    invoke-direct {v2, p0}, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector$1;-><init>(Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;)V

    .line 132
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    iget-boolean v1, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mShouldReport:Z

    if-eqz v1, :cond_2

    .line 140
    iget-object v2, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mReportLock:Ljava/lang/Object;

    monitor-enter v2

    .line 142
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->captureANRData()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    :cond_2
    return-void

    .line 126
    .end local v0    # "paused":Z
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 146
    .restart local v0    # "paused":Z
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 143
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onMaxChecksReachedAfterError()V
    .locals 0
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "ProcessAnrErrorMonitorThread"
    .end annotation

    .prologue
    .line 198
    return-void
.end method

.method public onMaxChecksReachedBeforeError()V
    .locals 0
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "ProcessAnrErrorMonitorThread"
    .end annotation

    .prologue
    .line 194
    return-void
.end method

.method public onStart()V
    .locals 0
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "ProcessAnrErrorMonitorThread"
    .end annotation

    .prologue
    .line 174
    return-void
.end method

.method public declared-synchronized pause()V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(J)V
    .locals 5
    .param p1, "startTimeToReport"    # J

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mDetectorStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 86
    iput-wide p1, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mDetectorStartTime:J

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mFirstStart:Z

    if-eqz v0, :cond_1

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mFirstStart:Z

    .line 90
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, p0, v2, v3}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->startMonitoringAfterDelay(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;J)V

    .line 92
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop(Lcom/facebook/acra/anr/IANRDetector$ANRDetectorStopListener;)V
    .locals 1
    .param p1, "stopListener"    # Lcom/facebook/acra/anr/IANRDetector$ANRDetectorStopListener;

    .prologue
    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->mAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->stopMonitoring()V

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-interface {p1}, Lcom/facebook/acra/anr/IANRDetector$ANRDetectorStopListener;->onStop()V

    .line 108
    :cond_0
    return-void

    .line 104
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
