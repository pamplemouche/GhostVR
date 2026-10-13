.class public Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;
.super Ljava/lang/Object;
.source "ConnectionRetryManager.java"


# instance fields
.field private mConnectFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

.field private mIsConnectionRetryFgBgEnabled:Z

.field private final mIsMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

.field private final mMqttHandler:Landroid/os/Handler;

.field private final mMqttThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mParameterizedRetryState:Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;

.field private mRateLimiter:Lcom/facebook/rti/common/util/RateLimiter;

.field private mRetryRunnableAsync:Ljava/lang/Runnable;

.field private mRetryStartTime:J

.field private mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mShouldBackoffMore:Z

.field private mStrategy:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

.field private mTotalRetryCount:I


# direct methods
.method public constructor <init>(Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/common/util/NonInjectProvider;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/common/util/RateLimiter;Lcom/facebook/rti/common/logging/RtiFlytrapLogger;Z)V
    .locals 3
    .param p8    # Lcom/facebook/rti/common/logging/RtiFlytrapLogger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/common/time/MonotonicClock;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Landroid/os/Handler;",
            "Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;",
            "Lcom/facebook/rti/common/util/RateLimiter;",
            "Lcom/facebook/rti/common/logging/RtiFlytrapLogger;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 66
    iput-object p2, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mIsMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 67
    iput-object p3, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mMqttThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 68
    iput-object p4, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 69
    iput-object p5, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mMqttHandler:Landroid/os/Handler;

    .line 70
    iput-object p6, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mTotalRetryCount:I

    .line 72
    iput-object p7, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mRateLimiter:Lcom/facebook/rti/common/util/RateLimiter;

    .line 73
    iput-object p8, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    .line 74
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;

    iget v2, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackOffInitialRetryInterval:I

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackOffMaxRetryInterval:I

    invoke-direct {v1, v2, v0}, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;-><init>(II)V

    iput-object v1, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mParameterizedRetryState:Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;

    .line 78
    iput-boolean p9, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mIsConnectionRetryFgBgEnabled:Z

    .line 79
    return-void
.end method

.method private cancelScheduledFuture()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mConnectFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mConnectFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mConnectFuture:Ljava/util/concurrent/Future;

    .line 329
    :cond_0
    return-void
.end method

.method private declared-synchronized isScheduled()Z
    .locals 1

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mConnectFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mConnectFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->cancelScheduledFuture()V

    .line 294
    sget-object v0, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;->BACK_TO_BACK:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->resetStrategy(Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;)V

    .line 295
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mParameterizedRetryState:Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->reset()V

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mTotalRetryCount:I

    .line 297
    return-void
.end method

.method private resetStrategy(Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;)V
    .locals 4

    .prologue
    .line 301
    const-string v0, "ConnectionRetryManager"

    const-string/jumbo v1, "set strategy to %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->cancelScheduledFuture()V

    .line 304
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    .line 305
    sget-object v1, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;->BACK_TO_BACK:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;

    if-ne p1, v1, :cond_0

    .line 306
    new-instance v1, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;

    iget v2, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackToBackRetryAttempts:I

    iget v3, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackgroundBackToBackRetryAttempts:I

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackToBackRetryInterval:I

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;-><init>(III)V

    iput-object v1, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mStrategy:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    .line 322
    :goto_0
    return-void

    .line 311
    :cond_0
    sget-object v1, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;->BACK_OFF:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;

    if-ne p1, v1, :cond_1

    .line 312
    new-instance v1, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;

    iget v2, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackOffInitialRetryInterval:I

    iget v3, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackgroundBackOffInitialRetryInterval:I

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackOffMaxRetryInterval:I

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;-><init>(III)V

    iput-object v1, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mStrategy:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    goto :goto_0

    .line 318
    :cond_1
    const-string v0, "Invalid strategy %s specified"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 319
    const-string v1, "ConnectionRetryManager"

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized clearShouldBackoffMore()V
    .locals 1

    .prologue
    .line 281
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mShouldBackoffMore:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ensureScheduled()Z
    .locals 2

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    const-string v0, "ConnectionRetryManager"

    const-string v1, "ensure scheduled"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mStrategy:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->start()Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :goto_0
    const/4 v0, 0x1

    .line 265
    :goto_1
    monitor-exit p0

    return v0

    .line 261
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->next()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 265
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getRetryStartTime()J
    .locals 2

    .prologue
    .line 273
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mRetryStartTime:J

    return-wide v0
.end method

.method public getTotalRetryCount()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mTotalRetryCount:I

    return v0
.end method

