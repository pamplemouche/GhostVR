.class public Lcom/facebook/rti/mqtt/manager/MqttOperationManager;
.super Ljava/lang/Object;
.source "MqttOperationManager.java"


# instance fields
.field private final mAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

.field private final mExecutorService:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

.field private final mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

.field private final mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

.field private final mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

.field private final mPendingOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/rti/mqtt/manager/MqttOperation;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "itself"
    .end annotation
.end field

.field private final mUiThreadExecutorService:Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorService;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorService;Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mPendingOperations:Ljava/util/Map;

    .line 52
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mUiThreadExecutorService:Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorService;

    .line 53
    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mExecutorService:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    .line 54
    iput-object p3, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    .line 55
    iput-object p4, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    .line 56
    iput-object p5, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 57
    iput-object p6, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/rti/mqtt/manager/MqttOperationManager;Lcom/facebook/rti/mqtt/manager/MqttOperation;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->onOperationTimeout(Lcom/facebook/rti/mqtt/manager/MqttOperation;)V

    return-void
.end method

.method private static getOriginalOperationId(Lcom/facebook/rti/mqtt/manager/MqttOperation;)I
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->getOperationId()I

    move-result v0

    .line 308
    instance-of v1, p0, Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;

    if-eqz v1, :cond_0

    .line 309
    check-cast p0, Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;->getOriginalOperationId()I

    move-result v0

    .line 311
    :cond_0
    return v0
.end method

