.class public Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;
.super Ljava/lang/Object;
.source "FbnsConnectionManager.java"


# annotations
.annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;,
        Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;,
        Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private PowerManager_isPowerSaveMode:Ljava/lang/reflect/Method;

.field protected mClockSkewDetected:Z

.field private mConfigUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConnectAttemptTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

.field private mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

.field private mConnectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

.field protected mConnectionTimeStampMs:J

.field private mContext:Landroid/content/Context;

.field protected mDisconnectionTimeStampMs:J

.field private mEventsCallbacks:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

.field protected mIsAppForegrounded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsFastSendEnabled:Z

.field private volatile mIsFbnsExplicitDeliveryAckEnabled:Z

.field private mIsServerPingEnabled:Z

.field private mKeepaliveInterval:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mKeepaliveManager:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

.field protected mKeepaliveParms:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

.field private final mKeepaliveRunnable:Ljava/lang/Runnable;

.field private volatile mLastConnectLostReason:Ljava/lang/String;

.field private volatile mLastConnectLostTime:J

.field protected mLastConnectionEstablishTime:J

.field private mLastNetworkInfoHash:J

.field protected volatile mLastPingTime:J

.field protected mMessagePayloadEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

.field protected mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

.field protected mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

.field protected volatile mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

.field private mMqttClientProvider:Lcom/facebook/rti/common/util/NonInjectTwoParamsProvider;
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

.field protected volatile mMqttClientTopicSubscriptionCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

.field private mMqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

.field private mMqttHandler:Landroid/os/Handler;

.field protected mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

.field private mMqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

.field private volatile mMqttLastUsedConfig:Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

.field private final mMqttNetworkChangeListener:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;

.field private mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

.field private mNetworkChangedTimeMs:J

.field protected mOperationManager:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

.field private mPackageName:Ljava/lang/String;

.field private mPingUnreceivedAlarm:Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;

.field private final mPingUnreceivedRunnable:Ljava/lang/Runnable;

.field private mPowerSaveModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field protected volatile mPreemptiveReconnectClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

.field protected mPreemptiveReconnectTriggerOperationId:I

.field private final mReconnectRunnable:Ljava/lang/Runnable;

.field protected mRtiWakeLockHelper:Lcom/facebook/rti/common/util/RtiWakeLockHelper;

.field private mScreenPowerState:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

.field private mSendHealthStats:Z

.field private mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

.field protected mSubscribedTopics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;"
        }
    .end annotation
.end field

.field protected mSubscriptionsExecutor:Ljava/util/concurrent/Executor;

.field private mUseBackupPort:Z

.field private mWorkConnectionConfigOverrides:Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;

.field private mZeroRatingConnectionConfigOverrides:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mIsAppForegrounded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSubscribedTopics:Ljava/util/Map;

    .line 151
    iput-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mClockSkewDetected:Z

    .line 172
    iput-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mUseBackupPort:Z

    .line 195
    new-instance v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$1;-><init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttNetworkChangeListener:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;

    .line 208
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectAttemptTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 225
    new-instance v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$2;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$2;-><init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mReconnectRunnable:Ljava/lang/Runnable;

    .line 627
    new-instance v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$3;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$3;-><init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mKeepaliveRunnable:Ljava/lang/Runnable;

    .line 667
    new-instance v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$4;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$4;-><init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPingUnreceivedRunnable:Ljava/lang/Runnable;

    .line 235
    return-void
.end method

.method private abortPreemptiveReconnectIfAny()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1238
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPreemptiveReconnectClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1239
    if-eqz v0, :cond_0

    .line 1240
    iput-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPreemptiveReconnectClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1241
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPreemptiveReconnectTriggerOperationId:I

    .line 1242
    invoke-virtual {v0, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->registerHandler(Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;)V

    .line 1243
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->ABORTED_PREEMPTIVE_RECONNECT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->disconnect(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;)Ljava/util/concurrent/Future;

    .line 1245
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->doIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mEventsCallbacks:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/manager/MqttIdManager;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectAttemptTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSendHealthStats:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;Z)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->sendMqttHealthStats(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;Z)V

    return-void
.end method