.method public declared-synchronized next()Z
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mIsConnectionRetryFgBgEnabled:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->nextRetryBasedOnState()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 114
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->nextRetryBasedOnStrategy()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextRetryBasedOnState()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 191
    monitor-enter p0

    :try_start_0
    const-string v2, "ConnectionRetryManager"

    const-string v3, "nextRetryBasedOnState"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/facebook/rti/common/util/FbnsRestrictedMode;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    const-string v1, "ConnectionRetryManager"

    const-string v2, "next is called while in restricted mode."

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 201
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mRateLimiter:Lcom/facebook/rti/common/util/RateLimiter;

    invoke-interface {v2}, Lcom/facebook/rti/common/util/RateLimiter;->check()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    const-string v0, "ConnectionRetryManager"

    const-string v2, "Retry attempt already scheduled."

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 208
    goto :goto_0

    .line 211
    :cond_2
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mTotalRetryCount:I

    if-nez v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mRetryStartTime:J

    .line 216
    :cond_3
    iget-object v2, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mParameterizedRetryState:Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mIsMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 217
    invoke-interface {v0}, Lcom/facebook/rti/common/util/NonInjectProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->shouldBackoffMore()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->next(ZZ)I

    move-result v0

    .line 218
    const-string v2, "ConnectionRetryManager"

    const-string v3, "current parameters=%s"

    iget-object v4, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mParameterizedRetryState:Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->cancelScheduledFuture()V

    .line 224
    if-gtz v0, :cond_5

    .line 226
    const-string v0, "ConnectionRetryManager"

    const-string v2, "Submitting immediate retry"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->startNow()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mConnectFuture:Ljava/util/concurrent/Future;

    .line 238
    :cond_4
    :goto_1
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mTotalRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mTotalRetryCount:I

    move v0, v1

    .line 239
    goto :goto_0

    .line 229
    :cond_5
    const-string v2, "ConnectionRetryManager"

    const-string v3, "Scheduling retry in %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    iget-object v2, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mRetryRunnableAsync:Ljava/lang/Runnable;

    int-to-long v4, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 231
    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mConnectFuture:Ljava/util/concurrent/Future;

    .line 232
    iget-object v2, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    if-eqz v2, :cond_4

    .line 233
    iget-object v2, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    const-string/jumbo v3, "retry in %d seconds"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 234
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-interface {v2, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextRetryBasedOnStrategy()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    monitor-enter p0

    :try_start_0
    const-string v0, "ConnectionRetryManager"

    const-string v3, "nextRetryBasedOnStrategy"

    invoke-static {v0, v3}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/facebook/rti/common/util/FbnsRestrictedMode;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "ConnectionRetryManager"

    const-string v2, "next is called while in restricted mode."

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 187
    :goto_0
    monitor-exit p0

    return v0

    .line 130
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mStrategy:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    if-nez v0, :cond_1

    .line 131
    const-string v0, "ConnectionRetryManager"

    const-string v2, "next is called before having a strategy."

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 132
    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mRateLimiter:Lcom/facebook/rti/common/util/RateLimiter;

    invoke-interface {v0}, Lcom/facebook/rti/common/util/RateLimiter;->check()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 137
    goto :goto_0

    .line 141
    :cond_2
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    const-string v0, "ConnectionRetryManager"

    const-string v1, "Retry attempt already scheduled."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 143
    goto :goto_0

    .line 146
    :cond_3
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mTotalRetryCount:I

    if-nez v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mRetryStartTime:J

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mIsMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    invoke-interface {v0}, Lcom/facebook/rti/common/util/NonInjectProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->shouldBackoffMore()Z

    move-result v0

    if-nez v0, :cond_6

    move v3, v2

    .line 152
    :goto_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mStrategy:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    invoke-interface {v0, v3}, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;->hasNext(Z)Z

    move-result v0

    .line 153
    if-nez v0, :cond_7

    .line 155
    iget-object v4, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mStrategy:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    invoke-interface {v4}, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;->getStrategy()Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;

    move-result-object v4

    sget-object v5, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;->BACK_TO_BACK:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;

    if-ne v4, v5, :cond_5

    .line 156
    const-string v0, "ConnectionRetryManager"

    const-string v4, "Auto switching from B2B to back off retry strategy."

    invoke-static {v0, v4}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;->BACK_OFF:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->resetStrategy(Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;)V

    .line 158
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mStrategy:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    invoke-interface {v0, v3}, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;->hasNext(Z)Z

    move-result v0

    .line 161
    :cond_5
    if-nez v0, :cond_7

    .line 162
    const-string v0, "ConnectionRetryManager"

    const-string v2, "No more retry!"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 163
    goto :goto_0

    :cond_6
    move v3, v1

    .line 151
    goto :goto_1

    .line 167
    :cond_7
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mStrategy:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    invoke-interface {v0, v3}, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;->next(Z)I

    move-result v0

    .line 168
    const-string v1, "ConnectionRetryManager"

    const-string v3, "Strategy=%s"

    iget-object v4, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mStrategy:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    invoke-static {v1, v3, v4}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->cancelScheduledFuture()V

    .line 171
    if-gtz v0, :cond_9

    .line 173
    const-string v0, "ConnectionRetryManager"

    const-string v1, "Submitting immediate retry"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->startNow()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mConnectFuture:Ljava/util/concurrent/Future;

    .line 186
    :cond_8
    :goto_2
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mTotalRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mTotalRetryCount:I

    move v0, v2

    .line 187
    goto/16 :goto_0

    .line 177
    :cond_9
    const-string v1, "ConnectionRetryManager"

    const-string v3, "Scheduling retry in %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    iget-object v1, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mRetryRunnableAsync:Ljava/lang/Runnable;

    int-to-long v4, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 179
    invoke-interface {v1, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mConnectFuture:Ljava/util/concurrent/Future;

    .line 180
    iget-object v1, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    if-eqz v1, :cond_8

    .line 181
    iget-object v1, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    const-string/jumbo v3, "retry in %d seconds"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-interface {v1, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerRetryCallback(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mRetryRunnableAsync:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkState(Z)V

    .line 84
    iput-object p1, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mRetryRunnableAsync:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsConnectionRetryFgBgEnabled(Z)V
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mIsConnectionRetryFgBgEnabled:Z

    .line 90
    return-void
.end method

.method public declared-synchronized setShouldBackoffMore()V
    .locals 1

    .prologue
    .line 277
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mShouldBackoffMore:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldBackoffMore()Z
    .locals 1

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mShouldBackoffMore:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    const-string v0, "ConnectionRetryManager"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->reset()V

    .line 97
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mConnectFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startNow()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mMqttHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/executors/ThreadUtil;->isSameThread(Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mRetryRunnableAsync:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 104
    sget-object v0, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;->SUCCEEDED:Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;

    .line 107
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mMqttThreadExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->mRetryRunnableAsync:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    const-string v0, "ConnectionRetryManager"

    const-string/jumbo v1, "stop retry"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
