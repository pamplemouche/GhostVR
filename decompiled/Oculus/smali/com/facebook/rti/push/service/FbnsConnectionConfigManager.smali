.class public Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;
.super Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;
.source "FbnsConnectionConfigManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mMqttConnectionConfig:Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;->mContext:Landroid/content/Context;

    .line 19
    invoke-static {}, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->newDefaultConfig()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;->mMqttConnectionConfig:Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    .line 20
    return-void
.end method


# virtual methods
.method public build()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 25
    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;->applyConfigOverrides(Lorg/json/JSONObject;)V

    .line 26
    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->buildConfigFromJson(Lorg/json/JSONObject;)Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;->mMqttConnectionConfig:Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    .line 27
    return-void
.end method

.method public get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;->mMqttConnectionConfig:Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    return-object v0
.end method

.method public notifyConfigChanged()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.rti.mqtt.ACTION_MQTT_CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 39
    return-void
.end method