.method private static getRetryCount(Lcom/facebook/rti/mqtt/manager/MqttOperation;)I
    .locals 1

    .prologue
    .line 315
    instance-of v0, p0, Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;

    if-eqz v0, :cond_0

    .line 316
    check-cast p0, Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;->getRetryCount()I

    move-result v0

    .line 318
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logOperation(Ljava/lang/String;Lcom/facebook/rti/mqtt/manager/MqttOperation;)V
    .locals 2

    .prologue
    .line 299
    if-nez p2, :cond_0

    .line 300
    const-string v0, "MqttOperationManager"

    const-string v1, "operation/%s; operation=null"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    const-string v0, "MqttOperationManager"

    const-string v1, "operation/%s; operation=%s"

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onOperationTimeout(Lcom/facebook/rti/mqtt/manager/MqttOperation;)V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    iget-object v10, p1, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mResponseType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 251
    iget v4, p1, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mOperationId:I

    .line 252
    iget-object v11, p1, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 253
    const-string v0, "MqttOperationManager"

    const-string v3, "operation/timeout; name=%s, id=%d"

    invoke-virtual {v10}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v3, v5, v6}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mPendingOperations:Ljava/util/Map;

    monitor-enter v3

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mPendingOperations:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_5

    .line 260
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mPendingOperations:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 262
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    if-eqz v0, :cond_3

    .line 265
    invoke-static {p1}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->getOriginalOperationId(Lcom/facebook/rti/mqtt/manager/MqttOperation;)I

    move-result v5

    .line 266
    invoke-static {p1}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->getRetryCount(Lcom/facebook/rti/mqtt/manager/MqttOperation;)I

    move-result v7

    .line 267
    if-nez v11, :cond_2

    const-wide/16 v8, 0x0

    .line 268
    :goto_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    const-string/jumbo v1, "timeout"

    iget-object v2, p1, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mTopicName:Ljava/lang/String;

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    .line 271
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->getValue()I

    move-result v3

    const/4 v6, 0x0

    .line 268
    invoke-virtual/range {v0 .. v9}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttPublishFailureEvent(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Throwable;IJ)V

    .line 286
    :goto_2
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .line 288
    invoke-virtual {p1, v1}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->complete(Ljava/lang/Throwable;)V

    .line 289
    const-string/jumbo v0, "timeout"

    invoke-direct {p0, v0, p1}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->logOperation(Ljava/lang/String;Lcom/facebook/rti/mqtt/manager/MqttOperation;)V

    .line 291
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PINGRESP:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v10, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v10, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    const-string v0, "MqttOperationManager"

    const-string v2, "connection/disconnect/request_timeout; client=%s"

    invoke-static {v0, v2, v11}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PINGRESP:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 294
    invoke-virtual {v10, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/facebook/rti/mqtt/protocol/Operation;->PING:Lcom/facebook/rti/mqtt/protocol/Operation;

    .line 293
    :goto_3
    invoke-virtual {v11, v1, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->disconnectOnTimeout(Ljava/lang/Exception;Lcom/facebook/rti/mqtt/protocol/Operation;)Ljava/util/concurrent/Future;

    .line 296
    :cond_1
    return-void

    .line 262
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 267
    :cond_2
    invoke-virtual {v11}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getMqttSessionId()J

    move-result-wide v8

    goto :goto_1

    .line 278
    :cond_3
    const-string v0, "MqttOperationManager"

    const-string v3, "operation/timeout/duplicate; id=%d, operation=%s, client=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 281
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    .line 282
    invoke-virtual {v10}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v11, v5, v1

    .line 278
    invoke-static {v0, v3, v5}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 294
    :cond_4
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/Operation;->PUBLISH:Lcom/facebook/rti/mqtt/protocol/Operation;

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public abortPendingOperations(Ljava/lang/Throwable;)V
    .locals 11

    .prologue
    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mPendingOperations:Ljava/util/Map;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mPendingOperations:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mPendingOperations:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 195
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    const-string v1, "MqttOperationManager"

    const-string v2, "operation/abort; pendingSize=%d"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/facebook/rti/mqtt/manager/MqttOperation;

    .line 201
    invoke-virtual {v4, p1}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->complete(Ljava/lang/Throwable;)V

    .line 202
    invoke-static {v4}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->getOriginalOperationId(Lcom/facebook/rti/mqtt/manager/MqttOperation;)I

    move-result v5

    .line 203
    invoke-static {v4}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->getRetryCount(Lcom/facebook/rti/mqtt/manager/MqttOperation;)I

    move-result v7

    .line 204
    iget-object v0, v4, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 205
    if-nez v0, :cond_0

    const-wide/16 v8, 0x0

    .line 206
    :goto_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    const-string v1, "abort"

    iget-object v2, v4, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mTopicName:Ljava/lang/String;

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    .line 209
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->getValue()I

    move-result v3

    iget v4, v4, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mOperationId:I

    move-object v6, p1

    .line 206
    invoke-virtual/range {v0 .. v9}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttPublishFailureEvent(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Throwable;IJ)V

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 205
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getMqttSessionId()J

    move-result-wide v8

    goto :goto_1

    .line 216
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->logOperation(Ljava/lang/String;Lcom/facebook/rti/mqtt/manager/MqttOperation;)V

    .line 217
    return-void
.end method

.method public addPendingOperation(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;II)Lcom/facebook/rti/mqtt/manager/MqttOperation;
    .locals 8

    .prologue
    .line 75
    invoke-static {p1}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v1, Lcom/facebook/rti/mqtt/manager/MqttOperation;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 77
    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/facebook/rti/mqtt/manager/MqttOperation;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;IJ)V

    .line 80
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mPendingOperations:Ljava/util/Map;

    monitor-enter v2

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mPendingOperations:Ljava/util/Map;

    iget v3, v1, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mOperationId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;

    .line 82
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v0, v2}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->complete(Ljava/lang/Throwable;)V

    .line 85
    const-string v2, "MqttOperationManager"

    const-string v3, "operation/add/duplicate; id=%d, name=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mOperationId:I

    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mResponseType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 89
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 85
    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mExecutorService:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    new-instance v2, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$1;-><init>(Lcom/facebook/rti/mqtt/manager/MqttOperationManager;Lcom/facebook/rti/mqtt/manager/MqttOperation;)V

    int-to-long v4, p5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 93
    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture;

    move-result-object v0

    .line 103
    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->setTimeoutFuture(Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;)V

    .line 104
    const-string v0, "MqttOperationManager"

    const-string v2, "operation/add; id=%d, name=%s, timeoutSec=%d"

    .line 107
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 108
    invoke-virtual {p3}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 104
    invoke-static {v0, v2, v3, v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    return-object v1

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public completeOperation(I)Lcom/facebook/rti/mqtt/manager/MqttOperation;
    .locals 13
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 148
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mPendingOperations:Ljava/util/Map;

    monitor-enter v3

    .line 149
    :try_start_0
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mPendingOperations:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;

    move-object v12, v0

    .line 150
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    if-eqz v12, :cond_2

    .line 153
    const-string v2, "complete"

    invoke-direct {p0, v2, v12}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->logOperation(Ljava/lang/String;Lcom/facebook/rti/mqtt/manager/MqttOperation;)V

    .line 154
    invoke-virtual {v12}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->complete()V

    .line 155
    const-string v2, "MqttOperationManager"

    const-string v3, "Complete operation,  currentTime: %d"

    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v4}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    iget-wide v4, v12, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mCreationTime:J

    sub-long v6, v2, v4

    .line 158
    iget-object v2, v12, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mResponseType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v2, v3}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    const-class v3, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;

    .line 160
    invoke-virtual {v2, v3}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v2

    check-cast v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;

    sget-object v3, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency$Metric;->PublishAcknowledgementMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency$Metric;

    .line 161
    invoke-virtual {v2, v3, v6, v7}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;->incrementCounterWithDecay(Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency$Metric;J)V

    .line 164
    :cond_0
    invoke-static {v12}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->getOriginalOperationId(Lcom/facebook/rti/mqtt/manager/MqttOperation;)I

    move-result v8

    .line 165
    invoke-static {v12}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->getRetryCount(Lcom/facebook/rti/mqtt/manager/MqttOperation;)I

    move-result v9

    .line 166
    iget-object v2, v12, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 167
    if-nez v2, :cond_1

    const-wide/16 v10, 0x0

    .line 168
    :goto_0
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget-object v3, v12, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mTopicName:Ljava/lang/String;

    sget-object v4, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    .line 170
    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->getValue()I

    move-result v4

    move v5, p1

    .line 168
    invoke-virtual/range {v2 .. v11}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttPublishSuccessEvent(Ljava/lang/String;IIJIIJ)V

    .line 179
    :goto_1
    return-object v12

    .line 150
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 167
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getMqttSessionId()J

    move-result-wide v10

    goto :goto_0

    .line 178
    :cond_2
    const-string v2, "MqttOperationManager"

    const-string v3, "operation/complete/not_found; id=%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    const/4 v12, 0x0

    goto :goto_1
