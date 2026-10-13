.class public Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "ProcessAnrErrorMonitor.java"


# annotations
.annotation build Lcom/facebook/common/internal/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MonitorThread"
.end annotation


# instance fields
.field private final mAm:Landroid/app/ActivityManager;

.field private final mDelay:J

.field private mFirstCheck:Z

.field private final mId:J

.field private volatile mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mMonitorLock:Ljava/lang/Object;

.field private final mProcessesInAnr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStopRequested:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mMonitorLock"
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;


# direct methods
.method private constructor <init>(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;Landroid/app/ActivityManager;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;JJ)V
    .locals 2
    .param p3    # Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 171
    iput-object p1, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    .line 172
    const-string v0, "ProcessAnrErrorMonitorThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mMonitorLock:Ljava/lang/Object;

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mProcessesInAnr:Ljava/util/Set;

    .line 173
    iput-object p2, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mAm:Landroid/app/ActivityManager;

    .line 174
    iput-object p3, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    .line 175
    iput-wide p4, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mId:J

    .line 176
    iput-wide p6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mDelay:J

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mFirstCheck:Z

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;Landroid/app/ActivityManager;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;JJLcom/facebook/acra/anr/ProcessAnrErrorMonitor$1;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct/range {p0 .. p7}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;-><init>(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;Landroid/app/ActivityManager;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;JJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->stopRequested()V

    return-void
.end method

.method private maybeLogAnrStateFromOtherProcesses(Ljava/util/LinkedList;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;

    .line 294
    iget-object v2, v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    invoke-static {}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error found in process \'%s\' different from process being searched \'%s\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mProcessName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    .line 297
    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iget-object v2, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mProcessesInAnr:Ljava/util/Set;

    iget-object v3, v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mProcessName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    iget-object v3, v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mProcessName:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mErrorMsg:Ljava/lang/String;

    iget-object v5, v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mTag:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;->onErrorDetectOnOtherProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mProcessesInAnr:Ljava/util/Set;

    iget-object v0, v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mProcessName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    :cond_1
    return-void
.end method

.method private monitorLoop()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 313
    iget-wide v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mDelay:J

    cmp-long v0, v0, v12

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    if-nez v0, :cond_a

    .line 315
    :cond_0
    iget-wide v4, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mDelay:J

    .line 316
    iget-object v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mMonitorLock:Ljava/lang/Object;

    monitor-enter v6

    .line 317
    cmp-long v0, v4, v12

    if-lez v0, :cond_5

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mStopRequested:Z

    if-nez v0, :cond_4

    move v1, v2

    .line 318
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mStopRequested:Z

    .line 319
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 320
    :cond_1
    if-eqz v1, :cond_2

    .line 322
    :try_start_1
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mMonitorLock:Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :goto_1
    cmp-long v0, v4, v12

    if-lez v0, :cond_8

    :try_start_2
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mStopRequested:Z

    if-nez v0, :cond_7

    move v1, v2

    .line 327
    :goto_2
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mStopRequested:Z

    .line 328
    if-eqz v1, :cond_1

    cmp-long v7, v4, v12

    if-lez v7, :cond_1

    .line 329
    iget-wide v4, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mDelay:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    sub-long/2addr v4, v10

    .line 330
    const-wide/16 v10, 0x1

    cmp-long v7, v4, v10

    if-gez v7, :cond_1

    .line 336
    :cond_2
    monitor-exit v6

    .line 337
    if-eqz v0, :cond_a

    .line 363
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v1, v3

    .line 317
    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    if-nez v0, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_0

    :cond_7
    move v1, v3

    .line 326
    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    if-nez v0, :cond_9

    move v1, v2

    goto :goto_2

    :cond_9
    move v1, v3

    goto :goto_2

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 342
    :cond_a
    new-instance v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;

    invoke-direct {v1}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;-><init>()V

    .line 343
    iput-boolean v3, v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mAnrConfirmed:Z

    .line 344
    iput v3, v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    .line 346
    :cond_b
    invoke-virtual {p0, v1}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->checkIteration(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    iget-object v2, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mMonitorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 351
    :try_start_3
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mStopRequested:Z

    .line 352
    iget-boolean v3, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mStopRequested:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v3, :cond_c

    .line 354
    :try_start_4
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mMonitorLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v3}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$500(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 358
    :goto_4
    :try_start_5
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mStopRequested:Z

    .line 360
    :cond_c
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 361
    if-eqz v0, :cond_b

    .line 362
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->STOP_REQUESTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    iget-object v2, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->updateStateAndMaybeCallListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V

    goto :goto_3

    .line 360
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 355
    :catch_0
    move-exception v0

    goto :goto_4

    .line 323
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private stopRequested()V
    .locals 2

    .prologue
    .line 190
    iget-object v1, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mMonitorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mStopRequested:Z

    .line 192
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mMonitorLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 193
    monitor-exit v1

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method checkIteration(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;)Z
    .locals 9
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    iget-object v3, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, v3}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->checkProcessError(Landroid/app/ActivityManager;)Ljava/util/LinkedList;

    move-result-object v4

    .line 212
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mFirstCheck:Z

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Starting process monitor checks for process \'%s\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v7}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$100(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v5}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mFirstCheck:Z

    .line 215
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    sget-object v3, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->MONITOR_STARTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    iget-object v5, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    invoke-virtual {v0, v3, v5}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->updateStateAndMaybeCallListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_0
    const/4 v3, 0x0

    .line 233
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 234
    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;

    .line 235
    iget-object v5, v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mProcessName:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v6}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$100(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 240
    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v3, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mAnrConfirmed:Z

    if-nez v3, :cond_3

    .line 241
    iput-boolean v1, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mAnrConfirmed:Z

    .line 242
    iput v2, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    .line 244
    invoke-static {}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ANR detected Short msg: %s Tag: %s"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mErrorMsg:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-object v2, v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mTag:Ljava/lang/String;

    aput-object v2, v6, v1

    .line 243
    invoke-static {v3, v5, v6}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v2, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    sget-object v3, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ERROR_DETECTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    iget-object v5, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    iget-object v6, v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mErrorMsg:Ljava/lang/String;

    iget-object v0, v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v6, v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->updateStateAndMaybeCallListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 284
    :goto_1
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v1}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$100(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->maybeLogAnrStateFromOtherProcesses(Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 287
    :cond_1
    :goto_2
    return v0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_2

    .line 220
    iget-object v3, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    sget-object v4, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ERROR_QUERYING_ACTIVITY_MANAGER:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    iget-object v5, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    invoke-virtual {v3, v4, v5}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->updateStateAndMaybeCallListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V

    .line 223
    invoke-static {}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Stopping checks for \'%s\' because of ERROR_QUERYING_ACTIVITY_MANAGER"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    .line 225
    invoke-static {v6}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$100(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object v0, v5, v1

    .line 222
    invoke-static {v3, v4, v5}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 227
    goto :goto_2

    .line 229
    :cond_2
    throw v0

    .line 253
    :cond_3
    if-nez v0, :cond_5

    iget-boolean v3, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mAnrConfirmed:Z

    if-eqz v3, :cond_5

    .line 255
    invoke-static {}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "On error cleared"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ERROR_CLEARED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    iget-object v3, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    invoke-virtual {v0, v1, v3}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->updateStateAndMaybeCallListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V

    .line 257
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$200(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    iput-boolean v2, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mAnrConfirmed:Z

    .line 260
    iput v2, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$200(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Z

    move-result v0

    goto :goto_1

    .line 263
    :cond_5
    if-nez v0, :cond_6

    iget-boolean v0, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mAnrConfirmed:Z

    if-nez v0, :cond_6

    .line 265
    iget v0, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    .line 266
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$300(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)I

    move-result v0

    if-lez v0, :cond_7

    iget v0, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    iget-object v3, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    .line 267
    invoke-static {v3}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$300(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)I

    move-result v3

    if-lt v0, v3, :cond_7

    .line 268
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    sget-object v3, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->MAX_NUMBER_BEFORE_ERROR:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    iget-object v5, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    invoke-virtual {v0, v3, v5}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->updateStateAndMaybeCallListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V

    .line 271
    invoke-static {}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Stopping checks for \'%s\' because of MAX_NUMBER_BEFORE_ERROR"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v5}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$100(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 270
    invoke-static {v0, v3, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto/16 :goto_1

    .line 274
    :cond_6
    iget v0, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    .line 276
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$400(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)I

    move-result v0

    if-lez v0, :cond_7

    iget v0, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    iget-object v3, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    .line 277
    invoke-static {v3}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$400(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)I

    move-result v3

    if-lt v0, v3, :cond_7

    .line 278
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    sget-object v3, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->MAX_NUMBER_AFTER_ERROR:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    iget-object v5, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    invoke-virtual {v0, v3, v5}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->updateStateAndMaybeCallListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V

    .line 281
    invoke-static {}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Stopping checks for \'%s\' because of MAX_NUMBER_AFTER_ERROR"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v5}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$100(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 280
    invoke-static {v0, v3, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_1

    :cond_8
    move-object v0, v3

    goto/16 :goto_0
.end method

.method public getMonitorId()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mId:J

    return-wide v0
.end method

.method hasListener()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->monitorLoop()V

    .line 183
    return-void
.end method

.method setListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V
    .locals 2

    .prologue
    .line 201
    iget-object v1, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mMonitorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    iput-object p1, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    .line 203
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mMonitorLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 204
    monitor-exit v1

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
