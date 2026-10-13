.class public final Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;
.super Ljava/lang/Object;
.source "MqttPushServiceBootstrapParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;
    }
.end annotation


# instance fields
.field public final analyticsLogger:Lcom/facebook/rti/common/analytics/AnalyticsLogger;

.field public final appId:Ljava/lang/String;

.field public final appSpecificInfo:Ljava/util/Map;
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

.field public final connectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

.field public final context:Landroid/content/Context;

.field public final customAnalyticsEventNameSuffix:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final customTransactionTimeoutInSeconds:I

.field public final detectMaintenanceWindow:Z

.field public final enableConnectionMerge:Z

.field public final enableCustomTransactionTimeout:Z

.field public final enableFizz:Z

.field public final enableLargePayloadSupport:Z

.field public final enableSPDYTransport:Z

.field public final executorCollapseAddressResolver:Z

.field public final executorCollapseHEInMqttClient:I

.field public final executorCollapseMqqtSsl:I

.field public final executorCollapseWriteInMqttClient:Z

.field public final executorIdleTimeoutSeconds:I

.field public final fbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final fbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

.field public final fbnsConnectionManagerCallbacks:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

.field public final fbtraceLogger:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

.field public final isChatOnProvider:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isConnectionRetryFgBgEnabled:Z

.field public final isFastSendEnabled:Z

.field public final isLogTimeProvider:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isLoggingHealthStatsEnabled:Z

.field public final isMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;
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

.field public final isMqttPublishOptionalCompression:Z

.field public final isReportConnectSentStateEnabled:Z

.field public final isServerPingEnabled:Z

.field public final isWakeLockExpEnabled:Z

.field public final keepaliveParms:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

.field public final localeOverride:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final loggerUserId:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

.field public final mergedHostCName:Ljava/lang/String;

.field public final messagePayloadEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

.field public final mqttClientCoreBuilder:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;

.field public final mqttClientTopicSubscriptionCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

.field public final mqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

.field public final mqttEndpointCapabilityProvider:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mqttHandler:Landroid/os/Handler;

.field public final mqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

.field public final mqttRequestRoutingRegionProvider:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final refCode:Ljava/util/concurrent/atomic/AtomicReference;
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

.field public final rtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

.field public final rtiThreadPoolCoreSize:I

