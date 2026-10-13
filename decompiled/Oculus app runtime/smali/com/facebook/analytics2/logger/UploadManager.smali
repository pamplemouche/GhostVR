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
        "Lcom/facebook/analytics2/logger/UploadBatchNotifier<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadManager"


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
            "Ljava/lang/Class<",
            "+",
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
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mPendingHackServiceAction:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mPendingNotifiedBatchReady:Ljava/io/File;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mPendingNotifiedEventLogged:Ljava/io/File;
    .annotation build Ljavax/annotation/Nullable;
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
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;",
            "Lcom/facebook/analytics2/logger/UploadSchedulerParams;",
            "Lcom/facebook/analytics2/logger/UploadSchedulerParams;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHighPriAlarmSchedulingEnabled:Z

    .line 103
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    .line 104
    iput p2, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    .line 105
    iput-object p3, p0, Lcom/facebook/analytics2/logger/UploadManager;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    .line 106
    iput-object p4, p0, Lcom/facebook/analytics2/logger/UploadManager;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    .line 107
    iput-object p5, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHandlerThreadFactory:Ljava/lang/Class;

    .line 108
    iput-object p6, p0, Lcom/facebook/analytics2/logger/UploadManager;->mForegroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    .line 109
    iput-object p7, p0, Lcom/facebook/analytics2/logger/UploadManager;->mBackgroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    .line 110
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->unsetScheduledJobInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/analytics2/logger/UploadManager;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadManager;->maybeCancelAlarm(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/analytics2/logger/UploadManager;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadManager;->maybeClearPendingServiceAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/analytics2/logger/UploadManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->unsetScheduledJobInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/analytics2/logger/UploadManager;Ljava/io/File;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadManager;->maybePerformCatchUpScheduling(Ljava/io/File;)V

    return-void
.end method

.method private declared-synchronized clearPendingNotifications()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 370
    :try_start_0
    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingNotifiedBatchReady:Ljava/io/File;

    .line 371
    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingNotifiedEventLogged:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getUploadSchedulerParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/AppBackgroundedProvider;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mBackgroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    return-object v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mForegroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    return-object v0
.end method

.method private logCatchupScheduling(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "UploadManager"

    const-string v1, "Events logged to %s during upload session ending with %s, catching up..."

    .line 362
    invoke-static {v0, v1, p2, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized maybeCancelAlarm(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 154
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHighPriAlarmSchedulingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "com.facebook.analytics2.logger.UPLOAD_NOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    invoke-static {}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getInstance()Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->cancelAlarm(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized maybeClearPendingServiceAction(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingHackServiceAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingHackServiceAction:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 341
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingHackServiceAction:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized maybePerformCatchUpScheduling(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingNotifiedBatchReady:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/facebook/analytics2/logger/UploadManager;->nullSafeCompareTo(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    if-lez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingNotifiedBatchReady:Ljava/io/File;

    invoke-direct {p0, p1, v0}, Lcom/facebook/analytics2/logger/UploadManager;->logCatchupScheduling(Ljava/io/File;Ljava/io/File;)V

    .line 349
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/UploadManager;->notifyBatchReady()V

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingNotifiedEventLogged:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/facebook/analytics2/logger/UploadManager;->nullSafeCompareTo(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    if-lez v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingNotifiedEventLogged:Ljava/io/File;

    invoke-direct {p0, p1, v0}, Lcom/facebook/analytics2/logger/UploadManager;->logCatchupScheduling(Ljava/io/File;Ljava/io/File;)V

    .line 352
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/UploadManager;->notifyEventLogged()V

    .line 357
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->clearPendingNotifications()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private maybeRegisterBus()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.Thread.start"
        }
    .end annotation

    .line 169
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHasRegisteredUploadServiceBus:Z

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    .line 171
    invoke-static {v0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHandlerThreadFactory:Ljava/lang/Class;

    .line 172
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedHandlerThreadFactory(Ljava/lang/String;)Lcom/facebook/analytics2/logger/HandlerThreadFactory;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    .line 174
    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/UploadJobConfig;->getNetworkPriority()Lcom/facebook/analytics2/logger/UploadJob$Priority;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/analytics2/logger/UploadThreadPriority;->getThreadPriority(Lcom/facebook/analytics2/logger/UploadJob$Priority;)I

    move-result v1

    const-string v2, "JobRanReceiver"

    .line 176
    invoke-interface {v0, v2, v1}, Lcom/facebook/analytics2/logger/HandlerThreadFactory;->createAndStartHandlerThread(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;-><init>(Lcom/facebook/analytics2/logger/UploadManager;Lcom/facebook/analytics2/logger/UploadManager$1;)V

    new-instance v3, Landroid/os/Handler;

    .line 178
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 177
    invoke-static {v1, v2, v3}, Lcom/facebook/analytics2/logger/UploadServiceBus;->registerJobRanReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHasRegisteredUploadServiceBus:Z

    :cond_0
    return-void
.end method

.method private declared-synchronized maybeScheduleJob(JJ)V
    .locals 3

    monitor-enter p0

    .line 140
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->maybeRegisterBus()V

    .line 145
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingHackServiceAction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/UploadManager;->getCurrentlyScheduledMinDelayMs()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/analytics2/logger/UploadManager;->performScheduleJob(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static nullSafeCompareTo(Ljava/io/File;Ljava/io/File;)I
    .locals 0
    .param p0    # Ljava/io/File;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, -0x1

    return p0

    .line 388
    :cond_2
    invoke-virtual {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method private declared-synchronized performScheduleJob(JJ)V
    .locals 9

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    :try_start_0
    const-string p1, "UploadManager"

    const-string p2, "Scheduling immediate upload for %d"

    .line 206
    iget p3, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->sendImmediately()V

    goto :goto_0

    :cond_0
    const-string v0, "UploadManager"

    const-string v1, "Scheduling jobbId %d within interval (%d, %d)"

    .line 209
    iget v2, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    .line 212
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 213
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 214
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 209
    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadScheduler;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v1

    iget v2, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/analytics2/logger/UploadManager;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    move-wide v5, p1

    move-wide v7, p3

    .line 217
    invoke-virtual/range {v1 .. v8}, Lcom/facebook/analytics2/logger/UploadScheduler;->schedule(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;JJ)V

    .line 219
    iput-wide p1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mCurrentlyScheduledMinDelayMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private sendImmediately()V
    .locals 14

    .line 224
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadScheduler;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    iget v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/UploadScheduler;->cancel(I)V

    .line 225
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->unsetScheduledJobInfo()V

    const-string v0, "com.facebook.analytics2.logger.UPLOAD_NOW"

    .line 227
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/UploadManager;->setPendingHackServiceAction(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->isCurrentProcessHostOfService()Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    invoke-static {}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getInstance()Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/facebook/analytics2/logger/UploadManager;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    const/4 v6, 0x0

    iget v7, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    new-instance v0, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-string v13, "com.facebook.analytics2.logger.UPLOAD_NOW"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;-><init>(JJLjava/lang/String;)V

    const-string v4, "com.facebook.analytics2.logger.UPLOAD_NOW"

    .line 237
    invoke-virtual/range {v2 .. v8}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->runJobNow(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;Landroid/os/Bundle;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;)V

    goto :goto_0

    .line 253
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getInstance()Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/analytics2/logger/UploadManager;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    iget v4, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    .line 254
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->scheduleAlarm(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;I)V

    const/4 v1, 0x1

    .line 256
    iput-boolean v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHighPriAlarmSchedulingEnabled:Z

    .line 259
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "com.facebook.analytics2.logger.UPLOAD_NOW"

    iget-object v5, p0, Lcom/facebook/analytics2/logger/UploadManager;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    iget v6, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    new-instance v13, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-string v12, "com.facebook.analytics2.logger.UPLOAD_NOW"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;-><init>(JJLjava/lang/String;)V

    move-object v7, v13

    .line 262
    invoke-static/range {v2 .. v7}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->paramsForClient(Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;)Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    move-result-object v2

    .line 260
    invoke-virtual {v1, v0, v2}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->runJobFromDirectMethodCall(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 271
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private declared-synchronized setLastNotifiedBatchReady()V
    .locals 1

    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mLastNotifiedFile:Ljava/io/File;

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingNotifiedBatchReady:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setLastNotifiedEventLogged()V
    .locals 1

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mLastNotifiedFile:Ljava/io/File;

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingNotifiedEventLogged:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setPendingHackServiceAction(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 334
    :try_start_0
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mPendingHackServiceAction:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized unsetScheduledJobInfo()V
    .locals 2

    monitor-enter p0

    const-wide v0, 0x7fffffffffffffffL

    .line 277
    :try_start_0
    iput-wide v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mCurrentlyScheduledMinDelayMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method getBackgroundUploadSchedulerParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mBackgroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    return-object v0
.end method

.method declared-synchronized getCurrentlyScheduledMinDelayMs()J
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 196
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHasReadJobInfo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mHasReadJobInfo:Z

    .line 198
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    .line 199
    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadScheduler;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    iget v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/UploadScheduler;->getScheduledMinDelayMs(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mCurrentlyScheduledMinDelayMs:J

    .line 201
    :cond_0
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mCurrentlyScheduledMinDelayMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getForegroundUploadSchedulerParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mForegroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    return-object v0
.end method

.method public notifyBatchReady()V
    .locals 4

    .line 133
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->setLastNotifiedBatchReady()V

    .line 135
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->getUploadSchedulerParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/analytics2/logger/UploadSchedulerParams;->minDelayMsForBatch:J

    .line 136
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->getUploadSchedulerParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/analytics2/logger/UploadSchedulerParams;->maxDelayMsForBatch:J

    .line 134
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/analytics2/logger/UploadManager;->maybeScheduleJob(JJ)V

    return-void
.end method

.method public notifyEventLogged()V
    .locals 4

    .line 125
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->setLastNotifiedEventLogged()V

    .line 127
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->getUploadSchedulerParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/analytics2/logger/UploadSchedulerParams;->minDelayMsForSingleEvent:J

    .line 128
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->getUploadSchedulerParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/analytics2/logger/UploadSchedulerParams;->maxDelayMsForSingleEvent:J

    .line 126
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/analytics2/logger/UploadManager;->maybeScheduleJob(JJ)V

    return-void
.end method

.method public declared-synchronized notifyUserLogout(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 291
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->clearPendingNotifications()V

    .line 293
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadScheduler;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    iget v1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/UploadScheduler;->cancel(I)V

    .line 294
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadManager;->unsetScheduledJobInfo()V

    const-string v0, "com.facebook.analytics2.logger.USER_LOGOUT"

    .line 295
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/UploadManager;->setPendingHackServiceAction(Ljava/lang/String;)V

    .line 303
    new-instance v0, Lcom/facebook/analytics2/logger/UploadServiceLogic$LogoutJobParams;

    invoke-direct {v0, p1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$LogoutJobParams;-><init>(Ljava/lang/String;)V

    .line 305
    iget-object p1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->isCurrentProcessHostOfService()Z

    move-result p1

    if-nez p1, :cond_0

    .line 306
    invoke-static {}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getInstance()Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    const-string v3, "com.facebook.analytics2.logger.USER_LOGOUT"

    iget-object v4, p0, Lcom/facebook/analytics2/logger/UploadManager;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    .line 311
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$LogoutJobParams;->asBundle()Landroid/os/Bundle;

    move-result-object v5

    iget v6, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    const/4 v7, 0x0

    .line 307
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->runJobNow(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;Landroid/os/Bundle;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 317
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic;

    move-result-object p1

    const-string v1, "com.facebook.analytics2.logger.USER_LOGOUT"

    const/4 v2, 0x0

    .line 322
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$LogoutJobParams;->asBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.facebook.analytics2.logger.USER_LOGOUT"

    iget-object v5, p0, Lcom/facebook/analytics2/logger/UploadManager;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    iget v6, p0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    const/4 v7, 0x0

    .line 320
    invoke-static/range {v2 .. v7}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->paramsForClient(Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;)Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    move-result-object v0

    .line 318
    invoke-virtual {p1, v1, v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->runJobFromDirectMethodCall(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 328
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLastNotifiedObject(Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 283
    :try_start_0
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadManager;->mLastNotifiedFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic setLastNotifiedObject(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/UploadManager;->setLastNotifiedObject(Ljava/io/File;)V

    return-void
.end method
