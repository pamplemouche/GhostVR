.class public Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;
.super Ljava/lang/Object;
.source "MqttBootstrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$SimpleThreadFactory;
    }
.end annotation


# instance fields
.field public analyticsLogger:Lcom/facebook/rti/common/analytics/AnalyticsLogger;

.field public blockedCountriesConnConfigOverrides:Lcom/facebook/rti/mqtt/manager/BlockedCountriesConnectionConfigOverrides;

.field public clock:Lcom/facebook/rti/common/time/Clock;

.field public connectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

.field public connectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

.field public estimateRadioActiveTimeHelper:Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;

.field public fbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

.field public keepaliveInterval:Ljava/util/concurrent/atomic/AtomicInteger;

.field public keepaliveManager:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

.field private mDestroyed:Z

.field public mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

.field protected mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

.field public monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

.field public mqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

.field public mqttBatteryStateManager:Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;

.field public mqttClientProvider:Lcom/facebook/rti/common/util/NonInjectTwoParamsProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectTwoParamsProvider",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;",
            "Lcom/facebook/rti/mqtt/protocol/MqttClient;",
            ">;"
        }
    .end annotation
.end field

.field public mqttConnectivityMonitor:Lcom/facebook/rti/mqtt/connectivity/CompositeMqttConnectivityMonitor;

.field public mqttDiagnosticNotification:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

.field public mqttHandler:Landroid/os/Handler;

.field public mqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

.field public mqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

.field public mqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

.field public mqttThreadExecutorService:Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorService;

.field public operationManager:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

.field public pingUnreceivedAlarm:Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;

.field public rtiBuildInfoUtil:Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

.field public rtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

.field public rtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

.field public screenPowerState:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

.field public uiWakeupExecutorService:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

.field public userAgent:Lcom/facebook/rti/common/util/UserAgent;

.field public workConnectionConfigOverrides:Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;

.field public zeroRatingConnectionConfigOverrides:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mDestroyed:Z

    return-void
.end method

.method static synthetic access$000(ZZ)I
    .locals 1

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->getPublishCompression(ZZ)I

    move-result v0

    return v0
.end method

