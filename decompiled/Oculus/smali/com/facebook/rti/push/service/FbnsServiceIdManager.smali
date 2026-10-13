.class public Lcom/facebook/rti/push/service/FbnsServiceIdManager;
.super Ljava/lang/Object;
.source "FbnsServiceIdManager.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/manager/MqttIdManager;


# instance fields
.field private mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

.field private mMqttDeviceIdAndSecret:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

.field private final mService:Lcom/facebook/rti/push/service/FbnsService;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/push/service/FbnsService;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V
    .locals 8

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->mService:Lcom/facebook/rti/push/service/FbnsService;

    .line 24
    iput-object p2, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    .line 25
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->IDS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 26
    invoke-interface {v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    const-string v2, "/settings/mqtt/id/mqtt_device_id"

    const-string v3, ""

    .line 29
    invoke-interface {v0, v2, v3}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/settings/mqtt/id/mqtt_device_secret"

    const-string v4, ""

    .line 30
    invoke-interface {v0, v3, v4}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/settings/mqtt/id/timestamp"

    const-wide v6, 0x7fffffffffffffffL

    .line 31
    invoke-interface {v0, v4, v6, v7}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->mMqttDeviceIdAndSecret:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    .line 33
    invoke-direct {p0}, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->maybeGenerateDeviceId()V

    .line 34
    return-void
.end method

.method private maybeGenerateDeviceId()V
    .locals 6

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->mMqttDeviceIdAndSecret:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->getId()Ljava/lang/String;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->mService:Lcom/facebook/rti/push/service/FbnsService;

    .line 82
    invoke-virtual {v0}, Lcom/facebook/rti/push/service/FbnsService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->isServicePreLoadedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    .line 84
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->update(Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;)Z

    .line 87
    :cond_1
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "567310203415052"

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "MQTT"

    return-object v0
.end method

.method public declared-synchronized getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->mMqttDeviceIdAndSecret:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->getId()Ljava/lang/String;
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

.method public declared-synchronized getDeviceSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->mMqttDeviceIdAndSecret:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->getSecret()Ljava/lang/String;
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

.method public loadSharedIds()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public declared-synchronized update(Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;)Z
    .locals 4

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->mMqttDeviceIdAndSecret:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->IDS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 60
    invoke-interface {v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    const-string v1, "/settings/mqtt/id/mqtt_device_id"

    .line 64
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    const-string v1, "/settings/mqtt/id/mqtt_device_secret"

    .line 65
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    const-string v1, "/settings/mqtt/id/timestamp"

    .line 68
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->getTimestamp()J

    move-result-wide v2

    .line 66
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putLong(Ljava/lang/String;J)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    .line 70
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->mMqttDeviceIdAndSecret:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    const/4 v0, 0x1

    .line 73
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
