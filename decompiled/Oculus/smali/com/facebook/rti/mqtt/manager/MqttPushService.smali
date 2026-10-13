.class public abstract Lcom/facebook/rti/mqtt/manager/MqttPushService;
.super Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;
.source "MqttPushService.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field protected final mConnectionManagerCallbacks:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

.field private mConnectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

.field protected mConnectionTimeMs:J

.field protected mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

.field private mLastReportedConnectionState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

.field protected mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

.field protected volatile mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

.field protected mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

.field protected mMqttConnectivityMonitorDispatcher:Lcom/facebook/rti/mqtt/connectivity/MqttConnectivityMonitor;

.field private mMqttDiagnosticNotification:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

.field protected mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

.field protected mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

.field protected mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

.field protected mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

.field protected mScreenPowerState:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

.field protected mServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->DISCONNECTED:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mLastReportedConnectionState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    .line 639
    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;-><init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mConnectionManagerCallbacks:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    return-void
.end method

.method private static convertTimeMs(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 591
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMqttHealthStats()Ljava/lang/String;
    .locals 4

    .prologue
    .line 584
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->getCurSessionDuration()J

    move-result-wide v0

    .line 585
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    const/4 v3, 0x0

    .line 586
    invoke-virtual {v2, v0, v1, v3}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getHealthStatsForBugReport(JZ)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;

    move-result-object v0

    .line 587
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->export(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private logDoStartCommand(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 620
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 621
    if-nez p1, :cond_1

    .line 622
    const-string v1, "intent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    const-string/jumbo v2, "start_command"

    invoke-interface {v1, v2, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger;->log(Ljava/lang/String;Ljava/util/Map;)V

    .line 631
    return-void

    .line 624
    :cond_1
    const-string v1, "action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string v1, "caller"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 626
    if-eqz v1, :cond_0

    .line 627
    const-string v2, "caller"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private logServiceLifeCycle(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 613
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 614
    const-string v1, "event"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    const-string v2, "life_cycle"

    invoke-interface {v1, v2, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger;->log(Ljava/lang/String;Ljava/util/Map;)V

    .line 617
    return-void
.end method


# virtual methods
.method protected abstract bootstrapService()Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;
.end method

.method protected destroy()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->SERVICE_DESTROY:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->stop(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;)Ljava/util/concurrent/Future;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->SERVICE_DESTROY:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->disconnect(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;)Ljava/util/concurrent/Future;

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->destroy()V

    .line 428
    :cond_2
    return-void
.end method

.method protected disconnect(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->disconnect(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 437
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->maybeReportConnectionStateChanged()Z

    .line 438
    return-object v0
.end method

.method protected doCreate()V
    .locals 11

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkState(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->bootstrapService()Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    .line 104
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->injectService()V

    .line 105
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->initService()V

    .line 107
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    new-instance v1, Lcom/facebook/rti/mqtt/manager/MqttPushService$1;

    invoke-direct {v1, p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService$1;-><init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;)V

    invoke-interface {v0, v1}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger;->setSystemDumper(Lcom/facebook/rti/common/logging/MqttSystemDumper;)V

    .line 115
    const-string v0, "doCreate"

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->logServiceLifeCycle(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".SERVICE_CREATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getMqttPersistenceString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 120
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v4

    .line 121
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 124
    invoke-virtual {v8}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getNetworkSessionId()J

    move-result-wide v8

    iget-object v10, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 125
    invoke-virtual {v10}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getConnectionNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    .line 116
    invoke-virtual/range {v0 .. v10}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttServiceEventStartStop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;ZIJLandroid/net/NetworkInfo;)V

    .line 126
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected doDestroy()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 215
    const-string v0, "MqttPushService"

    const-string/jumbo v1, "service/destroyed; started=%s"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".SERVICE_DESTROY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getMqttPersistenceString()Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v4

    .line 221
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 222
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 224
    invoke-virtual {v8}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getNetworkSessionId()J

    move-result-wide v8

    iget-object v10, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 225
    invoke-virtual {v10}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getConnectionNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    .line 216
    invoke-virtual/range {v0 .. v10}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttServiceEventStartStop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;ZIJLandroid/net/NetworkInfo;)V

    .line 226
    const-string v0, "doDestroy"

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->logServiceLifeCycle(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    invoke-interface {v0, v3}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger;->setSystemDumper(Lcom/facebook/rti/common/logging/MqttSystemDumper;)V

    .line 229
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->destroy()V

    .line 230
    return-void
.end method

.method protected doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 559
    :try_start_0
    const-string v0, "[ MqttPushService ]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persistence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getMqttPersistenceString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->getNetworkChangedTimeMs()J

    move-result-wide v0

    .line 562
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 564
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    .line 566
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkChangedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "subscribedTopics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->getSubscribedTopicsString()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->rtiBuildInfoUtil:Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    invoke-virtual {v0}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->isProdBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    :goto_1
    return-void

    .line 565
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 576
    const-string v0, "[ MqttHealthStats ]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getMqttHealthStats()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 578
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected doIntent(Landroid/content/Intent;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method protected doPreStart(Landroid/content/Intent;II)Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;
    .locals 12
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 291
    const-string v4, "NULL"

    .line 292
    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;-><init>()V

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    .line 294
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;->buildFromSharedPreferences(Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;

    move-result-object v11

    .line 295
    if-eqz p1, :cond_1

    .line 296
    invoke-virtual {v11, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->overwriteWithIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    invoke-virtual {v11, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->saveToSharedPreferences(Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 303
    :cond_1
    const-string v0, "MqttPushService"

    const-string/jumbo v1, "service/onStart; flag=%d, id=%d, intent=%s, caller=%s"

    .line 306
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 307
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, v11, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->caller:Ljava/lang/String;

    .line 303
    invoke-static/range {v0 .. v5}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getMqttPersistenceString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v11, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->caller:Ljava/lang/String;

    .line 314
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v4

    .line 315
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 316
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 318
    invoke-virtual {v8}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getNetworkSessionId()J

    move-result-wide v8

    iget-object v10, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 319
    invoke-virtual {v10}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getConnectionNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    .line 310
    invoke-virtual/range {v0 .. v10}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttServiceEventStartStop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;ZIJLandroid/net/NetworkInfo;)V

    .line 321
    return-object v11
.end method

.method protected final doStartCommand(Landroid/content/Intent;II)V
    .locals 4

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->logDoStartCommand(Landroid/content/Intent;)V

    .line 245
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->isValidSender(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const-string v0, "MqttPushService"

    const-string/jumbo v1, "service/doStartCommand/not_a_valid_sender"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 p1, 0x0

    .line 254
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->doPreStart(Landroid/content/Intent;II)Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;

    move-result-object v0

    .line 255
    if-nez v0, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->stopMyself()V

    .line 277
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->isIntentKick(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    invoke-virtual {p0, p1, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->kickMyself(Landroid/content/Intent;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V

    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 266
    const-string v2, "Orca.STOP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 267
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->SERVICE_STOP:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->stop(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;)Ljava/util/concurrent/Future;

    .line 268
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->stopMyself()V

    goto :goto_0

    .line 269
    :cond_3
    const-string v2, "Orca.START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 270
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;->SERVICE_START:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->start(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V

    goto :goto_0

    .line 271
    :cond_4
    const-string v2, "Orca.EXPIRE_CONNECTION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 272
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-wide v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->expiredSessionId:J

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->expireConnection(J)V

    goto :goto_0

    .line 274
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->doIntent(Landroid/content/Intent;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V

    goto :goto_0
.end method

.method protected errorReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method protected getFbErrorReporter()Lcom/facebook/common/errorreporting/FbErrorReporter;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFbnsExplicitDeliveryAckEnabled()Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method protected getLooper()Landroid/os/Looper;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMqttPersistenceString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    const-string v0, "N/A"

    return-object v0
.end method

.method protected getMqttStatus()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 597
    const-string v1, "is_mqtt_direct"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string v1, "last_connection_time"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    .line 600
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->getConnectionTimeStampMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->convertTimeMs(J)Ljava/lang/String;

    move-result-object v2

    .line 598
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v1, "last_network_changed_time"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    .line 603
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->getNetworkChangedTimeMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->convertTimeMs(J)Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string/jumbo v1, "subscribed_topics"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    .line 606
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->getSubscribedTopicsString()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v1, "mqtt_health_stats"

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getMqttHealthStats()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    return-object v0
.end method

.method public abstract getServiceConnectionType()Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getServiceConnectionType()Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initService()V
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;->ServiceCreatedTimestamp:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 189
    invoke-interface {v2}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    .line 188
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->setCounter(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;J)V

    .line 190
    return-void
.end method

.method protected final injectMqttPushService(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/mqtt/connectivity/MqttConnectivityMonitor;Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;Lcom/facebook/rti/common/logging/RtiFlytrapLogger;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    .line 174
    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 175
    iput-object p3, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttConnectivityMonitorDispatcher:Lcom/facebook/rti/mqtt/connectivity/MqttConnectivityMonitor;

    .line 176
    iput-object p4, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 177
    iput-object p5, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    .line 178
    iput-object p6, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    .line 179
    iput-object p7, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mScreenPowerState:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    .line 180
    iput-object p8, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttDiagnosticNotification:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    .line 181
    iput-object p9, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mConnectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    .line 182
    iput-object p10, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    .line 183
    iput-object p11, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    .line 184
    return-void
.end method

.method protected injectService()V
    .locals 12

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v1, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->fbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttConnectivityMonitor:Lcom/facebook/rti/mqtt/connectivity/CompositeMqttConnectivityMonitor;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->screenPowerState:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v8, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttDiagnosticNotification:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v9, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->connectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v10, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->rtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v11, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->injectMqttPushService(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/mqtt/connectivity/MqttConnectivityMonitor;Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;Lcom/facebook/rti/common/logging/RtiFlytrapLogger;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V

    .line 158
    return-void
.end method

.method protected isIntentKick(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 355
    if-eqz p1, :cond_0

    const-string v0, "Orca.PERSISTENT_KICK"

    .line 356
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Orca.PERSISTENT_KICK_SKIP_PING"

    .line 357
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidSender(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method protected kickConnection(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->kickConnection(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V

    .line 432
    return-void
.end method

.method protected kickMyself(Landroid/content/Intent;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V
    .locals 2

    .prologue
    .line 330
    const-string v0, "MqttPushService"

    const-string/jumbo v1, "service/onStart/process_kick_myself"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 334
    if-nez p1, :cond_1

    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;->SERVICE_RESTART:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    .line 338
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->start(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V

    .line 352
    :cond_0
    :goto_1
    return-void

    .line 334
    :cond_1
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;->PERSISTENT_KICK:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->shouldBeConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    if-eqz p1, :cond_0

    const-string v0, "Orca.PERSISTENT_KICK"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, p2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->caller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->ensureActiveKeepAlive(Ljava/lang/String;)V

    goto :goto_1

    .line 349
    :cond_3
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;->PERSISTENT_KICK:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->kickConnection(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V

    goto :goto_1
.end method

.method protected maybeReportConnectionStateChanged()Z
    .locals 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->getCurrentConnectionState()Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    move-result-object v0

    .line 528
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mLastReportedConnectionState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    if-ne v0, v1, :cond_1

    .line 529
    :cond_0
    const/4 v0, 0x0

    .line 545
    :goto_0
    return v0

    .line 532
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[state_machine] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mLastReportedConnectionState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    .line 534
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    .line 535
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 536
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 537
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 538
    const-string v2, "MqttPushService"

    invoke-static {v2, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    invoke-interface {v2, v1}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger;->log(Ljava/lang/String;)V

    .line 541
    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mLastReportedConnectionState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    .line 542
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttDiagnosticNotification:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->show(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->onReportConnectionStateChanged(Lcom/facebook/rti/mqtt/protocol/ConnectionState;)V

    .line 545
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onClientFailed(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 633
    return-void
.end method

.method protected onConnectFailed(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;)V
    .locals 0
    .param p1    # Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 493
    return-void
.end method

.method protected onConnectionConnecting()V
    .locals 2

    .prologue
    .line 467
    const-string v0, "MqttPushService"

    const-string v1, "connection/connecting"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->maybeReportConnectionStateChanged()Z

    .line 469
    return-void
.end method

.method protected onConnectionEstablished()V
    .locals 2

    .prologue
    .line 461
    const-string v0, "MqttPushService"

    const-string v1, "connection/established"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mConnectionTimeMs:J

    .line 463
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->maybeReportConnectionStateChanged()Z

    .line 464
    return-void
.end method

.method protected onConnectionLost(Lcom/facebook/rti/common/guavalite/base/Optional;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 484
    const-string v0, "MqttPushService"

    const-string v1, "connection/lost; lastState=%s."

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mLastReportedConnectionState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    invoke-virtual {p1}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p1}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->onConnectFailed(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;)V

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->maybeReportConnectionStateChanged()Z

    .line 489
    return-void
.end method

.method protected onCredentialsChanged()V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public onDestroy()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 197
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".SERVICE_ON_DESTROY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getMqttPersistenceString()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v4

    .line 203
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 204
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    const/4 v7, -0x1

    const-wide/16 v8, 0x0

    move-object v10, v3

    .line 198
    invoke-virtual/range {v0 .. v10}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttServiceEventStartStop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;ZIJLandroid/net/NetworkInfo;)V

    .line 210
    :cond_0
    invoke-super {p0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->onDestroy()V

    .line 211
    return-void
.end method

.method protected onMessageReceived(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method protected onMessageSent(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

.method protected onPublishArrived(Ljava/lang/String;[BIJLcom/facebook/rti/common/util/RtiWakeLock;)V
    .locals 4

    .prologue
    .line 502
    sget-object v0, Lcom/facebook/rti/common/logging/RtiFlytrapLogger;->FLYTRAP_TOPICS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    const-string v0, "onPublishArrived msgId %d/topic:%s/receivedTimeMs:%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 506
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 504
    invoke-static {v0, v1}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 507
    const-string v1, "MqttPushService"

    const-string v2, "flytrap: %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 508
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    invoke-interface {v1, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger;->log(Ljava/lang/String;)V

    .line 510
    :cond_0
    return-void
.end method

.method protected onReportConnectionStateChanged(Lcom/facebook/rti/mqtt/protocol/ConnectionState;)V
    .locals 0

    .prologue
    .line 550
    return-void
.end method

.method protected registerReceivers()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method protected reportDataUsage(Ljava/lang/String;JZ)V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method protected setDeliveryRetryInterval(I)V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method protected shouldBeConnected()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 442
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    const-string v1, "MqttPushService"

    const-string v2, "connection/service_not_started"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    const-string v2, "MqttPushService/not_started"

    invoke-interface {v1, v2}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger;->log(Ljava/lang/String;)V

    .line 456
    :goto_0
    return v0

    .line 449
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 450
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttConnectivityMonitorDispatcher:Lcom/facebook/rti/mqtt/connectivity/MqttConnectivityMonitor;

    invoke-interface {v2, v1}, Lcom/facebook/rti/mqtt/connectivity/MqttConnectivityMonitor;->shouldBeConnected(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 451
    const-string v2, "MqttPushService"

    const-string v3, "connection/should_not_connect; reason=%s"

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 452
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    const-string v3, "MqttPushService/should_not_connect"

    invoke-interface {v2, v3, v1}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger;->log(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 456
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected start(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V
    .locals 2

    .prologue
    .line 368
    const-string v0, "MqttPushService"

    const-string/jumbo v1, "service/start; reason=%s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 372
    if-eqz p2, :cond_1

    .line 373
    iget-object v0, p2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->isConnectionRetryFgBgEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mConnectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    iget-object v1, p2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->isConnectionRetryFgBgEnabled:Ljava/lang/Boolean;

    .line 375
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 374
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->setIsConnectionRetryFgBgEnabled(Z)V

    .line 377
    :cond_0
    iget-object v0, p2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->deliveryRetryInterval:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->deliveryRetryInterval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->setDeliveryRetryInterval(I)V

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->markServiceStart(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->registerReceivers()V

    .line 384
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getFbnsExplicitDeliveryAckEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->setFbnsExplicitDeliveryAckEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->start()V

    .line 387
    :cond_2
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->kickConnection(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V

    .line 388
    return-void
.end method

.method protected stop(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 399
    const-string v0, "MqttPushService"

    const-string/jumbo v1, "service/stop; reason=%s\'"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    sget-object v0, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;->SUCCEEDED:Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;

    .line 401
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    const-string v1, "MqttPushService"

    const-string/jumbo v2, "service/stop/inactive_connection"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :goto_0
    return-object v0

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->unregisterReceivers()V

    .line 407
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->stop()V

    .line 408
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->disconnect(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0
.end method

.method protected stopMyself()V
    .locals 0

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->stopSelf()V

    .line 326
    return-void
.end method

.method protected unregisterReceivers()V
    .locals 0

    .prologue
    .line 413
    return-void
.end method
