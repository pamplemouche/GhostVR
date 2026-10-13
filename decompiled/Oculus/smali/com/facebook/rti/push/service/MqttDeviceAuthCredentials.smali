.class public Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;
.super Ljava/lang/Object;
.source "MqttDeviceAuthCredentials.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/credentials/MqttCredentials;


# instance fields
.field private mConnectionKeySecretPair:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

.field private final mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V
    .locals 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    .line 21
    invoke-direct {p0}, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->getIRtiSharedPreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    .line 22
    const-string v1, "/settings/mqtt/id/connection_key"

    const-string v2, ""

    .line 24
    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/settings/mqtt/id/connection_secret"

    const-string v3, ""

    .line 25
    invoke-interface {v0, v2, v3}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v1, v0}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->build(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->mConnectionKeySecretPair:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    .line 26
    return-void
.end method

.method private getIRtiSharedPreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->IDS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    invoke-interface {v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->EMPTY:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->update(Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearConnectPayloadHash()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public getClientType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "device_auth"

    return-object v0
.end method

.method public getConnectPayloadHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, ""

    return-object v0
.end method

.method public declared-synchronized getKeySecretPair()Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;
    .locals 1

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->mConnectionKeySecretPair:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setConnectPayloadHash(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public declared-synchronized update(Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;)Z
    .locals 3

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->mConnectionKeySecretPair:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->getIRtiSharedPreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    const-string v1, "/settings/mqtt/id/connection_key"

    .line 42
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    const-string v1, "/settings/mqtt/id/connection_secret"

    .line 43
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    .line 45
    iput-object p1, p0, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->mConnectionKeySecretPair:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
