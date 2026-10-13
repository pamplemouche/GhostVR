.class public Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "WakingExecutorService.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/common/executors/FbListeningScheduledExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;,
        Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledRunnableFuture;,
        Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final ACTION_ALARM:Ljava/lang/String;
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mAlarmAction:Ljava/lang/String;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mBuildVersion:I

.field private final mContext:Landroid/content/Context;

.field private final mElapsedRealtimeClock:Lcom/facebook/rti/common/time/MonotonicClock;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

.field private final mScheduledTasks:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask",
            "<*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTION_ALARM."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->ACTION_ALARM:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/common/util/SystemServiceManager;Ljava/lang/String;Landroid/content/Context;Lcom/facebook/rti/common/time/MonotonicClock;Landroid/os/Handler;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)V
    .locals 4

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 65
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mScheduledTasks:Ljava/util/PriorityQueue;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->ACTION_ALARM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mAlarmAction:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mContext:Landroid/content/Context;

    .line 83
    iput-object p4, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mElapsedRealtimeClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 84
    const-string v0, "alarm"

    const-class v1, Landroid/app/AlarmManager;

    .line 85
    invoke-virtual {p1, v0, v1}, Lcom/facebook/rti/common/util/SystemServiceManager;->ensureService(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mBuildVersion:I

    .line 92
    iput-object p5, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object p6, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    .line 95
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mAlarmAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    .line 98
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mPendingIntent:Landroid/app/PendingIntent;

    .line 103
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$1;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$1;-><init>(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mAlarmAction:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 116
    return-void

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot acquire Alarm service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->onAlarm()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->removeFromTaskListAndResetAlarm(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;)V

    return-void
.end method

.method private allCaughtUp()Z
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mScheduledTasks:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mScheduledTasks:Ljava/util/PriorityQueue;

    .line 326
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;

    iget-wide v0, v0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;->executeTimeMs:J

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mElapsedRealtimeClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private executeTasks(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 335
    const-string v0, "WakingExecutorService"

    const-string v1, "Executing %d tasks"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;

    .line 337
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;->run()V

    goto :goto_0

    .line 339
    :cond_0
    return-void
.end method

.method private newFutureFor(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;-><init>(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method private newFutureFor(Ljava/util/concurrent/Callable;)Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;

    invoke-direct {v0, p0, p1}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;-><init>(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method private onAlarm()V
    .locals 2

    .prologue
    .line 255
    const-string v0, "WakingExecutorService"

    const-string v1, "Alarm fired"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->removeExpiredTasks()Ljava/util/List;

    move-result-object v0

    .line 259
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->setNextAlarm()V

    .line 260
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->executeTasks(Ljava/util/List;)V

    .line 262
    return-void

    .line 260
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeExpiredTasks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 293
    const-string v0, "WakingExecutorService"

    const-string v1, "Removing expired tasks from the queue to be executed"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    :goto_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->allCaughtUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mScheduledTasks:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;

    .line 297
    iget-object v0, v0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;->future:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    :cond_0
    return-object v1
.end method

.method private removeFromTaskListAndResetAlarm(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;)V
    .locals 4

    .prologue
    .line 304
    const/4 v1, 0x0

    .line 305
    monitor-enter p0

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mScheduledTasks:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;

    .line 307
    iget-object v3, v0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;->future:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;

    if-ne v3, p1, :cond_0

    .line 312
    :goto_0
    if-eqz v0, :cond_1

    .line 313
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mScheduledTasks:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 314
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->setNextAlarm()V

    .line 316
    :cond_1
    monitor-exit p0

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private scheduleTask(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl",
            "<*>;J)V"
        }
    .end annotation

    .prologue
    .line 237
    const-string v0, "WakingExecutorService"

    const-string v1, "Scheduling task for %d seconds from now"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mElapsedRealtimeClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 240
    invoke-interface {v2}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    sub-long v2, p2, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 237
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mScheduledTasks:Ljava/util/PriorityQueue;

    new-instance v1, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;

    invoke-direct {v1, p1, p2, p3}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;-><init>(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;J)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->setNextAlarm()V

    .line 244
    monitor-exit p0

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setNextAlarm()V
    .locals 10
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 271
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mScheduledTasks:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "WakingExecutorService"

    const-string v1, "No pending tasks, so not setting alarm and un-register the receiver"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->cancelAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V

    .line 288
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mScheduledTasks:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;

    iget-wide v4, v0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;->executeTimeMs:J

    .line 277
    const-string v0, "WakingExecutorService"

    const-string v1, "Next alarm in %d seconds"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mElapsedRealtimeClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 278
    invoke-interface {v2}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 277
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    iget v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mBuildVersion:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->api23_setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 282
    :cond_1
    iget v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mBuildVersion:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->api19_setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->submit(Ljava/lang/Runnable;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture;

    .line 168
    return-void
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledRunnableFuture;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledRunnableFuture;-><init>(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledRunnableFuture;

    invoke-direct {v0, p0, p1}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledRunnableFuture;-><init>(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->newFutureFor(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mElapsedRealtimeClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->scheduleTask(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;J)V

    .line 122
    return-object v0
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->newFutureFor(Ljava/util/concurrent/Callable;)Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mElapsedRealtimeClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->scheduleTask(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;J)V

    .line 130
    return-object v0
.end method

.method public bridge synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    .prologue
    .line 45
    invoke-virtual/range {p0 .. p6}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;

    move-result-object v0

    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    .prologue
    .line 45
    invoke-virtual/range {p0 .. p6}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->cancelAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const-string v1, "WakingExecutorService"

    const-string v2, "Failed to unregister broadcast receiver"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public submit(Ljava/lang/Runnable;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->newFutureFor(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mElapsedRealtimeClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->scheduleTask(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;J)V

    .line 150
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$3;

    invoke-direct {v2, p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$3;-><init>(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 135
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$2;

    invoke-direct {v2, p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$2;-><init>(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->submit(Ljava/lang/Runnable;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture;

    move-result-object v0

    return-object v0
.end method
