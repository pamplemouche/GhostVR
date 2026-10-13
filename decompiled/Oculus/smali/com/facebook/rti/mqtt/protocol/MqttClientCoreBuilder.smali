.class public Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;
.super Ljava/lang/Object;
.source "MqttClientCoreBuilder.java"


# instance fields
.field protected mClock:Lcom/facebook/rti/common/time/Clock;

.field protected volatile mCoreName:Ljava/lang/String;

.field protected mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

.field protected mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;->mCoreName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build(Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;Lcom/facebook/rti/mqtt/protocol/MqttParameters;Lcom/facebook/rti/common/time/MonotonicClock;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/rti/mqtt/protocol/AddressResolver;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Landroid/content/Context;)Lcom/facebook/rti/mqtt/protocol/MqttClientCore;
    .locals 10

    .prologue
    .line 29
    invoke-virtual {p0, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;->build(Lcom/facebook/rti/mqtt/protocol/MqttParameters;)Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;->mClock:Lcom/facebook/rti/common/time/Clock;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;-><init>(Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/protocol/MqttParameters;Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/common/time/Clock;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/rti/mqtt/protocol/AddressResolver;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected build(Lcom/facebook/rti/mqtt/protocol/MqttParameters;)Lcom/facebook/rti/mqtt/protocol/MqttClientCore;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;->mCoreName:Ljava/lang/String;

    return-object v0
.end method

.method public inject(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/common/time/Clock;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;)V
    .locals 0

    .prologue
    .line 54
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;->mClock:Lcom/facebook/rti/common/time/Clock;

    .line 55
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    .line 56
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 57
    return-void
.end method
