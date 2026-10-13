.class public Lcom/facebook/rti/mqtt/protocol/MqttClient;
.super Ljava/lang/Object;
.source "MqttClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final CLIENT_CAPABILITIES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;",
            ">;"
        }
    .end annotation
.end field

.field private static final mNextMessageId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final callCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile mCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;

.field private mConnectMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile mConnectStartTime:J

.field private volatile mConnectiontEstablishedTime:J

.field private final mDisableReplyToPingRequest:Z

.field private final mEstimateRadioActiveTimeHelper:Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mFbTraceLogger:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

.field private volatile mIsFbnsExplicitDeliveryAckEnabled:Z

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

.field private final mIsReportConnectSentStateEnabled:Z

.field private final mIsServerPingEnabled:Z

.field private volatile mLastActivityTime:J

.field private volatile mLastAuthKeyUsed:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mLastMessageReceivedTime:J

.field private volatile mLastMessageSentTime:J

.field private volatile mLastPingTime:J

.field private final mLoggerUserId:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

.field private final mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

.field private final mMqttClientCore:Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

.field private final mMqttClientCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

.field private final mMqttClientTopicSubscriptionCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

.field private final mMqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

.field private final mMqttDiagnosticNotification:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

.field private final mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

.field private final mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

.field private final mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

.field private final mMqttRequestRoutingRegionProvider:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mMqttSessionId:J

.field private volatile mNetworkInfo:Landroid/net/NetworkInfo;

.field private volatile mNetworkType:Ljava/lang/String;

.field private mPort:I

.field private final mRefCode:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRtiWakeLockHelper:Lcom/facebook/rti/common/util/RtiWakeLockHelper;

.field private volatile mState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

.field private final mStatsCallback:Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;

.field private final mSubscribedTopics:Ljava/util/Map;
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

