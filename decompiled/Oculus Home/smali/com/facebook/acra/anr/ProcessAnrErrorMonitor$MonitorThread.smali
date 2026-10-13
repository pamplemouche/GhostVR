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
    .param p1, "this$0"    # Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;
    .param p2, "am"    # Landroid/app/ActivityManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;
    .param p4, "id"    # J
    .param p6, "delay"    # J

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
    .param p1, "x0"    # Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;
    .param p2, "x1"    # Landroid/app/ActivityManager;
    .param p3, "x2"    # Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;
    .param p4, "x3"    # J
    .param p6, "x4"    # J
    .param p8, "x5"    # Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$1;

    .prologue
    .line 151
    invoke-direct/range {p0 .. p7}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;-><init>(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;Landroid/app/ActivityManager;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;JJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->stopRequested()V

    return-void
.end method

.method private maybeLogAnrStateFromOtherProcesses(Ljava/util/LinkedList;Ljava/lang/String;)V
    .locals 7
    .param p2, "processNameToIgnore"    # Ljava/lang/String;
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
    .local p1, "errorList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;>;"
    iget-object v1, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    if-eqz v1, :cond_1

    .line 293
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;

    .line 294
    .local v0, "errorState":Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;
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

    iget-object v3, v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mProcessName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    .end local v0    # "errorState":Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;
    :cond_1
    return-void
.end method

.method private monitorLoop()V
    .locals 14

    .prologue
    .line 313
    iget-wide v8, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mDelay:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    if-nez v7, :cond_a

    .line 315
    :cond_0
    iget-wide v0, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mDelay:J

    .line 316
    .local v0, "delay":J
    iget-object v8, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mMonitorLock:Ljava/lang/Object;

    monitor-enter v8

    .line 317
    const-wide/16 v10, 0x0

    cmp-long v7, v0, v10

    if-lez v7, :cond_5

    :try_start_0
    iget-boolean v7, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mStopRequested:Z

    if-nez v7, :cond_4

    const/4 v2, 0x1

    .line 318
    .local v2, "shouldWait":Z
    :goto_0
    iget-boolean v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mStopRequested:Z

    .line 319
    .local v6, "stopRequested":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 320
    .local v4, "startWait":J
    :cond_1
    if-eqz v2, :cond_2

    .line 322
    :try_start_1
    iget-object v7, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mMonitorLock:Ljava/lang/Object;

    invoke-virtual {v7, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v7, v0, v10

    if-lez v7, :cond_8

    :try_start_2
    iget-boolean v7, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mStopRequested:Z

    if-nez v7, :cond_7

    const/4 v2, 0x1

    .line 327
    :goto_2
    iget-boolean v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mStopRequested:Z

    .line 328
    if-eqz v2, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v7, v0, v10

    if-lez v7, :cond_1

    .line 329
    iget-wide v10, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mDelay:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    sub-long v0, v10, v12

    .line 330
    const-wide/16 v10, 0x1

    cmp-long v7, v0, v10

    if-gez v7, :cond_1

    .line 336
    :cond_2
    monitor-exit v8

    .line 337
    if-eqz v6, :cond_a

    .line 363
    .end local v0    # "delay":J
    .end local v2    # "shouldWait":Z
    .end local v4    # "startWait":J
    .end local v6    # "stopRequested":Z
    :cond_3
    :goto_3
    return-void

    .line 317
    .restart local v0    # "delay":J
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    if-nez v7, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 326
    .restart local v2    # "shouldWait":Z
    .restart local v4    # "startWait":J
    .restart local v6    # "stopRequested":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    if-nez v7, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    .line 336
    .end local v2    # "shouldWait":Z
    .end local v4    # "startWait":J
    .end local v6    # "stopRequested":Z
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 342
    .end local v0    # "delay":J
    :cond_a
    new-instance v3, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;

    invoke-direct {v3}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;-><init>()V

    .line 343
    .local v3, "state":Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;
    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mAnrConfirmed:Z

    .line 344
    const/4 v7, 0x0

    iput v7, v3, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    .line 346
    :cond_b
    invoke-virtual {p0, v3}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->checkIteration(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 350
    iget-object v8, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mMonitorLock:Ljava/lang/Object;

    monitor-enter v8

    .line 351
    :try_start_3
    iget-boolean v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mStopRequested:Z

    .line 352
    .restart local v6    # "stopRequested":Z
    iget-boolean v7, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mStopRequested:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v7, :cond_c

    .line 354
    :try_start_4
    iget-object v7, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mMonitorLock:Ljava/lang/Object;

    iget-object v9, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v9}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$500(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v7, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 358
    :goto_4
    :try_start_5
    iget-boolean v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mStopRequested:Z

    .line 360
    :cond_c
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 361
    if-eqz v6, :cond_b

    .line 362
    iget-object v7, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    sget-object v8, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->STOP_REQUESTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    iget-object v9, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    invoke-virtual {v7, v8, v9}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->updateStateAndMaybeCallListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V

    goto :goto_3

    .line 360
    .end local v6    # "stopRequested":Z
    :catchall_1
    move-exception v7

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v7

    .line 355
    .restart local v6    # "stopRequested":Z
    :catch_0
    move-exception v7

    goto :goto_4

    .line 323
    .end local v3    # "state":Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;
    .restart local v0    # "delay":J
    .restart local v2    # "shouldWait":Z
    .restart local v4    # "startWait":J
    :catch_1
    move-exception v7

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
    .locals 13
    .param p1, "anrCheckState"    # Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 211
    :try_start_0
    iget-object v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    iget-object v7, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v6, v7}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->checkProcessError(Landroid/app/ActivityManager;)Ljava/util/LinkedList;

    move-result-object v2

    .line 212
    .local v2, "errorList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;>;"
    iget-boolean v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mFirstCheck:Z

    if-eqz v6, :cond_0

    .line 213
    invoke-static {}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Starting process monitor checks for process \'%s\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v10}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$100(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mFirstCheck:Z

    .line 215
    iget-object v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    sget-object v7, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->MONITOR_STARTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    iget-object v8, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    invoke-virtual {v6, v7, v8}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->updateStateAndMaybeCallListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_0
    const/4 v0, 0x0

    .line 233
    .local v0, "currentProcessError":Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 234
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;

    .line 235
    .local v3, "firstError":Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;
    iget-object v6, v3, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mProcessName:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v7}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$100(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 236
    move-object v0, v3

    .line 239
    .end local v3    # "firstError":Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;
    :cond_1
    const/4 v4, 0x1

    .line 240
    .local v4, "shouldContinue":Z
    if-eqz v0, :cond_5

    iget-boolean v6, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mAnrConfirmed:Z

    if-nez v6, :cond_5

    .line 241
    iput-boolean v11, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mAnrConfirmed:Z

    .line 242
    iput v5, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    .line 244
    invoke-static {}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ANR detected Short msg: %s Tag: %s"

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mErrorMsg:Ljava/lang/String;

    aput-object v9, v8, v5

    iget-object v5, v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mTag:Ljava/lang/String;

    aput-object v5, v8, v11

    .line 243
    invoke-static {v6, v7, v8}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v5, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    sget-object v6, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ERROR_DETECTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    iget-object v7, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    iget-object v8, v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mErrorMsg:Ljava/lang/String;

    iget-object v9, v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->updateStateAndMaybeCallListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 285
    iget-object v5, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v5}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$100(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->maybeLogAnrStateFromOtherProcesses(Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 287
    .end local v0    # "currentProcessError":Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;
    .end local v2    # "errorList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;>;"
    .end local v4    # "shouldContinue":Z
    :cond_3
    :goto_1
    return v4

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Landroid/os/DeadObjectException;

    if-eqz v6, :cond_4

    .line 220
    iget-object v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    sget-object v7, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ERROR_QUERYING_ACTIVITY_MANAGER:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    iget-object v8, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    invoke-virtual {v6, v7, v8}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->updateStateAndMaybeCallListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V

    .line 223
    invoke-static {}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Stopping checks for \'%s\' because of ERROR_QUERYING_ACTIVITY_MANAGER"

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    .line 225
    invoke-static {v9}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$100(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object v1, v8, v11

    .line 222
    invoke-static {v6, v7, v8}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v5

    .line 227
    goto :goto_1

    .line 229
    :cond_4
    throw v1

    .line 253
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "currentProcessError":Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;
    .restart local v2    # "errorList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrErrorState;>;"
    .restart local v4    # "shouldContinue":Z
    :cond_5
    if-nez v0, :cond_7

    iget-boolean v6, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mAnrConfirmed:Z

    if-eqz v6, :cond_7

    .line 255
    invoke-static {}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "On error cleared"

    invoke-static {v6, v7}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    sget-object v7, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ERROR_CLEARED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    iget-object v8, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    invoke-virtual {v6, v7, v8}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->updateStateAndMaybeCallListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V

    .line 257
    iget-object v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v6}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$200(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 259
    iput-boolean v5, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mAnrConfirmed:Z

    .line 260
    iput v5, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    .line 262
    :cond_6
    iget-object v5, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v5}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$200(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Z

    move-result v4

    goto :goto_0

    .line 263
    :cond_7
    if-nez v0, :cond_8

    iget-boolean v6, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mAnrConfirmed:Z

    if-nez v6, :cond_8

    .line 265
    iget v6, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    .line 266
    iget-object v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v6}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$300(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)I

    move-result v6

    if-lez v6, :cond_2

    iget v6, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    iget-object v7, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    .line 267
    invoke-static {v7}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$300(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 268
    iget-object v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    sget-object v7, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->MAX_NUMBER_BEFORE_ERROR:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    iget-object v8, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    invoke-virtual {v6, v7, v8}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->updateStateAndMaybeCallListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V

    .line 269
    const/4 v4, 0x0

    .line 271
    invoke-static {}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Stopping checks for \'%s\' because of MAX_NUMBER_BEFORE_ERROR"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v9}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$100(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 270
    invoke-static {v6, v7, v8}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 274
    :cond_8
    iget v6, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    .line 276
    iget-object v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v6}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$400(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)I

    move-result v6

    if-lez v6, :cond_2

    iget v6, p1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;->mCount:I

    iget-object v7, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    .line 277
    invoke-static {v7}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$400(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 278
    iget-object v6, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    sget-object v7, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->MAX_NUMBER_AFTER_ERROR:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    iget-object v8, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->mListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    invoke-virtual {v6, v7, v8}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->updateStateAndMaybeCallListener(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;)V

    .line 279
    const/4 v4, 0x0

    .line 281
    invoke-static {}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Stopping checks for \'%s\' because of MAX_NUMBER_AFTER_ERROR"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$MonitorThread;->this$0:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-static {v9}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->access$100(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 280
    invoke-static {v6, v7, v8}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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
    .param p1, "listener"    # Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

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