.end method

.method public onOperationFailed(ILjava/lang/Throwable;)V
    .locals 12

    .prologue
    .line 221
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mPendingOperations:Ljava/util/Map;

    monitor-enter v3

    .line 222
    :try_start_0
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mPendingOperations:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;

    move-object v4, v0

    .line 223
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    if-eqz v4, :cond_0

    .line 226
    invoke-virtual {v4, p2}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->complete(Ljava/lang/Throwable;)V

    .line 227
    iget-object v2, v4, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 228
    if-nez v2, :cond_1

    const-wide/16 v10, 0x0

    .line 229
    :goto_0
    invoke-static {v4}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->getOriginalOperationId(Lcom/facebook/rti/mqtt/manager/MqttOperation;)I

    move-result v7

    .line 230
    invoke-static {v4}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->getRetryCount(Lcom/facebook/rti/mqtt/manager/MqttOperation;)I

    move-result v9

    .line 231
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->mAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    const-string v3, "op_failed"

    iget-object v4, v4, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mTopicName:Ljava/lang/String;

    sget-object v5, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    .line 234
    invoke-virtual {v5}, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->getValue()I

    move-result v5

    move v6, p1

    move-object v8, p2

    .line 231
    invoke-virtual/range {v2 .. v11}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttPublishFailureEvent(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Throwable;IJ)V

    .line 241
    :cond_0
    return-void

    .line 223
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 228
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getMqttSessionId()J

    move-result-wide v10

    goto :goto_0
.end method