.field private final mUseConnectHash:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 104
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    const/4 v2, 0x0

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->PROCESSING_LASTACTIVE_PRESENCEINFO:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    aput-object v3, v1, v2

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->EXACT_KEEPALIVE:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->DELTA_SENT_MESSAGE_ENABLED:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->USE_THRIFT_FOR_INBOX:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->USE_ENUM_TOPIC:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    aput-object v3, v1, v2

    .line 105
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->CLIENT_CAPABILITIES:Ljava/util/EnumSet;

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mNextMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/common/util/RtiWakeLockHelper;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;Lcom/facebook/rti/mqtt/protocol/MqttParameters;Lcom/facebook/rti/common/time/MonotonicClock;Ljava/util/concurrent/ExecutorService;Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;Lcom/facebook/rti/common/fbtrace/FbTraceLogger;Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;Lcom/facebook/rti/mqtt/protocol/MqttClientCore;Lcom/facebook/rti/common/util/NonInjectProvider;Ljava/util/concurrent/atomic/AtomicReference;Lcom/facebook/rti/common/util/NonInjectProvider;ZZZLjava/lang/Long;)V
    .locals 5
    .param p15    # Ljava/util/concurrent/atomic/AtomicReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;",
            "Lcom/facebook/rti/common/util/RtiWakeLockHelper;",
            "Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;",
            "Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;",
            "Lcom/facebook/rti/mqtt/protocol/MqttParameters;",
            "Lcom/facebook/rti/common/time/MonotonicClock;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;",
            "Lcom/facebook/rti/common/fbtrace/FbTraceLogger;",
            "Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;",
            "Lcom/facebook/rti/mqtt/credentials/MqttCredentials;",
            "Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;",
            "Lcom/facebook/rti/mqtt/protocol/MqttClientCore;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;ZZZ",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mConnectiontEstablishedTime:J

    .line 144
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastPingTime:J

    .line 147
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastMessageSentTime:J

    .line 150
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastMessageReceivedTime:J

    .line 156
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastActivityTime:J

    .line 158
    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->DISCONNECTED:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    iput-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    .line 160
    const-string v2, "none"

    iput-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mNetworkType:Ljava/lang/String;

    .line 173
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mSubscribedTopics:Ljava/util/Map;

    .line 176
    new-instance v2, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;

    invoke-direct {v2, p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V

    iput-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mStatsCallback:Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;

    .line 249
    new-instance v2, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;

    invoke-direct {v2, p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V

    iput-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    .line 683
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->callCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 490
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 491
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mRtiWakeLockHelper:Lcom/facebook/rti/common/util/RtiWakeLockHelper;

    .line 492
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    .line 493
    iput-object p4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    .line 494
    iput-object p5, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 495
    iput-object p6, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 496
    iput-object p7, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 497
    iput-object p8, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttDiagnosticNotification:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    .line 498
    iput-object p9, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mFbTraceLogger:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    .line 499
    iput-object p10, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientTopicSubscriptionCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    .line 500
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientTopicSubscriptionCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    invoke-interface {v2}, Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;->resetAll()V

    .line 501
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    .line 502
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mEstimateRadioActiveTimeHelper:Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;

    .line 503
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientCore:Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

    .line 504
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttRequestRoutingRegionProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 505
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mRefCode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 506
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mStatsCallback:Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;

    move-object/from16 v0, p13

    invoke-interface {v0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClientCore;->setCallbacks(Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;)V

    .line 507
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    invoke-interface {v2}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->getConnectPayloadHash()Ljava/lang/String;

    move-result-object v2

    .line 512
    const-string v3, ""

    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    .line 513
    invoke-interface {v4}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->getClientType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 514
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getConnectPayloadHash()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 515
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getConnectPayloadHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mUseConnectHash:Z

    .line 516
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mIsMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 517
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mIsServerPingEnabled:Z

    .line 518
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mIsReportConnectSentStateEnabled:Z

    .line 519
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mDisableReplyToPingRequest:Z

    .line 520
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLoggerUserId:Ljava/lang/Long;

    .line 521
    return-void

    .line 515
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->acknowledgePing()V

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/rti/mqtt/protocol/MqttClient;)J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastMessageReceivedTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/facebook/rti/mqtt/protocol/MqttClient;J)J
    .locals 1

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastMessageReceivedTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)Lcom/facebook/rti/common/guavalite/base/Optional;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getMessageTopicNameForAnalytics(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttDiagnosticNotification:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/facebook/rti/mqtt/protocol/MqttClient;J)J
    .locals 1

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastActivityTime:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->disconnectInternal(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/ConnectionState;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/protocol/ConnectionState;)Lcom/facebook/rti/mqtt/protocol/ConnectionState;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttParameters;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mUseConnectHash:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/credentials/MqttCredentials;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/facebook/rti/mqtt/protocol/MqttClient;J)J
    .locals 1

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mConnectiontEstablishedTime:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/facebook/rti/mqtt/protocol/MqttClient;)J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mConnectStartTime:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/facebook/rti/mqtt/protocol/MqttClient;)J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttSessionId:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isMqttForegrounded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/facebook/rti/mqtt/protocol/MqttClient;)J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastMessageSentTime:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/facebook/rti/mqtt/protocol/MqttClient;J)J
    .locals 1

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastMessageSentTime:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mRefCode:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mEstimateRadioActiveTimeHelper:Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->encodeRefCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->wakeUpAllThread()V

    return-void
.end method