.field public final serviceConnectionType:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Landroid/os/Handler;Lcom/facebook/rti/common/fbtrace/FbTraceLogger;Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;Lcom/facebook/common/errorreporting/FbErrorReporter;Lcom/facebook/rti/common/analytics/AnalyticsLogger;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;ZLcom/facebook/rti/mqtt/keepalive/KeepaliveParms;Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;ZZZZZLjava/util/Map;ZLcom/facebook/rti/common/logging/RtiFlytrapLogger;ZLjava/lang/String;ZZIZZIIIILjava/lang/Long;ZZZLjava/lang/String;)V
    .locals 2
    .param p9    # Lcom/facebook/rti/common/util/NonInjectProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/facebook/common/errorreporting/FbErrorReporter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/util/concurrent/atomic/AtomicReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p31    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p45    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p49    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;",
            "Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;",
            "Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;",
            "Lcom/facebook/rti/mqtt/manager/MqttIdManager;",
            "Lcom/facebook/rti/mqtt/credentials/MqttCredentials;",
            "Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;",
            "Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/facebook/rti/common/fbtrace/FbTraceLogger;",
            "Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;",
            "Lcom/facebook/common/errorreporting/FbErrorReporter;",
            "Lcom/facebook/rti/common/analytics/AnalyticsLogger;",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;",
            "Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;",
            "ZZZZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/facebook/rti/common/logging/RtiFlytrapLogger;",
            "Z",
            "Ljava/lang/String;",
            "ZZIZZIIII",
            "Ljava/lang/Long;",
            "ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-static {p1}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->context:Landroid/content/Context;

    .line 129
    invoke-static {p2}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->serviceConnectionType:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    .line 130
    invoke-static {p3}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->fbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    .line 132
    invoke-static {p4}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->fbnsConnectionManagerCallbacks:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    .line 133
    invoke-static {p5}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttIdManager:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    .line 134
    invoke-static {p6}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttCredentials:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    .line 135
    invoke-static {p7}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->messagePayloadEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    .line 136
    invoke-static {p8}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->connectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    .line 137
    iput-object p9, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 139
    invoke-static {p10}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/common/util/NonInjectProvider;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttEndpointCapabilityProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 140
    invoke-static {p11}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttHandler:Landroid/os/Handler;

    .line 141
    invoke-static {p12}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->fbtraceLogger:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    .line 142
    iput-object p13, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttClientTopicSubscriptionCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    .line 143
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->fbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    .line 144
    invoke-static/range {p15 .. p15}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/common/analytics/AnalyticsLogger;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->analyticsLogger:Lcom/facebook/rti/common/analytics/AnalyticsLogger;

    .line 145
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->customAnalyticsEventNameSuffix:Ljava/lang/String;

    .line 146
    invoke-static/range {p17 .. p17}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/common/util/NonInjectProvider;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isChatOnProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 148
    invoke-static/range {p18 .. p18}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/common/util/NonInjectProvider;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttRequestRoutingRegionProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 149
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isMqttPublishOptionalCompression:Z

    .line 150
    invoke-static/range {p20 .. p20}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->keepaliveParms:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

    .line 151
    invoke-static/range {p21 .. p21}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mqttClientCoreBuilder:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;

    .line 152
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->refCode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 153
    invoke-static/range {p23 .. p23}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->appId:Ljava/lang/String;

    .line 154
    invoke-static/range {p24 .. p24}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/common/util/NonInjectProvider;

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isLogTimeProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 155
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    .line 156
    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isReportConnectSentStateEnabled:Z

    .line 157
    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isLoggingHealthStatsEnabled:Z

    .line 158
    move/from16 v0, p28

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isFastSendEnabled:Z

    .line 159
    move/from16 v0, p29

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isConnectionRetryFgBgEnabled:Z

    .line 160
    move/from16 v0, p30

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isServerPingEnabled:Z

    .line 161
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->appSpecificInfo:Ljava/util/Map;

    .line 162
    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->detectMaintenanceWindow:Z

    .line 163
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->rtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    .line 164
    move/from16 v0, p34

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->enableSPDYTransport:Z

    .line 165
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mergedHostCName:Ljava/lang/String;

    .line 166
    move/from16 v0, p36

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->enableConnectionMerge:Z

    .line 167
    move/from16 v0, p37

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->enableCustomTransactionTimeout:Z

    .line 168
    move/from16 v0, p38

    iput v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->customTransactionTimeoutInSeconds:I

    .line 169
    move/from16 v0, p39

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorCollapseWriteInMqttClient:Z

    .line 170
    move/from16 v0, p40

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorCollapseAddressResolver:Z

    .line 171
    move/from16 v0, p41

    iput v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorCollapseMqqtSsl:I

    .line 172
    move/from16 v0, p42

    iput v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorCollapseHEInMqttClient:I

    .line 173
    move/from16 v0, p43

    iput v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->executorIdleTimeoutSeconds:I

    .line 174
    move/from16 v0, p44

    iput v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->rtiThreadPoolCoreSize:I

    .line 175
    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->loggerUserId:Ljava/lang/Long;

    .line 176
    move/from16 v0, p46

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->isWakeLockExpEnabled:Z

    .line 177
    move/from16 v0, p47

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->enableFizz:Z

    .line 178
    move/from16 v0, p48

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->enableLargePayloadSupport:Z

    .line 179
    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->localeOverride:Ljava/lang/String;

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Landroid/os/Handler;Lcom/facebook/rti/common/fbtrace/FbTraceLogger;Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;Lcom/facebook/common/errorreporting/FbErrorReporter;Lcom/facebook/rti/common/analytics/AnalyticsLogger;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;ZLcom/facebook/rti/mqtt/keepalive/KeepaliveParms;Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;ZZZZZLjava/util/Map;ZLcom/facebook/rti/common/logging/RtiFlytrapLogger;ZLjava/lang/String;ZZIZZIIIILjava/lang/Long;ZZZLjava/lang/String;Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$1;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p49}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;-><init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Landroid/os/Handler;Lcom/facebook/rti/common/fbtrace/FbTraceLogger;Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;Lcom/facebook/common/errorreporting/FbErrorReporter;Lcom/facebook/rti/common/analytics/AnalyticsLogger;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;ZLcom/facebook/rti/mqtt/keepalive/KeepaliveParms;Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;ZZZZZLjava/util/Map;ZLcom/facebook/rti/common/logging/RtiFlytrapLogger;ZLjava/lang/String;ZZIZZIIIILjava/lang/Long;ZZZLjava/lang/String;)V

    return-void
.end method
