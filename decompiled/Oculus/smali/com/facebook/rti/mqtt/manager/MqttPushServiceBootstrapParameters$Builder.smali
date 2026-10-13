.class public final Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
.super Ljava/lang/Object;
.source "MqttPushServiceBootstrapParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mAnalyticsLogger:Lcom/facebook/rti/common/analytics/AnalyticsLogger;

.field private mAppId:Ljava/lang/String;

.field private mAppSpecificInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

.field private mCustomAnalyticsEventNameSuffix:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCustomTransactionTimeoutInSeconds:I

.field private mDetectMaintenanceWindow:Z

.field private mEnableConnectionMerge:Z

.field private mEnableCustomTransactionTimeout:Z

.field private mEnableFizz:Z

.field private mEnableLargePayloadSupport:Z

.field private mEnableSPDYTransport:Z

.field private mExecutorCollapseAddressResolver:Z

.field private mExecutorCollapseHEInMqttClient:I

.field private mExecutorCollapseMqqtSsl:I

.field private mExecutorCollapseWriteInMqttClient:Z

.field private mExecutorIdleTimeout:I

.field private mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

.field private mFbnsConnectionManagerCallbacks:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

.field private mFbtraceLogger:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

.field private mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

.field private mIsChatOnProvider:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConnectionRetryFgBgEnabled:Z

.field private mIsFastSendEnabled:Z

.field private mIsLogTimeProvider:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoggingHealthStatsEnabled:Z

.field private mIsMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIsMqttPublishOptionalCompression:Z

.field private mIsReportConnectSentStateEnabled:Z

.field private mIsServerPingEnabled:Z

.field private mIsWakeLockExpEnabled:Z

.field private mKeepaliveParms:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

.field private mLocaleOverride:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLoggerUserId:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMergedHostCName:Ljava/lang/String;

.field private mMessagePayloadEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

.field private mMqttClientCoreBuilder:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;

.field private mMqttClientTopicSubscriptionCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

.field private mMqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

.field private mMqttEndpointCapabilityProvider:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMqttHandler:Landroid/os/Handler;

.field private mMqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

.field private mMqttRequestRoutingRegionProvider:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRefCode:Ljava/util/concurrent/atomic/AtomicReference;
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

.field private mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

.field private mRtiThreadPoolCoreSize:I

.field private mServiceConnectionType:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallbackNoOp;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallbackNoOp;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mMqttClientTopicSubscriptionCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    .line 209
    iput-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsReportConnectSentStateEnabled:Z

    .line 210
    iput-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsLoggingHealthStatsEnabled:Z

    .line 211
    iput-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsFastSendEnabled:Z

    .line 212
    iput-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsConnectionRetryFgBgEnabled:Z

    .line 213
    iput-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsServerPingEnabled:Z

    .line 215
    iput-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mDetectMaintenanceWindow:Z

    .line 224
    iput v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mExecutorCollapseMqqtSsl:I

    .line 225
    iput v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mExecutorCollapseHEInMqttClient:I

    .line 227
    iput v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mRtiThreadPoolCoreSize:I

    .line 229
    iput-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsWakeLockExpEnabled:Z

    .line 230
    iput-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mEnableFizz:Z

    .line 231
    iput-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mEnableLargePayloadSupport:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;
    .locals 52

    .prologue
    .line 493
    new-instance v1, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mServiceConnectionType:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mFbnsConnectionManagerCallbacks:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mMqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mMqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mMessagePayloadEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mMqttEndpointCapabilityProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mMqttHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mFbtraceLogger:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mMqttClientTopicSubscriptionCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mAnalyticsLogger:Lcom/facebook/rti/common/analytics/AnalyticsLogger;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mCustomAnalyticsEventNameSuffix:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsChatOnProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mMqttRequestRoutingRegionProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsMqttPublishOptionalCompression:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mKeepaliveParms:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mMqttClientCoreBuilder:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mRefCode:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mAppId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsLogTimeProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsReportConnectSentStateEnabled:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsLoggingHealthStatsEnabled:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsFastSendEnabled:Z

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsConnectionRetryFgBgEnabled:Z

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsServerPingEnabled:Z

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mAppSpecificInfo:Ljava/util/Map;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mDetectMaintenanceWindow:Z

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mEnableSPDYTransport:Z

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mMergedHostCName:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mEnableConnectionMerge:Z

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mEnableCustomTransactionTimeout:Z

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mCustomTransactionTimeoutInSeconds:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mExecutorCollapseWriteInMqttClient:Z

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mExecutorCollapseAddressResolver:Z

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mExecutorCollapseMqqtSsl:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mExecutorCollapseHEInMqttClient:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mExecutorIdleTimeout:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mRtiThreadPoolCoreSize:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mLoggerUserId:Ljava/lang/Long;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsWakeLockExpEnabled:Z

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mEnableFizz:Z

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mEnableLargePayloadSupport:Z

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mLocaleOverride:Ljava/lang/String;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-direct/range {v1 .. v51}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;-><init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Landroid/os/Handler;Lcom/facebook/rti/common/fbtrace/FbTraceLogger;Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;Lcom/facebook/common/errorreporting/FbErrorReporter;Lcom/facebook/rti/common/analytics/AnalyticsLogger;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;ZLcom/facebook/rti/mqtt/keepalive/KeepaliveParms;Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;ZZZZZLjava/util/Map;ZLcom/facebook/rti/common/logging/RtiFlytrapLogger;ZLjava/lang/String;ZZIZZIIIILjava/lang/Long;ZZZLjava/lang/String;Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$1;)V

    return-object v1