.method static synthetic access$3200(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->subscribeInternal(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->unsubscribeInternal(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;[BIILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct/range {p0 .. p8}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->publishInternal(Ljava/lang/String;[BIILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->pingInternal()V

    return-void
.end method

.method static synthetic access$3600(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mDisableReplyToPingRequest:Z

    return v0
.end method

.method static synthetic access$400(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/common/util/RtiWakeLockHelper;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mRtiWakeLockHelper:Lcom/facebook/rti/common/util/RtiWakeLockHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/common/time/MonotonicClock;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientCore;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientCore:Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/common/fbtrace/FbTraceLogger;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mFbTraceLogger:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientTopicSubscriptionCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/rti/mqtt/protocol/MqttClient;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->acknowledgePublication(ILjava/lang/Object;)V

    return-void
.end method

.method private acknowledgePing()V
    .locals 2

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$10;

    invoke-direct {v1, p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient$10;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1103
    return-void
.end method

.method private acknowledgePublication(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClient$9;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1083
    return-void
.end method

.method private disconnectInternal(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V
    .locals 16
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 854
    const-string v2, "MqttClient"

    const-string v3, "connection/disconnecting; reason=%s, operation=%s"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 857
    monitor-enter p0

    .line 858
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 859
    monitor-exit p0

    .line 903
    :goto_0
    return-void

    .line 861
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientCore:Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

    invoke-interface {v2}, Lcom/facebook/rti/mqtt/protocol/MqttClientCore;->cleanUpStates()V

    .line 863
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    const-class v4, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    .line 867
    invoke-virtual {v2, v4}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v2

    check-cast v2, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    sget-object v4, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats$Metric;->LastDisconnectReason:Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats$Metric;

    .line 868
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->markDisconnect()V

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    const-class v4, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    .line 871
    invoke-virtual {v2, v4}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v2

    check-cast v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    sget-object v4, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->MqttTotalDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 872
    invoke-virtual {v2, v4}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;->get(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 873
    invoke-interface {v4}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getMqttSessionId()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 875
    if-eqz v3, :cond_3

    .line 876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/rti/mqtt/protocol/Operation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->connectionLost(Ljava/lang/String;)V

    .line 878
    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_FAILURE_UNCLASSIFIED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_FAILURE_UNCLASSIFIED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 880
    :cond_1
    const-string v2, "Mqtt Unknown Exception"

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v3, v2, v4, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->errorReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 882
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientTopicSubscriptionCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;->onMqttDisconnected(Ljava/lang/String;)V

    .line 885
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mConnectiontEstablishedTime:J

    .line 886
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getRelativeTimeMs(J)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastPingTime:J

    .line 887
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getRelativeTimeMs(J)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastMessageSentTime:J

    .line 888
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getRelativeTimeMs(J)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastMessageReceivedTime:J

    .line 889
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getRelativeTimeMs(J)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v6

    .line 890
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v7

    .line 891
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/rti/mqtt/protocol/Operation;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v8

    .line 892
    invoke-static/range {p3 .. p3}, Lcom/facebook/rti/common/guavalite/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttSessionId:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 894
    invoke-virtual {v12}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getNetworkSessionId()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 896
    invoke-direct/range {p0 .. p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isMqttForegrounded()Z

    move-result v15

    .line 885
    invoke-virtual/range {v2 .. v15}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttConnectionEventConnectionLost(Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;JJLandroid/net/NetworkInfo;Z)V

    .line 898
    const-wide v2, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mConnectiontEstablishedTime:J

    .line 899
    const-wide v2, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastPingTime:J

    .line 900
    const-wide v2, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastMessageSentTime:J

    .line 901
    const-wide v2, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastMessageReceivedTime:J

    .line 902
    const-wide v2, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastActivityTime:J

    goto/16 :goto_0

    .line 863
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private declared-synchronized disconnectWithOperation(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)Ljava/util/concurrent/Future;
    .locals 2
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;",
            "Lcom/facebook/rti/mqtt/protocol/Operation;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 840
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/protocol/MqttClient$8;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 849
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;->SUCCEEDED:Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 840
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private encodeRefCode(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1181
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1195
    :goto_0
    return-object v0

    .line 1186
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1190
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getMqttAuthenticationKeySecretPair()Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v1, v0

    .line 1192
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    const/16 v4, 0xa

    if-ge v0, v4, :cond_1

    .line 1193
    shl-int/lit8 v1, v1, 0x1

    aget-byte v4, v3, v0

    add-int/2addr v1, v4

    .line 1192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1187
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1188
    goto :goto_0

    .line 1195
    :cond_1
    mul-int v0, v2, v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttSessionId:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1170
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getRelativeTimeMs(J)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 1171
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 1173
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1175
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "N/A"

    goto :goto_0
.end method

.method private getClientCapabilities()J
    .locals 5

    .prologue
    .line 1110
    const-wide/16 v0, 0x0

    .line 1111
    sget-object v2, Lcom/facebook/rti/mqtt/protocol/MqttClient;->CLIENT_CAPABILITIES:Ljava/util/EnumSet;

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    .line 1112
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->getMask()J

    move-result-wide v0

    or-long/2addr v0, v2

    move-wide v2, v0

    .line 1113
    goto :goto_0

    .line 1115
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mIsServerPingEnabled:Z

    if-eqz v0, :cond_1

    .line 1116
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->USE_SEND_PINGRESP:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->getMask()J

    move-result-wide v0

    or-long/2addr v2, v0

    .line 1119
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->enableFizz()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1120
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->REQUIRE_REPLAY_PROTECTION:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->getMask()J

    move-result-wide v0

    or-long/2addr v2, v0

    .line 1123
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getFbnsExplicitDeliveryAckEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1124
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->FBNS_EXPLICIT_DELIVERY_ACK:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->getMask()J

    move-result-wide v0

    or-long/2addr v2, v0

    .line 1127
    :cond_3
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->isEnableLargePayloadSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1128
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->IS_LARGE_PAYLOAD_SUPPORTED:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->getMask()J

    move-result-wide v0

    or-long/2addr v2, v0

    .line 1131
    :cond_4
    return-wide v2
.end method

.method private getMessageTopicNameForAnalytics(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)Lcom/facebook/rti/common/guavalite/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;",
            ")",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1151
    if-eqz p1, :cond_0

    .line 1152
    instance-of v0, p1, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    if-eqz v0, :cond_0

    .line 1153
    check-cast p1, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->mTopicName:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 1156
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    goto :goto_0
.end method

.method private static getNetworkTypeInfo(Lcom/facebook/rti/common/util/NetworkCategory$Type;)Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1217
    if-nez p0, :cond_0

    .line 1218
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1235
    :goto_0
    return-object v0

    .line 1220
    :cond_0
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$11;->$SwitchMap$com$facebook$rti$common$util$NetworkCategory$Type:[I

    invoke-virtual {p0}, Lcom/facebook/rti/common/util/NetworkCategory$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1225
    :pswitch_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1227
    :pswitch_1
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1229
    :pswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1231
    :pswitch_3
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1233
    :pswitch_4
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getRelativeTimeMs(J)Lcom/facebook/rti/common/guavalite/base/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 906
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 907
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 908
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 912
    :goto_0
    return-object v0

    .line 911
    :cond_0
    sub-long/2addr v0, p1

    .line 912
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    goto :goto_0
.end method

.method private isMqttForegrounded()Z
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mIsMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mIsMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    invoke-interface {v0}, Lcom/facebook/rti/common/util/NonInjectProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private pingInternal()V
    .locals 3

    .prologue
    .line 1018
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1019
    const-string v0, "MqttClient"

    const-string/jumbo v1, "send/ping/not_connected"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientCore:Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientCore;->sendPingReqMessage()V

    .line 1023
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;

    .line 1024
    if-eqz v0, :cond_1

    .line 1025
    invoke-interface {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->pingSent()V

    .line 1027
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastPingTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    const-string v1, "MqttClient"

    const-string v2, "exception/ping"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1030
    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->getFromWriteException(Ljava/lang/Throwable;)Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    move-result-object v1

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/Operation;->PING:Lcom/facebook/rti/mqtt/protocol/Operation;

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->disconnectInternal(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private publishInternal(Ljava/lang/String;[BIILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;)V
    .locals 10
    .param p5    # Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 959
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mFbTraceLogger:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    invoke-interface {v2, p1, p2}, Lcom/facebook/rti/common/fbtrace/FbTraceLogger;->logPublishSend(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object v4

    .line 961
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->waitWhileConnecting()V

    .line 962
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 963
    if-eqz p5, :cond_0

    .line 964
    invoke-interface {p5}, Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;->onFailure()V

    .line 966
    :cond_0
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mFbTraceLogger:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    const/4 v3, 0x0

    const-string v5, "not_connected"

    invoke-interface {v2, v4, v3, v5}, Lcom/facebook/rti/common/fbtrace/FbTraceLogger;->logResponseSend(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 1013
    :goto_0
    return-void

    .line 970
    :cond_1
    const-string v2, "/t_sm"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mRefCode:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v2, :cond_8

    .line 971
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mRefCode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 972
    if-eqz v2, :cond_7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 973
    :goto_1
    if-nez v2, :cond_2

    if-nez p8, :cond_3

    :cond_2
    if-eqz v2, :cond_8

    .line 974
    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 975
    :cond_3
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;

    .line 976
    if-eqz v2, :cond_4

    .line 977
    new-instance v3, Lcom/facebook/rti/mqtt/protocol/MqttException;

    sget-object v5, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->REF_CODE_EXPIRED:Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    invoke-direct {v3, v5}, Lcom/facebook/rti/mqtt/protocol/MqttException;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;)V

    invoke-interface {v2, p4, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->onPublishFailed(ILjava/lang/Throwable;)V

    .line 980
    :cond_4
    if-eqz p5, :cond_5

    .line 981
    invoke-interface {p5}, Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;->onFailure()V

    .line 983
    :cond_5
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mFbTraceLogger:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    const/4 v3, 0x0

    const-string/jumbo v5, "ref_code_expired"

    invoke-interface {v2, v4, v3, v5}, Lcom/facebook/rti/common/fbtrace/FbTraceLogger;->logResponseSend(Ljava/lang/Object;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1005
    :catch_0
    move-exception v2

    .line 1006
    const-string v3, "MqttClient"

    const-string v5, "exception/publish"

    invoke-static {v3, v2, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1007
    invoke-static {v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->getFromWriteException(Ljava/lang/Throwable;)Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    move-result-object v3

    sget-object v5, Lcom/facebook/rti/mqtt/protocol/Operation;->PUBLISH:Lcom/facebook/rti/mqtt/protocol/Operation;

    invoke-direct {p0, v3, v5, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->disconnectInternal(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V

    .line 1008
    if-eqz p5, :cond_6

    .line 1009
    invoke-interface {p5}, Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;->onFailure()V

    .line 1011
    :cond_6
    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mFbTraceLogger:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "publish_exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v8, v2}, Lcom/facebook/rti/common/fbtrace/FbTraceLogger;->logResponseSend(Ljava/lang/Object;ZLjava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v2, v3

    .line 972
    goto :goto_1

    .line 988
    :cond_8
    :try_start_1
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientCore:Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/facebook/rti/mqtt/protocol/MqttClientCore;->sendPublishMessage(Ljava/lang/String;[BII)V

    .line 990
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-lez v2, :cond_9

    .line 991
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    const-class v3, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;

    .line 992
    invoke-virtual {v2, v3}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v2

    check-cast v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;

    sget-object v3, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency$Metric;->StackSendingLatencyMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency$Metric;

    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 994
    invoke-interface {v5}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v6

    sub-long v6, v6, p6

    .line 993
    invoke-virtual {v2, v3, v6, v7}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;->incrementCounterWithDecay(Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency$Metric;J)V

    .line 996
    :cond_9
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;

    .line 997
    if-eqz v2, :cond_a

    .line 998
    sget-object v3, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBLISH:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p4}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->messageSent(Ljava/lang/String;I)V

    .line 1001
    :cond_a
    if-eqz p5, :cond_b

    .line 1002
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    invoke-interface {p5, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;->onSuccess(J)V

    .line 1004
    :cond_b
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mFbTraceLogger:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v4, v3, v5}, Lcom/facebook/rti/common/fbtrace/FbTraceLogger;->logResponseSend(Ljava/lang/Object;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private subscribeInternal(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 917
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->waitWhileConnecting()V

    .line 918
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientCore:Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

    invoke-interface {v0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClientCore;->sendSubscribeMessage(Ljava/util/List;I)V

    .line 922
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientTopicSubscriptionCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    invoke-interface {v0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;->onTopicsSubscribeSent(Ljava/util/List;I)V

    .line 923
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;

    .line 924
    if-eqz v0, :cond_0

    .line 925
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->SUBSCRIBE:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->messageSent(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 927
    :catch_0
    move-exception v0

    .line 928
    const-string v1, "MqttClient"

    const-string v2, "exception/subscribe"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 929
    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->getFromWriteException(Ljava/lang/Throwable;)Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    move-result-object v1

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/Operation;->SUBSCRIBE:Lcom/facebook/rti/mqtt/protocol/Operation;

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->disconnectInternal(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private unsubscribeInternal(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 935
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->waitWhileConnecting()V

    .line 936
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientCore:Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

    invoke-static {p1}, Lcom/facebook/rti/mqtt/protocol/messages/TopicUtil;->getTopicNames(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClientCore;->sendUnsubscribeMessage(Ljava/util/List;I)V

    .line 940
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientTopicSubscriptionCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    invoke-interface {v0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;->onTopicsUnSubscribeSent(Ljava/util/List;I)V

    .line 941
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;

    .line 942
    if-eqz v0, :cond_0

    .line 943
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->UNSUBSCRIBE:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->messageSent(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 945
    :catch_0
    move-exception v0

    .line 946
    const-string v1, "MqttClient"

    const-string v2, "exception/unsubscribe"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 947
    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->getFromWriteException(Ljava/lang/Throwable;)Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    move-result-object v1

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/Operation;->UNSUBSCRIBE:Lcom/facebook/rti/mqtt/protocol/Operation;

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->disconnectInternal(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private waitWhileConnecting()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getConnectTimeoutMs()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->waitWhileConnecting(J)V

    .line 1036
    return-void
.end method

.method private declared-synchronized wakeUpAllThread()V
    .locals 1

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized connect(Ljava/util/List;Z)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastActivityTime:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mConnectStartTime:J

    .line 534
    invoke-static/range {p1 .. p1}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mConnectMessages:Ljava/util/List;

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getKeepaliveSeconds()I

    move-result v25

    .line 537
    const-string v2, "MqttClient"

    const-string/jumbo v3, "send/connect; keepaliveSec=%d"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 539
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mSubscribedTopics:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 541
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getTopics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    .line 542
    iget-object v5, v2, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mSubscribedTopics:Ljava/util/Map;

    iget-object v6, v2, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 545
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 533
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 545
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 549
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mUseConnectHash:Z

    if-eqz v2, :cond_1

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getUserAgent()Lcom/facebook/rti/common/util/UserAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/rti/common/util/UserAgent;->getShortUserAgentString()Ljava/lang/String;

    move-result-object v4

    .line 551
    const/4 v11, 0x0

    .line 557
    :goto_1
    const/4 v3, 0x0

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttRequestRoutingRegionProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    invoke-interface {v2}, Lcom/facebook/rti/common/util/NonInjectProvider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 559
    if-eqz v2, :cond_8

    .line 560
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 561
    const-string v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 566
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getConnectionNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getConnectionNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mNetworkType:Ljava/lang/String;

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttSessionId:J

    .line 570
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    .line 572
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getMqttAuthenticationKeySecretPair()Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastAuthKeyUsed:Ljava/lang/String;

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastAuthKeyUsed:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v3

    .line 578
    :goto_3
    :try_start_6
    new-instance v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    .line 582
    invoke-direct/range {p0 .. p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getClientCapabilities()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttSessionId:J

    .line 583
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 584
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 585
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 586
    invoke-virtual {v9}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->isChatOn()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x1

    .line 587
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 589
    invoke-virtual {v12}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getMqttDeviceSecret()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 590
    invoke-virtual {v13}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->isAppInitialForeground()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 591
    invoke-virtual {v14}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getEndpointCapability()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 592
    invoke-virtual {v15}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getPublishCompression()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    move-object/from16 v16, v0

    .line 593
    invoke-interface/range {v16 .. v16}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->getClientType()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    move-object/from16 v17, v0

    .line 594
    invoke-virtual/range {v17 .. v17}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getAppId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mUseConnectHash:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    move-object/from16 v19, v0

    .line 596
    invoke-virtual/range {v19 .. v19}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getConnectPayloadHash()Ljava/lang/String;

    move-result-object v19

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientCore:Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

    move-object/from16 v21, v0

    .line 598
    invoke-interface/range {v21 .. v21}, Lcom/facebook/rti/mqtt/protocol/MqttClientCore;->getClientStack()B

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    move-object/from16 v22, v0

    .line 599
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getAppSpecificInfo()Ljava/util/Map;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLoggerUserId:Ljava/lang/Long;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    move-object/from16 v24, v0

    .line 601
    invoke-virtual/range {v24 .. v24}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getNetworkCategory()Lcom/facebook/rti/common/util/NetworkCategory$Type;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getNetworkTypeInfo(Lcom/facebook/rti/common/util/NetworkCategory$Type;)Ljava/lang/Integer;

    move-result-object v24

    invoke-direct/range {v2 .. v24}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Byte;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 603
    const-string v3, "MqttClient"

    const-string v4, "connection/connecting; username=%s"

    invoke-static {v3, v4, v2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 606
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getMqttDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 607
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 609
    :goto_7
    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 610
    new-instance v6, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mUseConnectHash:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    .line 616
    :goto_8
    move-object/from16 v0, p1

    invoke-direct {v6, v4, v2, v3, v0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;-><init>(Ljava/lang/String;Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;Ljava/lang/String;Ljava/util/List;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getPhpOverrider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->setPhpOverrider(Ljava/lang/String;)V

    .line 619
    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->CONNECTING:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->markConnectStart()V

    .line 621
    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getBackupPort()I

    move-result v2

    :goto_9
    move-object/from16 v0, p0

    iput v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mPort:I

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientCore:Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 623
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getHostName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mPort:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mUseConnectHash:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 628
    invoke-virtual {v7}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->useSsl()Z

    move-result v8

    move/from16 v7, v25

    .line 622
    invoke-interface/range {v2 .. v8}, Lcom/facebook/rti/mqtt/protocol/MqttClientCore;->connect(Ljava/lang/String;IZLcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;IZ)V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientTopicSubscriptionCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getTopics()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;->onTopicsSubscribeSent(Ljava/util/List;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 630
    monitor-exit p0

    return-void

    .line 553
    :cond_1
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getUserAgent()Lcom/facebook/rti/common/util/UserAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/rti/common/util/UserAgent;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getMqttDeviceId()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 584
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 585
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 596
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 607
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 608
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getMqttDeviceId()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 610
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 616
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getMqttAuthenticationKeySecretPair()Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->getSecret()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    .line 621
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getPort()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v2

    goto :goto_9

    .line 574
    :catch_0
    move-exception v2

    goto/16 :goto_3

    :cond_8
    move-object/from16 v20, v3

    goto/16 :goto_2
.end method

.method public declared-synchronized disconnect(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;)Ljava/util/concurrent/Future;
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
    .line 829
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/Operation;->DISCONNECT:Lcom/facebook/rti/mqtt/protocol/Operation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->disconnectWithOperation(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectOnTimeout(Ljava/lang/Exception;Lcom/facebook/rti/mqtt/protocol/Operation;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Lcom/facebook/rti/mqtt/protocol/Operation;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 833
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->OPERATION_TIMEOUT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    invoke-direct {p0, v0, p2, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->disconnectWithOperation(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1160
    monitor-enter p0

    :try_start_0
    const-string v0, "[ MqttClient ]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastMessageSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastMessageSentTime:J

    invoke-direct {p0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastMessageReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastMessageReceivedTime:J

    invoke-direct {p0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectionEstablished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mConnectiontEstablishedTime:J

    invoke-direct {p0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastPing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastPingTime:J

    invoke-direct {p0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientCore:Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

    invoke-interface {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClientCore;->getRemoteSocketAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    monitor-exit p0

    return-void

    .line 1160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAndResetConnectMessages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 686
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mConnectMessages:Ljava/util/List;

    .line 688
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->callCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 689
    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 690
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;

    const-string v2, "Mqtt Unknown Exception"

    const-string v3, "getAndResetConnectMessage being called twice"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v1, v2, v3, v4}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->errorReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 698
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mConnectMessages:Ljava/util/List;

    .line 700
    if-nez v0, :cond_1

    .line 701
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 703
    :cond_1
    monitor-exit p0

    return-object v0

    .line 694
    :cond_2
    if-nez v0, :cond_0

    .line 695
    :try_start_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;

    const-string v2, "Mqtt Unknown Exception"

    const-string v3, "connectMessage is null"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v1, v2, v3, v4}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->errorReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnectInfoForUserReport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttClientCore:Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientCore;->getConnectInfoForUserReport()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentConnectionState()Lcom/facebook/rti/mqtt/protocol/ConnectionState;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    return-object v0
.end method

.method public getFbnsExplicitDeliveryAckEnabled()Z
    .locals 1

    .prologue
    .line 1207
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mIsFbnsExplicitDeliveryAckEnabled:Z

    return v0
.end method

.method public declared-synchronized getLastActivityTime()J
    .locals 2

    .prologue
    .line 672
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastActivityTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLastAuthKeyUsed()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mLastAuthKeyUsed:Ljava/lang/String;

    return-object v0
.end method

.method public getMqttSessionId()J
    .locals 2

    .prologue
    .line 680
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttSessionId:J

    return-wide v0
.end method

.method public getNextMessageId()I
    .locals 2

    .prologue
    .line 1106
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mNextMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->CONNECTED:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectedOrConnecting()Z
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    .line 642
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->CONNECTED:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->CONNECTING:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->CONNECT_SENT:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    .line 649
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->CONNECTING:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->CONNECT_SENT:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisconnected()Z
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->DISCONNECTED:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized ping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/rti/mqtt/protocol/MqttException;
        }
    .end annotation

    .prologue
    .line 814
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttException;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->NOT_CONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttException;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 818
    :cond_0
    :try_start_1
    const-string v0, "MqttClient"

    const-string/jumbo v1, "send/ping"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$7;

    invoke-direct {v1, p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient$7;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 826
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized publish(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;ILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;Lcom/facebook/rti/common/util/RtiWakeLock;)I
    .locals 12
    .param p5    # Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/rti/mqtt/protocol/MqttException;
        }
    .end annotation

    .prologue
    .line 794
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttException;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->NOT_CONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttException;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 798
    :cond_0
    :try_start_1
    const-string v0, "MqttClient"

    const-string/jumbo v1, "send/publish; topic=%s, qos=%d, id=%d"

    invoke-virtual {p3}, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 799
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;ILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;Lcom/facebook/rti/common/util/RtiWakeLock;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 809
    monitor-exit p0

    return p4
.end method

.method public registerHandler(Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;)V
    .locals 0
    .param p1    # Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 633
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;

    .line 634
    return-void
.end method

.method public setFbnsExplicitDeliveryAckEnabled(Z)V
    .locals 0

    .prologue
    .line 1203
    iput-boolean p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mIsFbnsExplicitDeliveryAckEnabled:Z

    .line 1204
    return-void
.end method

.method public stopConnectingIfConnectNotSent()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$3;

    invoke-direct {v1, p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient$3;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 669
    return-void
.end method

.method public declared-synchronized subscribe(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/rti/mqtt/protocol/MqttException;
        }
    .end annotation

    .prologue
    .line 754
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttException;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->NOT_CONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttException;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 757
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 764
    monitor-exit p0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1137
    const-string v1, "[MqttClient ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1141
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->useSsl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1142
    const-string v1, " +ssl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    :cond_0
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mState:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1146
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized unsubscribe(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/rti/mqtt/protocol/MqttException;
        }
    .end annotation

    .prologue
    .line 769
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttException;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->NOT_CONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttException;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 773
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient$5;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    monitor-exit p0

    return p1
.end method

.method public updateSubscribedTopics(Ljava/util/Map;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
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

    .prologue
    const/4 v3, 0x0

    .line 717
    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mSubscribedTopics:Ljava/util/Map;

    monitor-enter v4

    .line 718
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    .line 719
    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mSubscribedTopics:Ljava/util/Map;

    iget-object v6, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 720
    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mSubscribedTopics:Ljava/util/Map;

    iget-object v6, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    if-nez v1, :cond_0

    .line 722
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 724
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v0, v1

    move-object v1, v0

    .line 726
    goto :goto_0

    .line 728
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mSubscribedTopics:Ljava/util/Map;

    .line 729
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v3

    .line 730
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 731
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 732
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 733
    if-nez v2, :cond_3

    .line 734
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 736
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    :cond_4
    move-object v0, v2

    move-object v2, v0

    .line 739
    goto :goto_1

    .line 741
    :cond_5
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mSubscribedTopics:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-ne v0, v5, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkState(Z)V

    .line 742
    monitor-exit v4

    .line 743
    if-nez v1, :cond_7

    if-nez v2, :cond_7

    move-object v0, v3

    .line 749
    :goto_3
    return-object v0

    .line 741
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 742
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 747
    :cond_7
    const-string v0, "MqttClient"

    const-string/jumbo v3, "topic diff %s %s"

    invoke-static {v0, v3, v1, v2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 749
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public declared-synchronized waitWhileConnecting(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1046
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 1048
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1049
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 1050
    sub-long v2, p1, v2

    .line 1052
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 1059
    :cond_0
    monitor-exit p0

    return-void

    .line 1057
    :cond_1
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1046
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
