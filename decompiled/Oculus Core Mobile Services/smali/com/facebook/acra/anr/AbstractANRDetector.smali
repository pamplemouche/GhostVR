.class public abstract Lcom/facebook/acra/anr/AbstractANRDetector;
.super Ljava/lang/Object;
.source "AbstractANRDetector.java"

# interfaces
.implements Lcom/facebook/acra/anr/IANRDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;
    }
.end annotation


# static fields
.field private static final CHECK_FAILED:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_ATTEMPTS_AFTER_ERROR_REACHED:I = 0x2

.field private static final MAX_ATTEMPTS_BEFORE_ERROR_REACHED:I = 0x1


# instance fields
.field protected final mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

.field private mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mANRReportTime:J

.field protected mAnrDetectorListener:Lcom/facebook/acra/anr/ANRDetectorListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected mDetectorStartTime:J

.field private final mFgStateIsKeptOnNative:Z

.field private mInAnr:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mStateLock"
    .end annotation
.end field

.field protected volatile mInForeground:Z

.field private mProcessAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mProcessAnrErrorMonitorListener:Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mStartProcessErrorMonitorAfterANRDetection:Z

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/acra/anr/AbstractANRDetector;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/acra/anr/ANRDetectorConfig;ZLcom/facebook/acra/anr/ProcessAnrErrorMonitor;Z)V
    .locals 1
    .param p3    # Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mStateLock:Ljava/lang/Object;

    .line 135
    iput-object p1, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 136
    iput-object p3, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mProcessAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    .line 137
    iput-boolean p2, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mStartProcessErrorMonitorAfterANRDetection:Z

    .line 138
    iput-boolean p4, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mFgStateIsKeptOnNative:Z

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/facebook/acra/anr/ANRDetectorConfig;ZZ)V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/acra/anr/AbstractANRDetector;-><init>(Lcom/facebook/acra/anr/ANRDetectorConfig;ZLcom/facebook/acra/anr/ProcessAnrErrorMonitor;Z)V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/acra/anr/AbstractANRDetector;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/acra/anr/AbstractANRDetector;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mInAnr:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/facebook/acra/anr/AbstractANRDetector;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private captureANRData(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 23
    .param p1    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/acra/anr/AbstractANRDetector;->mAnrDetectorListener:Lcom/facebook/acra/anr/ANRDetectorListener;

    .line 195
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    const/4 v6, 0x0

    .line 197
    const/4 v7, 0x0

    .line 198
    if-eqz v2, :cond_0

    .line 199
    invoke-interface {v2}, Lcom/facebook/acra/anr/ANRDetectorListener;->getBlackBoxTraceId()Ljava/lang/String;

    move-result-object v6

    .line 200
    invoke-interface {v2}, Lcom/facebook/acra/anr/ANRDetectorListener;->getLongStallTraceId()Ljava/lang/String;

    move-result-object v7

    .line 201
    invoke-interface {v2}, Lcom/facebook/acra/anr/ANRDetectorListener;->onStartANRDataCapture()V

    .line 203
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/acra/anr/AbstractANRDetector;->collectStackTrace()V

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRReportTime:J

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 207
    invoke-virtual {v3}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getANRReport()Lcom/facebook/acra/anr/ANRReport;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    if-nez v4, :cond_2

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 213
    invoke-virtual {v4}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getDetectorId()I

    move-result v8

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/facebook/acra/anr/AbstractANRDetector;->mInForeground:Z

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRReportTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/facebook/acra/anr/AbstractANRDetector;->mDetectorStartTime:J

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/acra/anr/AbstractANRDetector;->getReadyTime()J

    move-result-wide v14

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/acra/anr/AbstractANRDetector;->getSwitchTime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 221
    invoke-virtual {v4}, Lcom/facebook/acra/anr/ANRDetectorConfig;->shouldRecordSignalTime()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v4}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getSigquitTimeDir()Ljava/io/File;

    move-result-object v20

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 222
    invoke-virtual {v4}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getProcessName()Ljava/lang/String;

    move-result-object v4

    const/16 v18, 0x2e

    const/16 v19, 0x5f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v18, 0x3a

    const/16 v19, 0x5f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v4, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v22, p4

    .line 208
    invoke-virtual/range {v3 .. v22}, Lcom/facebook/acra/anr/ANRReport;->collectThreadDump(Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;IZJJJJLjava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/debug/looperhistory/common/LooperHistoryHolder;->dumpToLogCat(Landroid/os/Looper;)V

    .line 227
    if-eqz v2, :cond_1

    .line 228
    invoke-interface {v2}, Lcom/facebook/acra/anr/ANRDetectorListener;->onEndANRDataCapture()V

    .line 230
    :cond_1
    return-void

    .line 195
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 207
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 221
    :cond_3
    const/16 v20, 0x0

    goto :goto_1
.end method

.method protected static isTest()Z
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isInternalBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/testenv/TestEnvironment;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected anrErrorClearedOnProcessMonitor()V
    .locals 1

    .prologue
    .line 337
    sget-object v0, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->NO_ANR_DETECTED:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    invoke-virtual {p0, v0}, Lcom/facebook/acra/anr/AbstractANRDetector;->notifyStateListeners(Lcom/facebook/acra/anr/AppStateUpdater$AnrState;)V

    .line 338
    return-void
.end method

.method protected anrHasEnded(Z)V
    .locals 4

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRReportTime:J

    sub-long/2addr v0, v2

    .line 249
    iget-object v2, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v2}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getANRReport()Lcom/facebook/acra/anr/ANRReport;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/facebook/acra/anr/ANRReport;->reportThreadDump(J)V

    .line 251
    :cond_0
    return-void
