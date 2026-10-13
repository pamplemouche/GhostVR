.class Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;
.super Ljava/lang/Object;
.source "MqttBootstrapper.java"

# interfaces
.implements Lcom/facebook/rti/common/util/NonInjectTwoParamsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->bootstrap(Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
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


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

.field final synthetic val$addressResolver:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isPreloaded:Z

.field final synthetic val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

.field final synthetic val$rtiWakeLockHelper:Lcom/facebook/rti/common/util/RtiWakeLockHelper;

.field final synthetic val$scheduledExecutorServiceForHEInMqttClient:Ljava/util/concurrent/ScheduledExecutorService;

.field final synthetic val$singleThreadExecutorServiceForWriteInMqttClient:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$sslSocketFactoryAdapterHelper:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;ZLcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/rti/mqtt/protocol/AddressResolver;Landroid/content/Context;Lcom/facebook/rti/common/util/RtiWakeLockHelper;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iput-boolean p3, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$isPreloaded:Z

    iput-object p4, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$sslSocketFactoryAdapterHelper:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;

    iput-object p5, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$scheduledExecutorServiceForHEInMqttClient:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$addressResolver:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    iput-object p7, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$context:Landroid/content/Context;

    iput-object p8, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$rtiWakeLockHelper:Lcom/facebook/rti/common/util/RtiWakeLockHelper;

    iput-object p9, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$singleThreadExecutorServiceForWriteInMqttClient:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/util/List;)Lcom/facebook/rti/mqtt/protocol/MqttClient;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;)",
            "Lcom/facebook/rti/mqtt/protocol/MqttClient;"
        }
    .end annotation

    .prologue
    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->connectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v18

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    invoke-interface {v1}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->loadSharedIds()V

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    invoke-interface {v1}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v2, v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    invoke-interface {v2}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->getDeviceSecret()Ljava/lang/String;

    move-result-object v2

    .line 363
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$isPreloaded:Z

    if-nez v3, :cond_1

    .line 364
    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    invoke-interface {v1}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->clear()V

    .line 367
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    sget-object v2, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->EMPTY:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-interface {v1, v2}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->update(Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;)Z

    .line 370
    :cond_1
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mHostNameIpv6:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPhpOverrideEndpoint:Ljava/lang/String;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPort:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackupPort:I

    move-object/from16 v0, v18

    iget-boolean v6, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mUseSsl:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v7, v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    .line 377
    invoke-interface {v7}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->getKeySecretPair()Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v8, v8, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    .line 378
    invoke-interface {v8}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v9, v9, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    .line 379
    invoke-interface {v9}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->getDeviceSecret()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v10, v10, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    .line 380
    invoke-interface {v10}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->getAppId()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v11, v11, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->userAgent:Lcom/facebook/rti/common/util/UserAgent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v12, v12, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->keepaliveInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, v18

    iget v13, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttConnectTimeoutSec:I

    move-object/from16 v0, v18

    iget v14, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mSocketTimeoutSec:I

    move-object/from16 v0, v18

    iget v15, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mDnsTimeoutSec:I

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mUseCompression:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isMqttPublishOptionalCompression:Z

    move/from16 v17, v0

    .line 386
    invoke-static/range {v16 .. v17}, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->access$000(ZZ)I

    move-result v16

    move-object/from16 v0, v18

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mHappyEyeballsDelayMs:I

    move/from16 v17, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttClientThreadPriorityWorker:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttEndpointCapabilityProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isChatOnProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v20, v0

    .line 392
    invoke-interface/range {v20 .. v20}, Lcom/facebook/rti/common/util/NonInjectProvider;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v20, v0

    .line 394
    invoke-interface/range {v20 .. v20}, Lcom/facebook/rti/common/util/NonInjectProvider;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isFastSendEnabled:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->appSpecificInfo:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->enableSPDYTransport:Z

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mergedHostCName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->enableConnectionMerge:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->enableCustomTransactionTimeout:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->customTransactionTimeoutInSeconds:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->enableFizz:Z

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->enableLargePayloadSupport:Z

    move/from16 v31, v0

    move-object/from16 v20, p1

    invoke-direct/range {v1 .. v31}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;-><init>(Ljava/lang/String;Ljava/lang/String;IIZLcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/common/util/UserAgent;Ljava/util/concurrent/atomic/AtomicInteger;IIIIIILcom/facebook/rti/common/util/NonInjectProvider;Ljava/util/List;ZZZLjava/util/Map;ZLjava/lang/String;ZZIZZ)V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v2, v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttClientCoreBuilder:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$sslSocketFactoryAdapterHelper:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v5, v4, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$scheduledExecutorServiceForHEInMqttClient:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$addressResolver:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v8, v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->messagePayloadEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$context:Landroid/content/Context;

    move-object v4, v1

    .line 407
    invoke-virtual/range {v2 .. v9}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;->build(Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;Lcom/facebook/rti/mqtt/protocol/MqttParameters;Lcom/facebook/rti/common/time/MonotonicClock;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/rti/mqtt/protocol/AddressResolver;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Landroid/content/Context;)Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

    move-result-object v15

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v2, v2, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v3, v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttClientCoreBuilder:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;->getCoreName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->setClientCoreName(Ljava/lang/String;)V

    .line 418
    new-instance v2, Lcom/facebook/rti/mqtt/protocol/MqttClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v3, v3, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$rtiWakeLockHelper:Lcom/facebook/rti/common/util/RtiWakeLockHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v5, v5, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v6, v6, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v8, v7, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$singleThreadExecutorServiceForWriteInMqttClient:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v10, v7, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mqttDiagnosticNotification:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v11, v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->fbtraceLogger:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v12, v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttClientTopicSubscriptionCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v13, v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v14, v7, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->estimateRadioActiveTimeHelper:Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v0, v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttRequestRoutingRegionProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v0, v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->refCode:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v0, v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-boolean v0, v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isServerPingEnabled:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-boolean v0, v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isReportConnectSentStateEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-boolean v0, v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isLoggingHealthStatsEnabled:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->val$parameters:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    iget-object v0, v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->loggerUserId:Ljava/lang/Long;

    move-object/from16 v22, v0

    move-object v7, v1

    invoke-direct/range {v2 .. v22}, Lcom/facebook/rti/mqtt/protocol/MqttClient;-><init>(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/common/util/RtiWakeLockHelper;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;Lcom/facebook/rti/mqtt/protocol/MqttParameters;Lcom/facebook/rti/common/time/MonotonicClock;Ljava/util/concurrent/ExecutorService;Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;Lcom/facebook/rti/common/fbtrace/FbTraceLogger;Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;Lcom/facebook/rti/mqtt/protocol/MqttClientCore;Lcom/facebook/rti/common/util/NonInjectProvider;Ljava/util/concurrent/atomic/AtomicReference;Lcom/facebook/rti/common/util/NonInjectProvider;ZZZLjava/lang/Long;)V

    return-object v2

    .line 394
    :cond_2
    const/16 v22, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 356
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$1;->get(Ljava/util/List;)Lcom/facebook/rti/mqtt/protocol/MqttClient;

    move-result-object v0

    return-object v0
.end method
