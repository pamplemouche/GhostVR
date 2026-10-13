.class Lcom/facebook/analytics2/logger/UploadManager;
.super Ljava/lang/Object;
.source "UploadManager.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/UploadBatchNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/analytics2/logger/UploadBatchNotifier",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

.field private final mBackgroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

.field private final mContext:Landroid/content/Context;

.field private mCurrentlyScheduledMinDelayMs:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mForegroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

.field private final mHandlerThreadFactory:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mHasReadJobInfo:Z

.field private mHasRegisteredUploadServiceBus:Z

.field private mHighPriAlarmSchedulingEnabled:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final mJobId:I

.field private mLastNotifiedFile:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mPendingHackServiceAction:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mPendingNotifiedBatchReady:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mPendingNotifiedEventLogged:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/facebook/analytics2/logger/UploadJobConfig;Lcom/facebook/analytics2/logger/AppBackgroundedProvider;Ljava/lang/Class;Lcom/facebook/analytics2/logger/UploadSchedulerParams;Lcom/facebook/analytics2/logger/UploadSchedulerParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/facebook/analytics2/logger/UploadJobConfig;",
            "Lcom/facebook/analytics2/logger/AppBackgroundedProvider;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;",
            "Lcom/facebook/analytics2/logger/UploadSchedulerParams;",
            "Lcom/facebook/analytics2/logger/UploadSchedulerParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHighPriAlarmSchedulingEnabled:Z

    .line 105
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    .line 106
    iput p2, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    .line 107
    iput-object p3, p0, Lcom/facebook/analytics2/logger/UploadManager;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    .line 108
    iput-object p4, p0, Lcom/facebook/analytics2/logger/UploadManager;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    .line 109
    iput-object p5, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHandlerThreadFactory:Ljava/lang/Class;

    .line 110
    iput-object p6, p0, Lcom/facebook/analytics2/logger/UploadManager;->mForegroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    .line 111
    iput-object p7, p0, Lcom/facebook/analytics2/logger/UploadManager;->mBackgroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    .line 112
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->unsetScheduledJobInfo()V

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/analytics2/logger/UploadManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadManager;->maybeCancelAlarm(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/analytics2/logger/UploadManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadManager;->maybeClearPendingServiceAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/analytics2/logger/UploadManager;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->unsetScheduledJobInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/analytics2/logger/UploadManager;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadManager;->maybePerformCatchUpScheduling(Ljava/io/File;)V

    return-void
.end method

.method private declared-synchronized clearPendingNotifications()V
    .locals 1

    .prologue
    .line 374
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingNotifiedBatchReady:Ljava/io/File;

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingNotifiedEventLogged:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    monitor-exit p0

    return-void

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getUploadSchedulerParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/AppBackgroundedProvider;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mBackgroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    .line 190
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mForegroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    goto :goto_0
.end method

.method private logCatchupScheduling(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 366
    const-string v0, "UploadManager"

    const-string v1, "Events logged to %s during upload session ending with %s, catching up..."

    invoke-static {v0, v1, p2, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    return-void
.end method

.method private declared-synchronized maybeCancelAlarm(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHighPriAlarmSchedulingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "com.facebook.analytics2.logger.UPLOAD_NOW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getInstance()Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->cancelAlarm(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized maybeClearPendingServiceAction(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingHackServiceAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingHackServiceAction:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingHackServiceAction:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :cond_0
    monitor-exit p0

    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized maybePerformCatchUpScheduling(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingNotifiedBatchReady:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/facebook/analytics2/logger/UploadManager;->nullSafeCompareTo(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    if-lez v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingNotifiedBatchReady:Ljava/io/File;

    invoke-direct {p0, p1, v0}, Lcom/facebook/analytics2/logger/UploadManager;->logCatchupScheduling(Ljava/io/File;Ljava/io/File;)V

    .line 353
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/UploadManager;->notifyBatchReady()V

    .line 361
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->clearPendingNotifications()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    .line 354
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingNotifiedEventLogged:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/facebook/analytics2/logger/UploadManager;->nullSafeCompareTo(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    if-lez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingNotifiedEventLogged:Ljava/io/File;

    invoke-direct {p0, p1, v0}, Lcom/facebook/analytics2/logger/UploadManager;->logCatchupScheduling(Ljava/io/File;Ljava/io/File;)V

    .line 356
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/UploadManager;->notifyEventLogged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private maybeRegisterBus()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.Thread.start"
        }
    .end annotation

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHasRegisteredUploadServiceBus:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    .line 173
    invoke-static {v0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHandlerThreadFactory:Ljava/lang/Class;

    .line 174
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedHandlerThreadFactory(Ljava/lang/String;)Lcom/facebook/analytics2/logger/HandlerThreadFactory;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    .line 176
    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/UploadJobConfig;->getNetworkPriority()Lcom/facebook/analytics2/logger/UploadJob$Priority;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/analytics2/logger/UploadThreadPriority;->getThreadPriority(Lcom/facebook/analytics2/logger/UploadJob$Priority;)I

    move-result v1

    .line 177
    const-string v2, "JobRanReceiver"

    .line 178
    invoke-interface {v0, v2, v1}, Lcom/facebook/analytics2/logger/HandlerThreadFactory;->createAndStartHandlerThread(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;-><init>(Lcom/facebook/analytics2/logger/UploadManager;Lcom/facebook/analytics2/logger/UploadManager$1;)V

    new-instance v3, Landroid/os/Handler;

    .line 180
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 179
    invoke-static {v1, v2, v3}, Lcom/facebook/analytics2/logger/UploadServiceBus;->registerJobRanReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHasRegisteredUploadServiceBus:Z

    .line 183
    :cond_0
    return-void
.end method

.method private declared-synchronized maybeScheduleJob(JJ)V
    .locals 3

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->maybeRegisterBus()V

    .line 147
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingHackServiceAction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/UploadManager;->getCurrentlyScheduledMinDelayMs()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 149
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/analytics2/logger/UploadManager;->performScheduleJob(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static nullSafeCompareTo(Ljava/io/File;Ljava/io/File;)I
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 386
    if-nez p1, :cond_1

    .line 387
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 392
    :goto_0
    return v0

    .line 387
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 389
    :cond_1
    if-nez p0, :cond_2

    .line 390
    const/4 v0, -0x1

    goto :goto_0

    .line 392
    :cond_2
    invoke-virtual {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized performScheduleJob(JJ)V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 207
    monitor-enter p0

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    cmp-long v0, p3, v2

    if-nez v0, :cond_0

    .line 208
    :try_start_0
    const-string v0, "UploadManager"

    const-string v1, "Scheduling immediate upload for %d"

    iget v2, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/UploadManager;->sendImmediately()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :goto_0
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    :try_start_1
    const-string v0, "UploadManager"

    const-string v1, "Scheduling jobbId %d within interval (%d, %d)"

    iget v2, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    .line 214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 215
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 216
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 211
    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadScheduler;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    iget v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/analytics2/logger/UploadManager;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    move-wide v4, p1

    move-wide v6, p3

    .line 219
    invoke-virtual/range {v0 .. v7}, Lcom/facebook/analytics2/logger/UploadScheduler;->schedule(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;JJ)V

    .line 221
    iput-wide p1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mCurrentlyScheduledMinDelayMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setLastNotifiedBatchReady()V
    .locals 1

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mLastNotifiedFile:Ljava/io/File;

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingNotifiedBatchReady:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setLastNotifiedEventLogged()V
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mLastNotifiedFile:Ljava/io/File;

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingNotifiedEventLogged:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setPendingHackServiceAction(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingHackServiceAction:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    monitor-exit p0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unsetScheduledJobInfo()V
    .locals 2

    .prologue
    .line 280
    monitor-enter p0

    const-wide v0, 0x7fffffffffffffffL

    :try_start_0
    iput-wide v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mCurrentlyScheduledMinDelayMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized getCurrentlyScheduledMinDelayMs()J
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHasReadJobInfo:Z

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHasReadJobInfo:Z

    .line 200
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    .line 201
    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadScheduler;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    iget v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/UploadScheduler;->getScheduledMinDelayMs(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mCurrentlyScheduledMinDelayMs:J

    .line 203
    :cond_0
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mCurrentlyScheduledMinDelayMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyBatchReady()V
    .locals 4

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->setLastNotifiedBatchReady()V

    .line 137
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->getUploadSchedulerParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/analytics2/logger/UploadSchedulerParams;->minDelayMsForBatch:J

    .line 138
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->getUploadSchedulerParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/analytics2/logger/UploadSchedulerParams;->maxDelayMsForBatch:J

    .line 136
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/analytics2/logger/UploadManager;->maybeScheduleJob(JJ)V

    .line 139
    return-void
.end method

.method public notifyEventLogged()V
    .locals 4

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->setLastNotifiedEventLogged()V

    .line 129
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->getUploadSchedulerParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/analytics2/logger/UploadSchedulerParams;->minDelayMsForSingleEvent:J

    .line 130
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->getUploadSchedulerParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/analytics2/logger/UploadSchedulerParams;->maxDelayMsForSingleEvent:J

    .line 128
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/analytics2/logger/UploadManager;->maybeScheduleJob(JJ)V

    .line 131
    return-void
.end method

.method public declared-synchronized notifyUserLogout(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->clearPendingNotifications()V

    .line 296
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadScheduler;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    iget v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/UploadScheduler;->cancel(I)V

    .line 297
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->unsetScheduledJobInfo()V

    .line 298
    const-string v0, "com.facebook.analytics2.logger.USER_LOGOUT"

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/UploadManager;->setPendingHackServiceAction(Ljava/lang/String;)V

    .line 306
    new-instance v4, Lcom/facebook/analytics2/logger/UploadServiceLogic$LogoutJobParams;

    invoke-direct {v4, p1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$LogoutJobParams;-><init>(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->isCurrentProcessHostOfService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-static {}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getInstance()Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    const-string v2, "com.facebook.analytics2.logger.USER_LOGOUT"

    iget-object v3, p0, Lcom/facebook/analytics2/logger/UploadManager;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    .line 314
    invoke-virtual {v4}, Lcom/facebook/analytics2/logger/UploadServiceLogic$LogoutJobParams;->asBundle()Landroid/os/Bundle;

    move-result-object v4

    iget v5, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    const/4 v6, 0x0

    .line 310
    invoke-virtual/range {v0 .. v6}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->runJobNow(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;Landroid/os/Bundle;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :goto_0
    monitor-exit p0

    return-void

    .line 320
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic;

    move-result-object v7

    const-string v8, "com.facebook.analytics2.logger.USER_LOGOUT"

    const/4 v0, 0x0

    .line 325
    invoke-virtual {v4}, Lcom/facebook/analytics2/logger/UploadServiceLogic$LogoutJobParams;->asBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.facebook.analytics2.logger.USER_LOGOUT"

    iget-object v3, p0, Lcom/facebook/analytics2/logger/UploadManager;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    iget v4, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    .line 323
    invoke-static/range {v0 .. v6}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->paramsForClient(Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    move-result-object v0

    .line 321
    invoke-virtual {v7, v8, v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->runJobFromDirectMethodCall(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized sendImmediately()V
    .locals 14

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadScheduler;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    iget v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/UploadScheduler;->cancel(I)V

    .line 227
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->unsetScheduledJobInfo()V

    .line 229
    const-string v0, "com.facebook.analytics2.logger.UPLOAD_NOW"

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/UploadManager;->setPendingHackServiceAction(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->isCurrentProcessHostOfService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-static {}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getInstance()Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    move-result-object v0

    iget-object v8, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    const-string v9, "com.facebook.analytics2.logger.UPLOAD_NOW"

    iget-object v10, p0, Lcom/facebook/analytics2/logger/UploadManager;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    const/4 v11, 0x0

    iget v7, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    new-instance v1, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-string v6, "com.facebook.analytics2.logger.UPLOAD_NOW"

    invoke-direct/range {v1 .. v6}, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;-><init>(JJLjava/lang/String;)V

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v8, v1

    .line 239
    invoke-virtual/range {v2 .. v8}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->runJobNow(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;Landroid/os/Bundle;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :goto_0
    monitor-exit p0

    return-void

    .line 255
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getInstance()Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    const-string v2, "com.facebook.analytics2.logger.UPLOAD_NOW"

    iget-object v3, p0, Lcom/facebook/analytics2/logger/UploadManager;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    iget v4, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    .line 256
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->scheduleAlarm(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;I)V

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHighPriAlarmSchedulingEnabled:Z

    .line 261
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic;

    move-result-object v0

    const-string v9, "com.facebook.analytics2.logger.UPLOAD_NOW"

    const/4 v7, 0x0

    const/4 v10, 0x0

    const-string v11, "com.facebook.analytics2.logger.UPLOAD_NOW"

    iget-object v12, p0, Lcom/facebook/analytics2/logger/UploadManager;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    iget v13, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    new-instance v1, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-string v6, "com.facebook.analytics2.logger.UPLOAD_NOW"

    invoke-direct/range {v1 .. v6}, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;-><init>(JJLjava/lang/String;)V

    iget-object v8, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    move-object v2, v7

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move v6, v13

    move-object v7, v1

    .line 264
    invoke-static/range {v2 .. v8}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->paramsForClient(Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    move-result-object v1

    .line 262
    invoke-virtual {v0, v9, v1}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->runJobFromDirectMethodCall(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastNotifiedObject(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mLastNotifiedFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setLastNotifiedObject(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 30
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/UploadManager;->setLastNotifiedObject(Ljava/io/File;)V

    return-void
.end method