.end method

.method protected captureANRData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/facebook/acra/anr/AbstractANRDetector;->captureANRData(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    return-void
.end method

.method protected captureANRData(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/facebook/acra/anr/AbstractANRDetector;->captureANRData(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 244
    return-void
.end method

.method protected captureANRData(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/facebook/acra/anr/AbstractANRDetector;->captureANRData(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 240
    return-void
.end method

.method protected collectStackTrace()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method getProcessAnrErrorMonitorListener()Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Lcom/facebook/acra/anr/AbstractANRDetector;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mProcessAnrErrorMonitorListener:Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;

    return-object v0
.end method

.method protected getReadyTime()J
    .locals 2

    .prologue
    .line 371
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getSwitchTime()J
    .locals 2

    .prologue
    .line 367
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected inAnrState()Z
    .locals 2

    .prologue
    .line 341
    iget-object v1, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mInAnr:Z

    monitor-exit v1

    return v0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected isDebuggerConnected()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ANRDetectorConfig;->isInternalBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected mainThreadUnblocked(J)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getANRReport()Lcom/facebook/acra/anr/ANRReport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/acra/anr/ANRReport;->logMainThreadUnblocked(J)V

    .line 184
    return-void
.end method

.method protected maybeStartProcessErrorMonitor()V
    .locals 6

    .prologue
    .line 260
    iget-object v1, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mStartProcessErrorMonitorAfterANRDetection:Z

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mProcessAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    iget-object v2, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 265
    invoke-virtual {v2}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 266
    invoke-virtual {v3}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getProcessName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 267
    invoke-virtual {v4}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getMaxNumberOfProcessMonitorChecksBeforeError()I

    move-result v4

    iget-object v5, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 268
    invoke-virtual {v5}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getMaxNumberOfProcessMonitorChecksAfterError()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mProcessAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mProcessAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->getState()Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    move-result-object v0

    sget-object v2, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->NOT_MONITORING:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    if-eq v0, v2, :cond_1

    .line 271
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mProcessAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->stopMonitoring()V

    .line 273
    :cond_1
    new-instance v0, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;

    invoke-direct {v0, p0}, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;-><init>(Lcom/facebook/acra/anr/AbstractANRDetector;)V

    .line 277
    iget-object v2, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mProcessAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-virtual {v2, v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->startMonitoring(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V

    .line 280
    iput-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mProcessAnrErrorMonitorListener:Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;

    .line 282
    :cond_2
    monitor-exit v1

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public nativeLibraryLoaded(Z)V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method notifyStateListeners(Lcom/facebook/acra/anr/AppStateUpdater$AnrState;)V
    .locals 5
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 287
    sget-object v0, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->NO_ANR_DETECTED:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    .line 288
    :goto_0
    iget-object v1, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v1}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getAppStateUpdater()Lcom/facebook/acra/anr/AppStateUpdater;

    move-result-object v1

    .line 289
    sget-object v2, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->DURING_ANR:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    if-ne p1, v2, :cond_4

    .line 290
    if-eqz v1, :cond_0

    .line 291
    sget-object v2, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->DURING_ANR:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    .line 292
    invoke-virtual {v1, v2, v4}, Lcom/facebook/acra/anr/AppStateUpdater;->updateAnrState(Lcom/facebook/acra/anr/AppStateUpdater$AnrState;Ljava/lang/Runnable;)Z

    move-result v1

    .line 293
    iget-boolean v2, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mFgStateIsKeptOnNative:Z

    if-nez v2, :cond_0

    .line 294
    iput-boolean v1, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mInForeground:Z

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/acra/anr/AbstractANRDetector;->maybeStartProcessErrorMonitor()V

    .line 310
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    invoke-virtual {v1, v0}, Lcom/facebook/acra/anr/ANRDataProvider;->updateAnrState(Z)V

    .line 313
    :cond_2
    return-void

    .line 287
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 299
    :cond_4
    if-eqz v1, :cond_1

    .line 300
    iget-object v2, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mProcessAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mProcessAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    .line 301
    invoke-virtual {v2}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->getState()Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    move-result-object v2

    sget-object v3, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->NOT_MONITORING:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    if-ne v2, v3, :cond_6

    :cond_5
    sget-object v2, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->ANR_RECOVERED:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    if-eq p1, v2, :cond_6

    .line 304
    sget-object v2, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->NO_ANR_DETECTED:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    invoke-virtual {v1, v2, v4}, Lcom/facebook/acra/anr/AppStateUpdater;->updateAnrState(Lcom/facebook/acra/anr/AppStateUpdater$AnrState;Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 306
    :cond_6
    sget-object v2, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->ANR_RECOVERED:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    invoke-virtual {v1, v2, v4}, Lcom/facebook/acra/anr/AppStateUpdater;->updateAnrState(Lcom/facebook/acra/anr/AppStateUpdater$AnrState;Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public abstract pause()V
.end method

.method protected processMonitorStarted()V
    .locals 4

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/facebook/acra/anr/AbstractANRDetector;->shouldCollectAndUploadANRReportsNow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getANRReport()Lcom/facebook/acra/anr/ANRReport;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/acra/anr/ANRReport;->logProcessMonitorStart(J)V

    .line 356
    :cond_0
    return-void
.end method

.method protected processMonitorStopped(I)V
    .locals 4

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/facebook/acra/anr/AbstractANRDetector;->shouldCollectAndUploadANRReportsNow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getANRReport()Lcom/facebook/acra/anr/ANRReport;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lcom/facebook/acra/anr/ANRReport;->logProcessMonitorFailure(JI)V

    .line 362
    :cond_0
    return-void
.end method

.method protected reportSoftError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/acra/anr/ANRDataProvider;->reportSoftError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    :cond_0
    return-void
.end method

.method public setANRDataProvider(Lcom/facebook/acra/anr/ANRDataProvider;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    .line 318
    return-void
.end method

.method public setCheckIntervalMs(J)V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method protected setInAnrState(Z)V
    .locals 2

    .prologue
    .line 347
    iget-object v1, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_0
    iput-boolean p1, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mInAnr:Z

    .line 349
    monitor-exit v1

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setInAnrStateOnAppStateUpdater()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getAppStateUpdater()Lcom/facebook/acra/anr/AppStateUpdater;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 257
    :cond_0
    return-void
.end method

.method public declared-synchronized setListener(Lcom/facebook/acra/anr/ANRDetectorListener;)V
    .locals 1

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mAnrDetectorListener:Lcom/facebook/acra/anr/ANRDetectorListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected shouldCollectAndUploadANRReports()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ANRDataProvider;->shouldCollectAndUploadANRReports()Z

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/facebook/acra/ACRA;->getCachedShouldUploadANRReports()Z

    move-result v0

    goto :goto_0
.end method

.method protected shouldCollectAndUploadANRReportsNow()Z
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/facebook/acra/anr/AbstractANRDetector;->shouldCollectAndUploadANRReports()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector;->mInForeground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 327
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/acra/anr/AbstractANRDetector;->start(J)V

    .line 328
    return-void
.end method

.method public abstract start(J)V
.end method

.method public abstract stop(Lcom/facebook/acra/anr/IANRDetector$ANRDetectorStopListener;)V
.end method
