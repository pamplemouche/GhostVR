.class public Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;
.super Ljava/lang/Object;
.source "ProcessAnrErrorMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;,
        Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;,
        Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;,
        Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;,
        Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;,
        Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_POLLING_TIME_MS:I = 0x1f4

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final UNLIMITED_NUMBER_OF_CHECKS:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContinuousMonitoring:Z

.field private mCurrentMonitorThreadId:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mErrorCheckThread:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mMaxNumberOfChecksAfterError:I

.field private final mMaxNumberOfChecksBeforeError:I

.field private final mMyUid:I

.field private final mPollingTime:I

.field private final mProcessName:Ljava/lang/String;

.field private mState:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 97
    const/16 v4, 0x1f4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;ZIZII)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZII)V
    .locals 8

    .prologue
    .line 113
    const/16 v4, 0x1f4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;ZIZII)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZIZII)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mContext:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mProcessName:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->NOT_MONITORING:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    iput-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mState:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    .line 134
    iput p4, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mPollingTime:I

    .line 135
    iput-boolean p5, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mContinuousMonitoring:Z

    .line 136
    iput p6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mMaxNumberOfChecksBeforeError:I

    .line 137
    iput p7, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mMaxNumberOfChecksAfterError:I

    .line 138
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mMyUid:I

    .line 139
    if-eqz p3, :cond_0

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->startMonitoring(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V

    .line 142
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mContinuousMonitoring:Z

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mMaxNumberOfChecksBeforeError:I

    return v0
.end method

.method static synthetic access$400(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mMaxNumberOfChecksAfterError:I

    return v0
.end method

.method static synthetic access$500(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mPollingTime:I

    return v0
.end method


# virtual methods
.method checkProcessError(Landroid/app/ActivityManager;)Ljava/util/LinkedList;
    .locals 5
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0

    .line 503
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 504
    if-eqz v0, :cond_2

    .line 505
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 506
    iget v3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    iget v4, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mMyUid:I

    if-ne v3, v4, :cond_0

    .line 508
    new-instance v3, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;

    invoke-direct {v3}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;-><init>()V

    .line 509
    iget-object v4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v4, v3, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mErrorMsg:Ljava/lang/String;

    .line 510
    iget-object v4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v4, v3, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mTag:Ljava/lang/String;

    .line 511
    iget-object v4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    iput-object v4, v3, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mProcessName:Ljava/lang/String;

    .line 512
    iget-object v0, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 515
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 520
    :cond_2
    return-object v1
.end method

.method declared-synchronized getErrorCheckThread()Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mErrorCheckThread:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;
    .locals 1

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mState:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setErrorCheckThread(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;)V
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mErrorCheckThread:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    monitor-exit p0

    return-void

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startMonitoring(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V
    .locals 2
    .param p1    # Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 380
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->startMonitoringAfterDelay(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;J)V

    .line 381
    return-void
.end method

.method public startMonitoringAfterDelay(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;J)V
    .locals 10
    .param p1    # Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 385
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startMonitoring with delay: %d"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 387
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 388
    monitor-enter p0

    .line 389
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 390
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot delay and wait for listener at the same time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 392
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mErrorCheckThread:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mErrorCheckThread:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->hasListener()Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    if-nez p1, :cond_1

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mErrorCheckThread:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;

    invoke-virtual {v0, p1}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->setListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V

    .line 410
    :goto_0
    monitor-exit p0

    .line 411
    return-void

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mState:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->NOT_MONITORING:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    if-eq v0, v1, :cond_3

    .line 399
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mErrorCheckThread:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;

    invoke-static {v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->access$600(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;)V

    .line 401
    :cond_3
    iget-wide v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mCurrentMonitorThreadId:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mCurrentMonitorThreadId:J

    .line 402
    new-instance v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;

    iget-wide v4, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mCurrentMonitorThreadId:J

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move-wide v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;-><init>(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;Landroid/app/ActivityManager;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;JJLcom/facebook/acra/anr/ProcessAnrErrorMonitor$1;)V

    iput-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mErrorCheckThread:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;

    .line 403
    if-nez p1, :cond_4

    .line 404
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->NOT_MONITORING:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    iput-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mState:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    .line 408
    :goto_1
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mErrorCheckThread:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->start()V

    goto :goto_0

    .line 406
    :cond_4
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->MONITORING_NO_ERROR_DETECTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    iput-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mState:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method startMonitoringForTest(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;
    .locals 9
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 416
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 417
    monitor-enter p0

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mState:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->NOT_MONITORING:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    if-eq v0, v1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mErrorCheckThread:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;

    invoke-static {v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->access$600(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;)V

    .line 421
    :cond_0
    iget-wide v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mCurrentMonitorThreadId:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mCurrentMonitorThreadId:J

    .line 422
    new-instance v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;

    iget-wide v4, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mCurrentMonitorThreadId:J

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;-><init>(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;Landroid/app/ActivityManager;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;JJLcom/facebook/acra/anr/ProcessAnrErrorMonitor$1;)V

    iput-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mErrorCheckThread:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;

    .line 423
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mErrorCheckThread:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;

    return-object v0

    .line 423
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopMonitoring()V
    .locals 2

    .prologue
    .line 429
    monitor-enter p0

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mState:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->NOT_MONITORING:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    if-eq v0, v1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mErrorCheckThread:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;

    invoke-static {v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->access$600(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;)V

    .line 433
    :cond_0
    monitor-exit p0

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateStateAndMaybeCallListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 439
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->updateStateAndMaybeCallListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method declared-synchronized updateStateAndMaybeCallListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 448
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mErrorCheckThread:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->getMonitorId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mCurrentMonitorThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 487
    :goto_0
    monitor-exit p0

    return-void

    .line 452
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$1;->$SwitchMap$com$facebook$acra$anr$ProcessAnrErrorMonitor$StateChangeReason:[I

    invoke-virtual {p1}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 485
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state change reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 455
    :pswitch_0
    :try_start_2
    invoke-interface {p2}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;->onStart()V

    goto :goto_0

    .line 458
    :pswitch_1
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->MONITORING_ERROR_DETECTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    iput-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mState:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    .line 459
    invoke-interface {p2, p3, p4}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;->onErrorDetected(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :pswitch_2
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mContinuousMonitoring:Z

    if-eqz v0, :cond_1

    .line 463
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->MONITORING_NO_ERROR_DETECTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    iput-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mState:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    .line 467
    :goto_1
    invoke-interface {p2}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;->onErrorCleared()V

    goto :goto_0

    .line 465
    :cond_1
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->NOT_MONITORING:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    iput-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mState:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    goto :goto_1

    .line 470
    :pswitch_3
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->NOT_MONITORING:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    iput-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mState:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    .line 471
    invoke-interface {p2}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;->onMaxChecksReachedAfterError()V

    goto :goto_0

    .line 474
    :pswitch_4
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->NOT_MONITORING:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    iput-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mState:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    .line 475
    invoke-interface {p2}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;->onMaxChecksReachedBeforeError()V

    goto :goto_0

    .line 478
    :pswitch_5
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->NOT_MONITORING:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    iput-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mState:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    goto :goto_0

    .line 481
    :pswitch_6
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->NOT_MONITORING:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    iput-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->mState:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    .line 482
    invoke-interface {p2}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;->onCheckFailed()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
