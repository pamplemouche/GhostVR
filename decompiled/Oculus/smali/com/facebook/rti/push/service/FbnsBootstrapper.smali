.class public Lcom/facebook/rti/push/service/FbnsBootstrapper;
.super Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;
.source "FbnsBootstrapper.java"


# instance fields
.field public fbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

.field public fbnsRegistrarRetry:Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

.field public registrationState:Lcom/facebook/rti/push/service/RegistrationState;

.field public signatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public bootstrap(Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;)V
    .locals 7

    .prologue
    .line 19
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->signatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 22
    sget-object v0, Lcom/facebook/rti/push/service/FbnsService;->FBNS_TOPICS:Ljava/util/List;

    invoke-super {p0, p2, v0}, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->bootstrap(Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;Ljava/util/List;)V

    .line 24
    new-instance v0, Lcom/facebook/rti/push/service/RegistrationState;

    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->clock:Lcom/facebook/rti/common/time/Clock;

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->rtiBuildInfoUtil:Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    iget-object v3, p2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/rti/push/service/RegistrationState;-><init>(Lcom/facebook/rti/common/time/Clock;Lcom/facebook/rti/common/util/RtiBuildInfoUtil;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->registrationState:Lcom/facebook/rti/push/service/RegistrationState;

    .line 26
    new-instance v0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

    iget-object v1, p2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    iget-object v5, p0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->rtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v6, p2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;-><init>(Landroid/content/Context;Lcom/facebook/rti/common/util/SystemServiceManager;Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->fbnsRegistrarRetry:Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

    .line 34
    new-instance v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    iget-object v1, p2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->mqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    iget-object v4, p0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->analyticsLogger:Lcom/facebook/rti/common/analytics/AnalyticsLogger;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;-><init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/common/analytics/AnalyticsLogger;)V

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->fbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    .line 37
    return-void
.end method