.end method

.method public setAnalyticsLogger(Lcom/facebook/rti/common/analytics/AnalyticsLogger;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mAnalyticsLogger:Lcom/facebook/rti/common/analytics/AnalyticsLogger;

    .line 311
    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mAppId:Ljava/lang/String;

    .line 354
    return-object p0
.end method

.method public setConnectionConfigManager(Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    .line 273
    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->context:Landroid/content/Context;

    .line 236
    return-object p0
.end method

.method public setEnableFizz(Z)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 472
    iput-boolean p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mEnableFizz:Z

    .line 473
    return-object p0
.end method

.method public setFbErrorReporter(Lcom/facebook/common/errorreporting/FbErrorReporter;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0
    .param p1    # Lcom/facebook/common/errorreporting/FbErrorReporter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 305
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    .line 306
    return-object p0
.end method

.method public setFbnsConnectionManager(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    .line 246
    return-object p0
.end method

.method public setFbnsConnectionManagerCallbacks(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mFbnsConnectionManagerCallbacks:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    .line 252
    return-object p0
.end method

.method public setFbtraceLogger(Lcom/facebook/rti/common/fbtrace/FbTraceLogger;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mFbtraceLogger:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    .line 295
    return-object p0
.end method

.method public setIRtiSharedPrefsProvider(Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    .line 479
    return-object p0
.end method

.method public setIsChatOnProvider(Lcom/facebook/rti/common/util/NonInjectProvider;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;"
        }
    .end annotation

    .prologue
    .line 321
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsChatOnProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 322
    return-object p0
.end method

.method public setIsLogTimeProvider(Lcom/facebook/rti/common/util/NonInjectProvider;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;"
        }
    .end annotation

    .prologue
    .line 359
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsLogTimeProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 360
    return-object p0
.end method

.method public setIsLoggingHealthStatsEnabled(Z)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsLoggingHealthStatsEnabled:Z

    .line 370
    return-object p0
.end method

.method public setIsMqttForegroundProvider(Lcom/facebook/rti/common/util/NonInjectProvider;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;"
        }
    .end annotation

    .prologue
    .line 278
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 279
    return-object p0
.end method

.method public setIsMqttPublishOptionalCompression(Z)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mIsMqttPublishOptionalCompression:Z

    .line 334
    return-object p0
.end method

.method public setKeepaliveParms(Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mKeepaliveParms:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

    .line 339
    return-object p0
.end method

.method public setLoggerUserId(Ljava/lang/Long;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 462
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mLoggerUserId:Ljava/lang/Long;

    .line 463
    return-object p0
.end method

.method public setMessagePayloadEncoder(Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mMessagePayloadEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    .line 267
    return-object p0
.end method

.method public setMqttClientCoreBuilder(Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mMqttClientCoreBuilder:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;

    .line 344
    return-object p0
.end method

.method public setMqttCredentials(Lcom/facebook/rti/mqtt/credentials/MqttCredentials;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mMqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    .line 262
    return-object p0
.end method

.method public setMqttEndpointCapabilityProvider(Lcom/facebook/rti/common/util/NonInjectProvider;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;"
        }
    .end annotation

    .prologue
    .line 284
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mMqttEndpointCapabilityProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 285
    return-object p0
.end method

.method public setMqttHandler(Landroid/os/Handler;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mMqttHandler:Landroid/os/Handler;

    .line 290
    return-object p0
.end method

.method public setMqttIdManager(Lcom/facebook/rti/mqtt/manager/MqttIdManager;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mMqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    .line 257
    return-object p0
.end method

.method public setMqttRequestRoutingRegionProvider(Lcom/facebook/rti/common/util/NonInjectProvider;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;"
        }
    .end annotation

    .prologue
    .line 327
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mMqttRequestRoutingRegionProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 328
    return-object p0
.end method

.method public setRefCode(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0
    .param p1    # Ljava/util/concurrent/atomic/AtomicReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;"
        }
    .end annotation

    .prologue
    .line 348
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mRefCode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 349
    return-object p0
.end method

.method public setRtiFlytrapLogger(Lcom/facebook/rti/common/logging/RtiFlytrapLogger;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    .line 400
    return-object p0
.end method

.method public setServiceConnectionType(Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->mServiceConnectionType:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    .line 241
    return-object p0
.end method