.method private static createCollapseScheduledThreadPool(IILjava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.util.concurrent.ThreadPoolExecutor._Constructor"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$SimpleThreadFactory;

    invoke-direct {v1, p2}, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$SimpleThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 147
    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 148
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 149
    return-object v0
.end method

.method private static createCollapseThreadPool(IIILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.util.concurrent.ThreadPoolExecutor._Constructor"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$SimpleThreadFactory;

    invoke-direct {v8, p3}, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$SimpleThreadFactory;-><init>(Ljava/lang/String;)V

    move v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 137
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 138
    return-object v1
.end method

.method private static getPublishCompression(ZZ)I
    .locals 1

    .prologue
    .line 570
    if-eqz p0, :cond_1

    .line 571
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 575
    :goto_0
    return v0

    .line 571
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 575
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bootstrap(Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;Ljava/util/List;)V
    .locals 33
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.util.concurrent.Executors.newSingleThreadExecutor",
            "BadMethodUse-java.util.concurrent.Executors.newFixedThreadPool",
            "BadMethodUse-java.util.concurrent.Executors.newScheduledThreadPool"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->context:Landroid/content/Context;

    .line 162
    new-instance v2, Lcom/facebook/rti/common/util/SystemServiceManager;

    .line 163
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->fbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    invoke-direct {v2, v4, v5}, Lcom/facebook/rti/common/util/SystemServiceManager;-><init>(Landroid/content/Context;Lcom/facebook/common/errorreporting/FbErrorReporter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    .line 164
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->serviceConnectionType:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->name()Ljava/lang/String;

    move-result-object v17

    .line 165
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->fbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    invoke-static {v2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->build(Lcom/facebook/common/errorreporting/FbErrorReporter;)Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->rtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    .line 168
    invoke-static {v3}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->getInstance(Landroid/content/Context;)Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->rtiBuildInfoUtil:Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    .line 169
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v2}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->isServicePreLoadedPackage(Ljava/lang/String;)Z

    move-result v18

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->rtiBuildInfoUtil:Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    invoke-virtual {v2}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->isProdBuild()Z

    move-result v2

    invoke-static {v2}, Lcom/facebook/rti/common/util/Assertion;->setIsProdMode(Z)V

    .line 173
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    .line 175
    new-instance v4, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->rtiBuildInfoUtil:Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    .line 179
    invoke-virtual {v2}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->isProdBuild()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    move-object/from16 v0, v17

    invoke-direct {v4, v3, v0, v2, v5}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttDiagnosticNotification:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    .line 183
    invoke-static {}, Lcom/facebook/rti/common/time/SystemClock;->get()Lcom/facebook/rti/common/time/SystemClock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->clock:Lcom/facebook/rti/common/time/Clock;

    .line 184
    invoke-static {}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 185
    new-instance v2, Lcom/facebook/rti/common/util/UserAgent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->rtiBuildInfoUtil:Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    .line 189
    invoke-interface {v5}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->getAppName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->appSpecificInfo:Ljava/util/Map;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->localeOverride:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/facebook/rti/common/util/UserAgent;-><init>(Landroid/content/Context;Lcom/facebook/rti/common/util/RtiBuildInfoUtil;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->userAgent:Lcom/facebook/rti/common/util/UserAgent;

    .line 193
    new-instance v2, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;-><init>(Landroid/content/Context;Lcom/facebook/rti/common/util/SystemServiceManager;Landroid/os/Handler;Lcom/facebook/rti/common/time/MonotonicClock;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->screenPowerState:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    .line 199
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isWakeLockExpEnabled:Z

    if-eqz v2, :cond_3

    new-instance v24, Lcom/facebook/rti/common/util/RtiWakeLockHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Lcom/facebook/rti/common/util/RtiWakeLockHelper;-><init>(Lcom/facebook/rti/common/util/SystemServiceManager;)V

    .line 205
    :goto_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->rtiThreadPoolCoreSize:I

    if-ltz v2, :cond_0

    .line 206
    move-object/from16 v0, p1

    iget v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->rtiThreadPoolCoreSize:I

    invoke-static {v2}, Lcom/facebook/rti/common/concurrent/RtiExecutor;->setCorePoolSize(I)V

    .line 210
    :cond_0
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorCollapseWriteInMqttClient:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p1

    iget v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorIdleTimeoutSeconds:I

    if-lez v2, :cond_4

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorIdleTimeoutSeconds:I

    const-string/jumbo v6, "writeInMqttClient"

    .line 212
    invoke-static {v2, v4, v5, v6}, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->createCollapseThreadPool(IIILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v13

    .line 217
    :goto_2
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorCollapseAddressResolver:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorIdleTimeoutSeconds:I

    if-lez v2, :cond_5

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorIdleTimeoutSeconds:I

    const-string v6, "mqttAddressResolver"

    .line 219
    invoke-static {v2, v4, v5, v6}, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->createCollapseThreadPool(IIILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    move-object v14, v2

    .line 227
    :goto_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorCollapseMqqtSsl:I

    if-ltz v2, :cond_6

    move-object/from16 v0, p1

    iget v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorIdleTimeoutSeconds:I

    if-lez v2, :cond_6

    move-object/from16 v0, p1

    iget v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorCollapseMqqtSsl:I

    const/4 v4, 0x2

    move-object/from16 v0, p1

    iget v5, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorIdleTimeoutSeconds:I

    const-string v6, "mqttSsl"

    .line 229
    invoke-static {v2, v4, v5, v6}, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->createCollapseThreadPool(IIILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    move-object v15, v2

    .line 238
    :goto_4
    move-object/from16 v0, p1

    iget v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorCollapseHEInMqttClient:I

    if-ltz v2, :cond_7

    move-object/from16 v0, p1

    iget v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorIdleTimeoutSeconds:I

    if-lez v2, :cond_7

    move-object/from16 v0, p1

    iget v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorCollapseHEInMqttClient:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorIdleTimeoutSeconds:I

    const-string v5, "HEInMqttClient"

    .line 240
    invoke-static {v2, v4, v5}, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->createCollapseScheduledThreadPool(IILjava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    move-object/from16 v16, v2

    .line 247
    :goto_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttHandler:Landroid/os/Handler;

    .line 256
    new-instance v2, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttHandler:Landroid/os/Handler;

    invoke-direct {v2, v4}, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;-><init>(Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttThreadExecutorService:Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorService;

    .line 257
    new-instance v4, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->rtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    move-object/from16 v6, v17

    move-object v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;-><init>(Lcom/facebook/rti/common/util/SystemServiceManager;Ljava/lang/String;Landroid/content/Context;Lcom/facebook/rti/common/time/MonotonicClock;Landroid/os/Handler;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->uiWakeupExecutorService:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    .line 266
    new-instance v4, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    .line 269
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttThreadExecutorService:Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorService;

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->detectMaintenanceWindow:Z

    invoke-direct/range {v4 .. v10}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;-><init>(Lcom/facebook/rti/common/util/SystemServiceManager;Landroid/content/Context;Lcom/facebook/rti/common/time/MonotonicClock;Landroid/os/Handler;Ljava/util/concurrent/ScheduledExecutorService;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 274
    new-instance v2, Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;

    invoke-direct {v2, v3}, Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttBatteryStateManager:Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;

    .line 276
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    .line 277
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->connectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->connectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    .line 278
    new-instance v2, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->connectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->serviceConnectionType:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->fbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->clock:Lcom/facebook/rti/common/time/Clock;

    invoke-direct/range {v2 .. v8}, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;-><init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;Lcom/facebook/common/errorreporting/FbErrorReporter;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;Lcom/facebook/rti/common/time/Clock;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->zeroRatingConnectionConfigOverrides:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    .line 286
    new-instance v2, Lcom/facebook/rti/mqtt/manager/BlockedCountriesConnectionConfigOverrides;

    invoke-direct {v2, v3}, Lcom/facebook/rti/mqtt/manager/BlockedCountriesConnectionConfigOverrides;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->blockedCountriesConnConfigOverrides:Lcom/facebook/rti/mqtt/manager/BlockedCountriesConnectionConfigOverrides;

    .line 287
    new-instance v2, Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->connectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->serviceConnectionType:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->fbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    invoke-direct/range {v2 .. v7}, Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;-><init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;Lcom/facebook/common/errorreporting/FbErrorReporter;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->workConnectionConfigOverrides:Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->connectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->zeroRatingConnectionConfigOverrides:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    invoke-virtual {v2, v4}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->addConfigOverrides(Lcom/facebook/rti/mqtt/common/config/ConnectionConfigOverrides;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->connectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->blockedCountriesConnConfigOverrides:Lcom/facebook/rti/mqtt/manager/BlockedCountriesConnectionConfigOverrides;

    invoke-virtual {v2, v4}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->addConfigOverrides(Lcom/facebook/rti/mqtt/common/config/ConnectionConfigOverrides;)V

    .line 298
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isWorkBuild()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->connectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->workConnectionConfigOverrides:Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;

    invoke-virtual {v2, v4}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->addConfigOverrides(Lcom/facebook/rti/mqtt/common/config/ConnectionConfigOverrides;)V

    .line 301
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->connectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->build()V

    .line 303
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->analyticsLogger:Lcom/facebook/rti/common/analytics/AnalyticsLogger;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->analyticsLogger:Lcom/facebook/rti/common/analytics/AnalyticsLogger;

    .line 304
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->rtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->rtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    .line 306
    new-instance v2, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->customAnalyticsEventNameSuffix:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttBatteryStateManager:Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->analyticsLogger:Lcom/facebook/rti/common/analytics/AnalyticsLogger;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->rtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    move-object/from16 v4, v17

    invoke-direct/range {v2 .. v10}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;Lcom/facebook/rti/common/analytics/AnalyticsLogger;Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/common/logging/RtiFlytrapLogger;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    .line 316
    new-instance v2, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->screenPowerState:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->clock:Lcom/facebook/rti/common/time/Clock;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isLoggingHealthStatsEnabled:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    move-object/from16 v5, v17

    invoke-direct/range {v2 .. v12}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;-><init>(Landroid/content/Context;Lcom/facebook/rti/common/util/SystemServiceManager;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/common/time/Clock;Lcom/facebook/rti/common/util/NonInjectProvider;ZLcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    .line 329
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttClientCoreBuilder:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->clock:Lcom/facebook/rti/common/time/Clock;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    invoke-virtual {v2, v4, v5, v6}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;->inject(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/common/time/Clock;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;)V

    .line 332
    new-instance v2, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isLogTimeProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 337
    invoke-interface {v6}, Lcom/facebook/rti/common/util/NonInjectProvider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    invoke-direct/range {v2 .. v7}, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;-><init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/common/time/MonotonicClock;ZLcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->estimateRadioActiveTimeHelper:Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;

    .line 341
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->connectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    .line 342
    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v4

    iget v4, v4, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackgroundKeepaliveIntervalPersistent:I

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->keepaliveInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 344
    new-instance v2, Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;

    new-instance v4, Lcom/facebook/ssl/verification/FbHostnameVerifier;

    invoke-direct {v4}, Lcom/facebook/ssl/verification/FbHostnameVerifier;-><init>()V

    invoke-direct {v2, v4}, Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;-><init>(Ljavax/net/ssl/HostnameVerifier;)V

    .line 345
    new-instance v8, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;

    invoke-direct {v8, v15, v2}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;)V

    .line 349
    new-instance v10, Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    new-instance v2, Lcom/facebook/rti/mqtt/protocol/DNSResolver;

    invoke-direct {v2}, Lcom/facebook/rti/mqtt/protocol/DNSResolver;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    invoke-direct {v10, v14, v2, v4}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/facebook/rti/mqtt/protocol/DNSResolver;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V

    .line 355
    new-instance v4, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, v18

    move-object/from16 v9, v16

    move-object v11, v3

    move-object/from16 v12, v24

    invoke-direct/range {v4 .. v13}, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;-><init>(Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;ZLcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/rti/mqtt/protocol/AddressResolver;Landroid/content/Context;Lcom/facebook/rti/common/util/RtiWakeLockHelper;Ljava/util/concurrent/ExecutorService;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttClientProvider:Lcom/facebook/rti/common/util/NonInjectTwoParamsProvider;

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->connectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v2

    iget v2, v2, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mConnectRateLimiterLimit:I

    .line 448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->connectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v4

    iget v4, v4, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mConnectRateLimiterIntervalS:I

    .line 449
    if-lez v2, :cond_8

    if-lez v4, :cond_8

    .line 450
    new-instance v11, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    int-to-long v6, v4

    invoke-direct {v11, v5, v2, v6, v7}, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;-><init>(Lcom/facebook/rti/common/time/MonotonicClock;IJ)V

    .line 458
    :goto_6
    new-instance v4, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    if-eqz v2, :cond_9

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    :goto_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttThreadExecutorService:Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->uiWakeupExecutorService:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->connectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->rtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isConnectionRetryFgBgEnabled:Z

    invoke-direct/range {v4 .. v13}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;-><init>(Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/common/util/NonInjectProvider;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/common/util/RateLimiter;Lcom/facebook/rti/common/logging/RtiFlytrapLogger;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->connectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    .line 476
    new-instance v4, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttThreadExecutorService:Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->uiWakeupExecutorService:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-direct/range {v4 .. v10}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;-><init>(Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorService;Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->operationManager:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    .line 483
    new-instance v2, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->keepaliveInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->rtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    move-object/from16 v5, v17

    invoke-direct/range {v2 .. v9}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;-><init>(Landroid/content/Context;Lcom/facebook/rti/common/util/SystemServiceManager;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/facebook/rti/common/time/MonotonicClock;Landroid/os/Handler;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->keepaliveManager:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    .line 493
    new-instance v2, Lcom/facebook/rti/mqtt/connectivity/CompositeMqttConnectivityMonitor;

    invoke-direct {v2}, Lcom/facebook/rti/mqtt/connectivity/CompositeMqttConnectivityMonitor;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttConnectivityMonitor:Lcom/facebook/rti/mqtt/connectivity/CompositeMqttConnectivityMonitor;

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttConnectivityMonitor:Lcom/facebook/rti/mqtt/connectivity/CompositeMqttConnectivityMonitor;

    iget-object v2, v2, Lcom/facebook/rti/mqtt/connectivity/CompositeMqttConnectivityMonitor;->mMqttConnectivityMonitors:Ljava/util/Set;

    new-instance v4, Lcom/facebook/rti/mqtt/connectivity/MqttNetworkManagerMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-direct {v4, v5}, Lcom/facebook/rti/mqtt/connectivity/MqttNetworkManagerMonitor;-><init>(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;)V

    .line 495
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v2, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->keepaliveParms:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->rtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    move-object/from16 v5, v17

    invoke-direct/range {v2 .. v9}, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;-><init>(Landroid/content/Context;Lcom/facebook/rti/common/util/SystemServiceManager;Ljava/lang/String;Lcom/facebook/rti/common/time/MonotonicClock;Landroid/os/Handler;Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->pingUnreceivedAlarm:Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;

    .line 506
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->fbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->fbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->fbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->fbnsConnectionManagerCallbacks:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttClientTopicSubscriptionCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    .line 512
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttClientProvider:Lcom/facebook/rti/common/util/NonInjectTwoParamsProvider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->connectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->operationManager:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->keepaliveManager:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->pingUnreceivedAlarm:Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->keepaliveInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->connectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->keepaliveParms:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->messagePayloadEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->screenPowerState:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->zeroRatingConnectionConfigOverrides:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->workConnectionConfigOverrides:Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;

    move-object/from16 v27, v0

    const-string v28, "MQTT_Subscription"

    .line 533
    invoke-static/range {v28 .. v28}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->newInstanceWithDedicatedPool(Ljava/lang/String;)Lcom/facebook/rti/common/concurrent/SerialExecutor;

    move-result-object v28

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isLoggingHealthStatsEnabled:Z

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isFastSendEnabled:Z

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isServerPingEnabled:Z

    move/from16 v32, v0

    move-object/from16 v29, p2

    .line 507
    invoke-virtual/range {v2 .. v32}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->injectFbnsConnectionManager(Landroid/content/Context;Lcom/facebook/rti/common/util/SystemServiceManager;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectTwoParamsProvider;Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/manager/MqttOperationManager;Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;Landroid/os/Handler;Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/common/util/RtiWakeLockHelper;Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;Ljava/util/concurrent/Executor;Ljava/util/List;ZZZ)V

    .line 538
    return-void

    .line 179
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 199
    :cond_3
    sget-object v24, Lcom/facebook/rti/common/util/RtiWakeLockHelper;->NO_OP:Lcom/facebook/rti/common/util/RtiWakeLockHelper;

    goto/16 :goto_1

    .line 214
    :cond_4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v13

    goto/16 :goto_2

    .line 221
    :cond_5
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    move-object v14, v2

    goto/16 :goto_3

    .line 229
    :cond_6
    const/4 v2, 0x2

    .line 234
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    move-object v15, v2

    goto/16 :goto_4

    .line 240
    :cond_7
    const/4 v2, 0x2

    .line 244
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    move-object/from16 v16, v2

    goto/16 :goto_5

    .line 455
    :cond_8
    new-instance v11, Lcom/facebook/rti/common/util/RateLimiterNoOp;

    invoke-direct {v11}, Lcom/facebook/rti/common/util/RateLimiterNoOp;-><init>()V

    goto/16 :goto_6

    .line 458
    :cond_9
    new-instance v6, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$2;-><init>(Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;)V

    goto/16 :goto_7
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mDestroyed:Z

    .line 551
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->pingUnreceivedAlarm:Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;

    if-eqz v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->pingUnreceivedAlarm:Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->destroy()V

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    if-eqz v0, :cond_3

    .line 556
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->destroy()V

    .line 559
    :cond_3
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->uiWakeupExecutorService:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    if-eqz v0, :cond_4

    .line 560
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->uiWakeupExecutorService:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->shutdown()V

    .line 563
    :cond_4
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->keepaliveManager:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->keepaliveManager:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->destroy()V

    goto :goto_0
.end method