.method static synthetic access$1402(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mUseBackupPort:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;Lcom/facebook/rti/common/guavalite/base/Optional;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->onConnectionLost(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;Lcom/facebook/rti/common/guavalite/base/Optional;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->abortPreemptiveReconnectIfAny()V

    return-void
.end method

.method static synthetic access$1702(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;J)J
    .locals 1

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mLastConnectLostTime:J

    return-wide p1
.end method

.method static synthetic access$1802(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mLastConnectLostReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->sendHealthStatsAsPingResponse()V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->connectInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/credentials/MqttCredentials;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private static areTwoStringsTheSame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1775
    invoke-static {p0}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1776
    const/4 v0, 0x1

    .line 1780
    :goto_0
    return v0

    .line 1777
    :cond_0
    invoke-static {p0}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1778
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1780
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private calcExtraTimeoutForConnecting(Lcom/facebook/rti/mqtt/protocol/MqttClient;)I
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v2, 0x0

    .line 962
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 965
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getMqttSessionId()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 967
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getMqttSessionId()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 969
    :goto_0
    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    .line 970
    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v4

    iget v4, v4, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttConnectTimeoutSec:I

    int-to-long v4, v4

    mul-long/2addr v4, v8

    .line 972
    sub-long v0, v4, v0

    .line 974
    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    .line 980
    :goto_1
    div-long v0, v2, v8

    long-to-int v0, v0

    .line 981
    const-string v1, "FbnsConnectionManager"

    const-string v2, "connection/connecting; timeoutRemain=%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 984
    :goto_2
    return v0

    .line 976
    :cond_0
    cmp-long v2, v0, v4

    if-lez v2, :cond_2

    move-wide v2, v4

    .line 977
    goto :goto_1

    .line 984
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move-wide v2, v0

    goto :goto_1

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method private cancelKeepAliveSchedule()V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mKeepaliveManager:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->cancelRepeating()V

    .line 705
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPingUnreceivedAlarm:Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->cancelAlarm()V

    .line 706
    return-void
.end method

.method private connectInternal()V
    .locals 4

    .prologue
    .line 434
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    const-class v1, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    .line 435
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats$Metric;->CountConnectAttempt:Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats$Metric;

    .line 436
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;->get(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 437
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 438
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectAttemptTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 441
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttClientThreadPriorityUI:I

    .line 442
    const-string v1, "FbnsConnectionManager"

    const-string/jumbo v2, "thread/set_priority; priority=%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 446
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->updateKeepaliveInterval()V

    .line 449
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPreemptiveReconnectClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    if-eqz v0, :cond_1

    .line 450
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->usePreemptiveReconnectClient()Lcom/facebook/rti/mqtt/protocol/MqttClient;

    move-result-object v0

    .line 456
    :goto_0
    monitor-enter p0

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 458
    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 459
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    if-eqz v1, :cond_0

    .line 464
    const-string v0, "FbnsConnectionManager"

    const-string v2, "connecting new client without disconnecting old one"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->EXPIRE_CONNECTION:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    sget-object v2, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->DISCONNECTED:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->disconnectInternal(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;

    .line 469
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionTimeStampMs:J

    .line 472
    const-string v0, "FbnsConnectionManager"

    const-string v1, "connection/connecting"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mEventsCallbacks:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;->onConnectionConnecting()V

    .line 474
    return-void

    .line 452
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->createNewMqttClient()Lcom/facebook/rti/mqtt/protocol/MqttClient;

    move-result-object v0

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 1692
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1693
    const-string v1, "com.facebook.rti.mqtt.ACTION_MQTT_CONFIG_CHANGED"

    invoke-static {v0, v1}, Lcom/facebook/rti/common/guavalite/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1694
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->build()V

    .line 1695
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    .line 1696
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttLastUsedConfig:Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->needReconnect(Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;)Z

    move-result v1

    .line 1697
    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttLastUsedConfig:Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    .line 1699
    if-eqz v1, :cond_1

    .line 1700
    const-string v0, "FbnsConnectionManager"

    const-string v1, "connection/reconnect; reason=config_changed"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->KICK_CONFIG_CHANGED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->disconnect(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;)Ljava/util/concurrent/Future;

    .line 1702
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;->CONFIG_CHANGED:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->kickConnection(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V

    .line 1747
    :cond_0
    :goto_0
    return-void

    .line 1703
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1704
    const-string v0, "FbnsConnectionManager"

    const-string v1, "connection/kick; reason=config_changed"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;->CONFIG_CHANGED:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->kickConnection(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V

    goto :goto_0

    .line 1708
    :cond_2
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-static {v0, v1}, Lcom/facebook/rti/common/guavalite/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1710
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->PowerManager_isPowerSaveMode:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    .line 1711
    const-class v0, Landroid/os/PowerManager;

    const-string v1, "isPowerSaveMode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->PowerManager_isPowerSaveMode:Ljava/lang/reflect/Method;

    .line 1713
    :cond_3
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    const-string v1, "power"

    const-class v2, Landroid/os/PowerManager;

    .line 1714
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/SystemServiceManager;->ensureService(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 1715
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1716
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->PowerManager_isPowerSaveMode:Ljava/lang/reflect/Method;

    .line 1717
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1718
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttDeviceStateEventPowerSaveModeActivity(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1720
    :catch_0
    move-exception v0

    .line 1721
    const-string v1, "FbnsConnectionManager"

    const-string v2, "exception/NoSuchMethodException"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 1722
    :catch_1
    move-exception v0

    .line 1723
    const-string v1, "FbnsConnectionManager"

    const-string v2, "exception/IllegalAccessException"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 1724
    :catch_2
    move-exception v0

    .line 1725
    const-string v1, "FbnsConnectionManager"

    const-string v2, "exception/InvocationTargetException"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 1727
    :cond_4
    const-string v1, "com.facebook.orca.ACTION_NETWORK_CONNECTIVITY_CHANGED"

    invoke-static {v0, v1}, Lcom/facebook/rti/common/guavalite/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1728
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 1729
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getNetworkSessionId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 1730
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getConnectionNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1728
    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttConnectionEventNetworkChanged(JLandroid/net/NetworkInfo;)V

    .line 1732
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->isConnected()Z

    move-result v0

    .line 1733
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getNetworkInfoHash()J

    move-result-wide v2

    .line 1735
    const-string v1, "FbnsConnectionManager"

    const-string/jumbo v4, "receiver/network; becameConnected=%b"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1736
    iget-wide v4, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mLastNetworkInfoHash:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1737
    :cond_5
    iput-wide v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mLastNetworkInfoHash:J

    .line 1738
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mNetworkChangedTimeMs:J

    .line 1739
    if-eqz v0, :cond_6

    .line 1740
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;->CONNECTIVITY_CHANGED:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->kickConnection(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V

    goto/16 :goto_0

    .line 1742
    :cond_6
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->cancelKeepAliveSchedule()V

    .line 1743
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->NETWORK_LOST:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->disconnect(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;)Ljava/util/concurrent/Future;

    goto/16 :goto_0
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1221
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isConnectedOrConnecting(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z
    .locals 1

    .prologue
    .line 726
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needReconnect(Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;)Z
    .locals 2

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mHostNameIpv6:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mHostNameIpv6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPort:I

    iget v1, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPort:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackupPort:I

    iget v1, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackupPort:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mUseSsl:Z

    iget-boolean v1, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mUseSsl:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPhpOverrideEndpoint:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPhpOverrideEndpoint:Ljava/lang/String;

    .line 1771
    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->areTwoStringsTheSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onConnectionLost(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;Lcom/facebook/rti/common/guavalite/base/Optional;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    const-string v0, "FbnsConnectionManager"

    const-string v1, "connection/lost; reason=%s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    const-string v0, ""

    .line 350
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 351
    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getConnectInfoForUserReport()Ljava/lang/String;

    move-result-object v0

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mOperationManager:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    new-instance v2, Lcom/facebook/rti/mqtt/protocol/MqttException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection lost "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/facebook/rti/mqtt/protocol/MqttException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->abortPendingOperations(Ljava/lang/Throwable;)V

    .line 358
    sget-object v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$8;->$SwitchMap$com$facebook$rti$mqtt$manager$FbnsConnectionManager$DisconnectReason:[I

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 383
    const-string v0, "FbnsConnectionManager"

    const-string v1, "connection/lost/no_attempt; reason=%s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {p2}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_SOCKET_CONNECT_ERROR_SSL_CLOCK_SKEW:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    if-ne v0, v1, :cond_2

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mClockSkewDetected:Z

    .line 395
    :goto_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mEventsCallbacks:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    invoke-interface {v0, p2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;->onConnectionLost(Lcom/facebook/rti/common/guavalite/base/Optional;)V

    .line 396
    return-void

    .line 361
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->next()Z

    goto :goto_0

    .line 364
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;->CONNECTION_LOST:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->setConnectTriggerReason(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V

    .line 369
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mLastConnectionEstablishTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 370
    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mLastConnectionEstablishTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    .line 371
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v2

    iget v2, v2, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mShortMqttConnectionSec:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->setShouldBackoffMore()V

    .line 377
    :goto_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->next()Z

    goto :goto_0

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->clearShouldBackoffMore()V

    .line 375
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->stop()V

    goto :goto_2

    .line 392
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mClockSkewDetected:Z

    goto :goto_1

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private reconnectInternal(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;)V
    .locals 2

    .prologue
    .line 424
    const-string v0, "FbnsConnectionManager"

    const-string v1, "connection/reconnect"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->EXPIRE_CONNECTION:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->disconnectInternal(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;

    .line 428
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->connectInternal()V

    .line 429
    return-void
.end method

.method private sendHealthStatsAsPingResponse()V
    .locals 4

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSendHealthStats:Z

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 657
    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->isConnected(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getMqttSessionId()J

    move-result-wide v0

    .line 659
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    .line 660
    sub-long v0, v2, v0

    .line 661
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    .line 662
    invoke-virtual {v2, v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getLifecycleAndLatencyStats(J)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;

    move-result-object v0

    const/4 v1, 0x1

    .line 661
    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->sendMqttHealthStats(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;Z)V

    .line 665
    :cond_0
    return-void
.end method

.method private sendMqttHealthStats(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;Z)V
    .locals 3

    .prologue
    .line 595
    if-eqz p1, :cond_1

    .line 596
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->export()Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    const-string v0, "FbnsConnectionManager"

    const-string/jumbo v2, "send/health_stats; stats=%s"

    invoke-static {v0, v2, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
    :try_start_0
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    .line 603
    if-eqz p2, :cond_0

    .line 604
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->FIRE_AND_FORGET:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    .line 606
    :cond_0
    const-string v2, "/mqtt_health_stats"

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->publish(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;)I
    :try_end_0
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :cond_1
    :goto_0
    return-void

    .line 607
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendPing(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/rti/mqtt/protocol/MqttException;
        }
    .end annotation

    .prologue
    .line 620
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->isConnected(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mOperationManager:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    const-string v2, "callPing"

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PINGRESP:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    const/4 v4, -0x1

    .line 622
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->getResponseTimeout()I

    move-result v5

    move-object v1, p1

    .line 621
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->addPendingOperation(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;II)Lcom/facebook/rti/mqtt/manager/MqttOperation;

    .line 623
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->ping()V

    .line 625
    :cond_0
    return-void
.end method

.method private usePreemptiveReconnectClient()Lcom/facebook/rti/mqtt/protocol/MqttClient;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1225
    const-string v0, "FbnsConnectionManager"

    const-string v1, "Using preemptive client op %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPreemptiveReconnectTriggerOperationId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1226
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPreemptiveReconnectClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1227
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPreemptiveReconnectClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1228
    iput v4, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPreemptiveReconnectTriggerOperationId:I

    .line 1229
    return-object v0
.end method

.method private useServerPing()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mIsServerPingEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->isAppForegrounded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addPendingMessagesToCombine(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/protocol/MqttClient;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1579
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected completeOperationsSentWithConnect(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1582
    return-void
.end method

.method public connect(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V
    .locals 1
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->updateKeepaliveInterval()V

    .line 327
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->setConnectTriggerReason(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V

    .line 329
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->start()Ljava/util/concurrent/Future;

    .line 330
    return-void
.end method

.method protected createNewMqttClient()Lcom/facebook/rti/mqtt/protocol/MqttClient;
    .locals 4

    .prologue
    .line 478
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSubscribedTopics:Ljava/util/Map;

    monitor-enter v1

    .line 479
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSubscribedTopics:Ljava/util/Map;

    .line 480
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 481
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMessagePayloadEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    invoke-interface {v2, v0}, Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;->getConnectSubscribeTopics(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 482
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClientProvider:Lcom/facebook/rti/common/util/NonInjectTwoParamsProvider;

    invoke-interface {v1, v0}, Lcom/facebook/rti/common/util/NonInjectTwoParamsProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 485
    const-string v1, "FbnsConnectionManager"

    const-string v2, "connection/create_client; mqttClient=%s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    new-instance v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-boolean v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mIsFastSendEnabled:Z

    invoke-direct {v1, p0, v0, v2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;-><init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Lcom/facebook/rti/mqtt/protocol/MqttClient;Z)V

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->registerHandler(Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;)V

    .line 487
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->getFbnsExplicitDeliveryAckEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->setFbnsExplicitDeliveryAckEnabled(Z)V

    .line 488
    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->addPendingMessagesToCombine(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Ljava/util/List;

    move-result-object v2

    .line 489
    iget-boolean v3, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mUseBackupPort:Z

    .line 490
    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mUseBackupPort:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mUseBackupPort:Z

    .line 491
    invoke-virtual {v0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->connect(Ljava/util/List;Z)V

    .line 493
    return-object v0

    .line 482
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 490
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;)Ljava/util/concurrent/Future;
    .locals 2
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
    .line 339
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->stop()V

    .line 340
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->abortPreemptiveReconnectIfAny()V

    .line 341
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    sget-object v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->BY_REQUEST:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;

    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->disconnectInternal(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected disconnectInternal(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/protocol/MqttClient;",
            "Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;",
            "Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 502
    monitor-enter p0

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    if-ne v0, p1, :cond_2

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 508
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    const/4 v1, 0x0

    .line 510
    sget-object v0, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;->SUCCEEDED:Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;

    .line 511
    if-eqz p1, :cond_0

    .line 516
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isDisconnected()Z

    move-result v1

    .line 517
    invoke-virtual {p1, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->registerHandler(Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;)V

    .line 518
    invoke-virtual {p1, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->disconnect(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mDisconnectionTimeStampMs:J

    .line 522
    :cond_0
    if-nez v1, :cond_1

    .line 523
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->onConnectionLost(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;Lcom/facebook/rti/common/guavalite/base/Optional;)V

    .line 525
    :cond_1
    return-object v0

    .line 506
    :cond_2
    :try_start_1
    const-string v0, "FbnsConnectionManager"

    const-string v1, "Disconnecting old client after a new one already created"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1202
    const-string v0, "[ FbnsConnectionManager ]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keepAliveIntervalSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mKeepaliveInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1204
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getActiveNetworkInfoSafe()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1205
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1206
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1207
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mLastConnectLostReason:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastConnectLostTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mLastConnectLostTime:J

    invoke-direct {p0, v2, v3}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastConnectLostReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mLastConnectLostReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1212
    if-eqz v0, :cond_2

    .line 1213
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1217
    :goto_1
    return-void

    .line 1205
    :cond_1
    const-string v0, "null"

    goto :goto_0

    .line 1215
    :cond_2
    const-string v0, "mMqttClient=null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public ensureActiveKeepAlive(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 529
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mGcmPingMqttDelaySec:I

    .line 531
    if-gez v0, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 536
    if-eqz v1, :cond_0

    .line 542
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getLastActivityTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    int-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 544
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->sendKeepAliveInternal(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ensureKeepAliveScheduled()V
    .locals 1

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->useServerPing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPingUnreceivedAlarm:Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->ensureScheduled()V

    .line 685
    :goto_0
    return-void

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mKeepaliveManager:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->ensureScheduled()V

    goto :goto_0
.end method

.method public expireConnection(J)V
    .locals 5

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1058
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;->EXPIRE_CONNECTION:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->setConnectTriggerReason(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V

    .line 1059
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getMqttSessionId()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 1060
    sget-object v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->STALED_CONNECTION:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->reconnectInternal(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;)V

    .line 1064
    :goto_0
    return-void

    .line 1062
    :cond_0
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;->EXPIRE_CONNECTION:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->kick(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V

    goto :goto_0
.end method

.method public getConnectionTimeStampMs()J
    .locals 2

    .prologue
    .line 1045
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionTimeStampMs:J

    return-wide v0
.end method

.method public getCurSessionDuration()J
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 313
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getMqttSessionId()J

    move-result-wide v0

    .line 315
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 318
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentConnectionKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->getKeySecretPair()Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentConnectionState()Lcom/facebook/rti/mqtt/protocol/ConnectionState;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 714
    if-nez v0, :cond_0

    .line 715
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->DISCONNECTED:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    .line 717
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getCurrentConnectionState()Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    move-result-object v0

    goto :goto_0
.end method

.method public getFbnsExplicitDeliveryAckEnabled()Z
    .locals 1

    .prologue
    .line 1758
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mIsFbnsExplicitDeliveryAckEnabled:Z

    return v0
.end method

.method public getKeepAliveValue()I
    .locals 6

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mIsAppForegrounded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 1028
    if-eqz v1, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mKeepaliveParms:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;->getForegroundKeepaliveS()I

    move-result v0

    .line 1034
    :goto_0
    const-string v2, "FbnsConnectionManager"

    const-string/jumbo v3, "state/keepalive; seconds=%d, isPersistent=%b, isAppFg=%s"

    .line 1037
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    .line 1038
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1039
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1034
    invoke-static {v2, v3, v4, v5, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1041
    return v0

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mKeepaliveParms:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;->getBackgroundDefaultS()I

    move-result v0

    goto :goto_0
.end method

.method public getNetworkChangedTimeMs()J
    .locals 2

    .prologue
    .line 1750
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mNetworkChangedTimeMs:J

    return-wide v0
.end method

.method protected getResponseTimeout()I
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttResponseTimeout:I

    return v0
.end method

.method public getSubscribedTopicsString()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1196
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSubscribedTopics:Ljava/util/Map;

    monitor-enter v1

    .line 1197
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSubscribedTopics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 1198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public injectFbnsConnectionManager(Landroid/content/Context;Lcom/facebook/rti/common/util/SystemServiceManager;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectTwoParamsProvider;Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/manager/MqttOperationManager;Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;Landroid/os/Handler;Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/common/util/RtiWakeLockHelper;Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;Ljava/util/concurrent/Executor;Ljava/util/List;ZZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/rti/common/util/SystemServiceManager;",
            "Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;",
            "Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/common/util/NonInjectTwoParamsProvider",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;",
            "Lcom/facebook/rti/mqtt/protocol/MqttClient;",
            ">;",
            "Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;",
            "Lcom/facebook/rti/mqtt/credentials/MqttCredentials;",
            "Lcom/facebook/rti/mqtt/manager/MqttIdManager;",
            "Lcom/facebook/rti/mqtt/manager/MqttOperationManager;",
            "Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;",
            "Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;",
            "Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;",
            "Landroid/os/Handler;",
            "Lcom/facebook/rti/common/time/MonotonicClock;",
            "Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;",
            "Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;",
            "Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;",
            "Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;",
            "Lcom/facebook/rti/common/util/RtiWakeLockHelper;",
            "Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;",
            "Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;",
            "Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 268
    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    .line 269
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mContext:Landroid/content/Context;

    .line 270
    iput-object p3, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mEventsCallbacks:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    .line 271
    iput-object p4, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClientTopicSubscriptionCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    .line 272
    iput-object p5, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPackageName:Ljava/lang/String;

    .line 273
    iput-object p6, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClientProvider:Lcom/facebook/rti/common/util/NonInjectTwoParamsProvider;

    .line 274
    iput-object p7, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    .line 275
    iput-object p9, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    .line 276
    iput-object p8, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    .line 277
    iput-object p10, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mOperationManager:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    .line 278
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mKeepaliveManager:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    .line 279
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPingUnreceivedAlarm:Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;

    .line 280
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mKeepaliveInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 281
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    .line 282
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    .line 283
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHandler:Landroid/os/Handler;

    .line 284
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 285
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    .line 286
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mKeepaliveParms:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

    .line 287
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMessagePayloadEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    .line 288
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 289
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mRtiWakeLockHelper:Lcom/facebook/rti/common/util/RtiWakeLockHelper;

    .line 290
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mScreenPowerState:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    .line 291
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mZeroRatingConnectionConfigOverrides:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    .line 292
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mWorkConnectionConfigOverrides:Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;

    .line 293
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSubscriptionsExecutor:Ljava/util/concurrent/Executor;

    .line 294
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionRetryManager:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mReconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->registerRetryCallback(Ljava/lang/Runnable;)V

    .line 295
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mKeepaliveManager:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mKeepaliveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->registerCallback(Ljava/lang/Runnable;)V

    .line 296
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPingUnreceivedAlarm:Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPingUnreceivedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->registerCallback(Ljava/lang/Runnable;)V

    .line 297
    invoke-interface/range {p27 .. p27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    .line 298
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSubscribedTopics:Ljava/util/Map;

    iget-object v4, v1, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->build()V

    .line 301
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttLastUsedConfig:Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    .line 302
    move/from16 v0, p28

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSendHealthStats:Z

    .line 303
    move/from16 v0, p29

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mIsFastSendEnabled:Z

    .line 304
    move/from16 v0, p30

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mIsServerPingEnabled:Z

    .line 305
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttLastUsedConfig:Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    iget-boolean v1, v1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mForceServerPing:Z

    if-eqz v1, :cond_1

    .line 306
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mIsServerPingEnabled:Z

    .line 307
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mIsAppForegrounded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 309
    :cond_1
    return-void
.end method

.method public isAppForegrounded()Z
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mIsAppForegrounded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->isConnected(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v0

    return v0
.end method

.method public isConnected(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z
    .locals 1
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 735
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectedOrConnecting()Z
    .locals 1
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 722
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->isConnectedOrConnecting(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v0

    return v0
.end method

.method public kick(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V
    .locals 3
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mEventsCallbacks:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;->shouldBeConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    const-string v0, "FbnsConnectionManager"

    const-string v1, "connection/kick/disabled_by_service."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->KICK_SHOULD_NOT_CONNECT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->disconnect(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;)Ljava/util/concurrent/Future;

    .line 420
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 412
    if-nez v0, :cond_2

    .line 414
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->connectInternal()V

    .line 419
    :cond_1
    :goto_1
    const-string v1, "FbnsConnectionManager"

    const-string v2, "connection/kick; isConnectedOrConnecting=%s"

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->isConnectedOrConnecting(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 415
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 417
    sget-object v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->DISCONNECTED:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->reconnectInternal(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;)V

    goto :goto_1
.end method

.method public kickConnection(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V
    .locals 4

    .prologue
    .line 1585
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->ensureKeepAliveScheduled()V

    .line 1587
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mEventsCallbacks:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;->shouldBeConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1588
    const-string v0, "FbnsConnectionManager"

    const-string v1, "connection/should_not_connect"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->KICK_SHOULD_NOT_CONNECT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->disconnect(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;)Ljava/util/concurrent/Future;

    .line 1611
    :goto_0
    return-void

    .line 1593
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1594
    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->isConnected(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1595
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    invoke-interface {v1}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->getKeySecretPair()Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getLastAuthKeyUsed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1596
    const-string v0, "FbnsConnectionManager"

    const-string v1, "connection/reconnect_due_to_auth_change"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->AUTH_CREDENTIALS_CHANGE:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->disconnect(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;)Ljava/util/concurrent/Future;

    .line 1609
    :cond_1
    :goto_1
    const-string v0, "FbnsConnectionManager"

    const-string v1, "connection/kick_connect"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->connect(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V

    goto :goto_0

    .line 1598
    :cond_2
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mNetworkChangedTimeMs:J

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mLastConnectionEstablishTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 1599
    const-string v0, "FbnsConnectionManager"

    const-string v1, "connection/reconnect_due_to_network_change"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1601
    :cond_3
    const-string v0, "FbnsConnectionManager"

    const-string v1, "connection/already_connected"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1604
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1605
    const-string v0, "FbnsConnectionManager"

    const-string v1, "connection/already_connecting"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/rti/mqtt/protocol/MqttException;
        }
    .end annotation

    .prologue
    .line 806
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->toUTf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->publish(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;)I

    move-result v0

    return v0
.end method

.method public publish(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/rti/mqtt/protocol/MqttException;
        }
    .end annotation

    .prologue
    .line 849
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->publish(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;)I

    move-result v0

    return v0
.end method

.method public publish(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;)I
    .locals 9
    .param p4    # Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/rti/mqtt/protocol/MqttException;
        }
    .end annotation

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->getResponseTimeout()I

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 825
    invoke-virtual/range {v0 .. v8}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->publishInternal(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;IJLjava/lang/String;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 833
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 834
    const/4 v0, -0x1

    .line 837
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/manager/PublishOperation;

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/manager/PublishOperation;->getOperationId()I

    move-result v0

    goto :goto_0
.end method

.method protected publishInternal(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;IJLjava/lang/String;)Lcom/facebook/rti/common/guavalite/base/Optional;
    .locals 20
    .param p4    # Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;",
            "Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;",
            "IJ",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/manager/PublishOperation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/rti/mqtt/protocol/MqttException;
        }
    .end annotation

    .prologue
    .line 905
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->getValue()I

    move-result v2

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ASSURED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->getValue()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkArgument(Z)V

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 908
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_3

    .line 909
    :cond_0
    if-nez v3, :cond_2

    const-wide/16 v10, 0x0

    .line 910
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    const-string v3, "not_connected"

    .line 911
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->getValue()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    .line 910
    invoke-virtual/range {v2 .. v11}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttPublishFailureEvent(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Throwable;IJ)V

    .line 912
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v2

    .line 950
    :goto_2
    return-object v2

    .line 905
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 909
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getMqttSessionId()J

    move-result-wide v10

    goto :goto_1

    .line 915
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mRtiWakeLockHelper:Lcom/facebook/rti/common/util/RtiWakeLockHelper;

    invoke-virtual {v2}, Lcom/facebook/rti/common/util/RtiWakeLockHelper;->acquireNewWakeLock()Lcom/facebook/rti/common/util/RtiWakeLock;

    move-result-object v18

    .line 918
    :try_start_0
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getNextMessageId()I

    move-result v6

    .line 921
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->calcExtraTimeoutForConnecting(Lcom/facebook/rti/mqtt/protocol/MqttClient;)I

    move-result v2

    add-int v7, p5, v2

    .line 924
    sget-object v2, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_5

    .line 925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mOperationManager:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    sget-object v5, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-object/from16 v4, p1

    .line 926
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->addPendingOperation(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;II)Lcom/facebook/rti/mqtt/manager/MqttOperation;

    move-result-object v2

    :goto_3
    move-object v8, v3

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move v12, v6

    move-object/from16 v13, p4

    move-wide/from16 v14, p6

    move-object/from16 v16, p8

    move-object/from16 v17, v18

    .line 942
    invoke-virtual/range {v8 .. v17}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->publish(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;ILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;Lcom/facebook/rti/common/util/RtiWakeLock;)I

    .line 944
    const-string v4, "/mqtt_health_stats"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 945
    sget-object v4, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_4

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->rescheduleKeepAlive()V

    .line 950
    :cond_4
    invoke-static {v2}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v2

    goto :goto_2

    .line 929
    :cond_5
    new-instance v2, Lcom/facebook/rti/mqtt/manager/MqttOperation;

    sget-object v5, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 930
    invoke-interface {v4}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v7

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/rti/mqtt/manager/MqttOperation;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;IJ)V

    .line 931
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->complete()V

    .line 932
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    .line 934
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->getValue()I

    move-result v10

    const-wide/16 v12, 0x0

    .line 937
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->getOperationId()I

    move-result v14

    const/4 v15, 0x0

    .line 939
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getMqttSessionId()J

    move-result-wide v16

    move-object/from16 v9, p1

    move v11, v6

    .line 932
    invoke-virtual/range {v8 .. v17}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttPublishSuccessEvent(Ljava/lang/String;IIJIIJ)V
    :try_end_0
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 951
    :catch_0
    move-exception v2

    .line 952
    const-string v4, "FbnsConnectionManager"

    const-string v5, "exception/publish"

    invoke-static {v4, v2, v5}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 953
    sget-object v4, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->SEND_FAILURE:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    sget-object v5, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->CONNECTION_LOST:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->disconnectInternal(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;

    .line 955
    invoke-virtual/range {v18 .. v18}, Lcom/facebook/rti/common/util/RtiWakeLock;->release()V

    .line 956
    throw v2
.end method

.method public rescheduleKeepAlive()V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPingUnreceivedAlarm:Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->cancelAlarm()V

    .line 690
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->useServerPing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPingUnreceivedAlarm:Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->startAlarm()V

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mKeepaliveManager:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->startRepeating()V

    goto :goto_0
.end method

.method public sendKeepAlive()V
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->sendKeepAliveInternal(Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method protected sendKeepAliveInternal(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 554
    const-string v0, "FbnsConnectionManager"

    const-string/jumbo v1, "send/keepalive"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    .line 558
    iget-wide v4, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mLastPingTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    .line 559
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mSkipPingThresholdS:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    iput-wide v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mLastPingTime:J

    .line 563
    invoke-static {}, Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;->getInstance()Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;->setPingCaller(Ljava/lang/String;)V

    .line 564
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSendHealthStats:Z

    if-eqz v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mIsAppForegrounded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    const-class v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    .line 567
    invoke-virtual {v0, v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->ForegroundPing:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 568
    invoke-virtual {v0, v2}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;->get(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 569
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 577
    :goto_1
    invoke-virtual {p0, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->isConnected(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getMqttSessionId()J

    move-result-wide v2

    .line 579
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v4

    .line 580
    sub-long v2, v4, v2

    .line 581
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    .line 582
    invoke-virtual {v0, v2, v3}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getLifecycleAndLatencyStats(J)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;

    move-result-object v0

    const/4 v2, 0x0

    .line 581
    invoke-direct {p0, v0, v2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->sendMqttHealthStats(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;Z)V
    :try_end_0
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    const-string v2, "FbnsConnectionManager"

    const-string v3, "exception/send_keepalive"

    invoke-static {v2, v0, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 589
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->SEND_FAILURE:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    sget-object v2, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->CONNECTION_LOST:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->disconnectInternal(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 571
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    const-class v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    .line 572
    invoke-virtual {v0, v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->BackgroundPing:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 573
    invoke-virtual {v0, v2}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;->get(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 574
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_1

    .line 585
    :cond_3
    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->sendPing(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V
    :try_end_1
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected sendQueuedMessagesIfAny(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1576
    return-void
.end method

.method public setFbnsExplicitDeliveryAckEnabled(Z)V
    .locals 0

    .prologue
    .line 1754
    iput-boolean p1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mIsFbnsExplicitDeliveryAckEnabled:Z

    .line 1755
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1614
    new-instance v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$6;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$6;-><init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPowerSaveModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1631
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPowerSaveModeChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1637
    new-instance v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$7;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$7;-><init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConfigUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1649
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConfigUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.facebook.rti.mqtt.ACTION_MQTT_CONFIG_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1655
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttNetworkChangeListener:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->addListener(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;)V

    .line 1657
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mZeroRatingConnectionConfigOverrides:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;->register()V

    .line 1658
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mWorkConnectionConfigOverrides:Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;->register()V

    .line 1659
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1662
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->cancelKeepAliveSchedule()V

    .line 1663
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mScreenPowerState:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->unregister()V

    .line 1664
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttNetworkChangeListener:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->removeListener(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;)V

    .line 1666
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPowerSaveModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1669
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPowerSaveModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    :goto_0
    iput-object v3, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPowerSaveModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1676
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConfigUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1679
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConfigUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1684
    :goto_1
    iput-object v3, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mConfigUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1687
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mZeroRatingConnectionConfigOverrides:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;->unregister()V

    .line 1688
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mWorkConnectionConfigOverrides:Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;->unregister()V

    .line 1689
    return-void

    .line 1670
    :catch_0
    move-exception v0

    .line 1671
    const-string v1, "FbnsConnectionManager"

    const-string v2, "Failed to unregister broadcast receiver"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 1680
    :catch_1
    move-exception v0

    .line 1681
    const-string v1, "FbnsConnectionManager"

    const-string v2, "Failed to unregister broadcast receiver"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected subscribeInternal(Ljava/util/List;)Z
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1150
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v6

    .line 1168
    :goto_0
    return v0

    .line 1154
    :cond_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1155
    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->isConnectedOrConnecting(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1157
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getNextMessageId()I

    move-result v4

    .line 1158
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mOperationManager:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    const-string v2, "callSub"

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->SUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 1159
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->getResponseTimeout()I

    move-result v5

    .line 1158
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->addPendingOperation(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;II)Lcom/facebook/rti/mqtt/manager/MqttOperation;

    .line 1160
    invoke-virtual {v1, v4, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->subscribe(ILjava/util/List;)I
    :try_end_0
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    const/4 v0, 0x1

    goto :goto_0

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    const-string v2, "FbnsConnectionManager"

    const-string v3, "exception/subscribe"

    invoke-static {v2, v0, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1164
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->SEND_FAILURE:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    sget-object v2, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->CONNECTION_LOST:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->disconnectInternal(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;

    :cond_2
    move v0, v6

    .line 1168
    goto :goto_0
.end method

.method protected syncSubscriptionTopics(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1089
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSubscribedTopics:Ljava/util/Map;

    monitor-enter v1

    .line 1091
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->updateSubscribedTopics(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    .line 1092
    if-eqz v0, :cond_0

    .line 1093
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSubscriptionsExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$5;

    invoke-direct {v3, p0, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$5;-><init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Landroid/util/Pair;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1102
    :cond_0
    monitor-exit v1

    .line 1103
    return-void

    .line 1102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected unsubscribeInternal(Ljava/util/List;)Z
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1172
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v6

    .line 1192
    :goto_0
    return v0

    .line 1176
    :cond_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1177
    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->isConnectedOrConnecting(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    .line 1178
    goto :goto_0

    .line 1182
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getNextMessageId()I

    move-result v4

    .line 1183
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mOperationManager:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    const-string v2, "callUnSub"

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->UNSUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 1184
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->getResponseTimeout()I

    move-result v5

    .line 1183
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->addPendingOperation(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;II)Lcom/facebook/rti/mqtt/manager/MqttOperation;

    .line 1185
    invoke-virtual {v1, v4, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->unsubscribe(ILjava/util/List;)I
    :try_end_0
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    const/4 v0, 0x1

    goto :goto_0

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    const-string v2, "FbnsConnectionManager"

    const-string v3, "exception/unsubscribe"

    invoke-static {v2, v0, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1189
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->SEND_FAILURE:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    sget-object v2, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->CONNECTION_LOST:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->disconnectInternal(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;

    move v0, v6

    .line 1192
    goto :goto_0
.end method

.method protected updateKeepaliveInterval()V
    .locals 2

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->getKeepAliveValue()I

    move-result v0

    .line 1014
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mKeepaliveInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1016
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->rescheduleKeepAlive()V

    .line 1018
    :cond_0
    return-void
.end method

.method protected updateSubscribedTopics(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mSubscribedTopics"
    .end annotation

    .prologue
    .line 1126
    if-eqz p1, :cond_1

    .line 1127
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    .line 1128
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSubscribedTopics:Ljava/util/Map;

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1129
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSubscribedTopics:Ljava/util/Map;

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1133
    :cond_1
    if-eqz p2, :cond_3

    .line 1134
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    .line 1135
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSubscribedTopics:Ljava/util/Map;

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1136
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSubscribedTopics:Ljava/util/Map;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1141
    :cond_3
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1142
    if-eqz v0, :cond_4

    .line 1143
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mSubscribedTopics:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->updateSubscribedTopics(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v0

    .line 1146
    :goto_2
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method
