.class public Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;
.super Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;
.source "WorkConnectionConfigOverrides.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;Lcom/facebook/common/errorreporting/FbErrorReporter;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V
    .locals 3
    .param p4    # Lcom/facebook/common/errorreporting/FbErrorReporter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;-><init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;Lcom/facebook/common/errorreporting/FbErrorReporter;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V

    .line 38
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;->mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->LAST_HOST:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 39
    invoke-interface {v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    .line 40
    const-string/jumbo v1, "work_last_host"

    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;->mMqttEndpoint:Ljava/lang/String;

    .line 41
    const-string/jumbo v1, "work_last_analytics_endpoint"

    .line 42
    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;->mAnalyticsEndpoint:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method protected getBroadcastActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "com.facebook.rti.mqtt.ACTION_WORK_SWITCH"

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "WorkConnectionConfigOverrides"

    return-object v0
.end method

.method protected isLegitMqttEndpoint(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 54
    if-eqz p1, :cond_0

    const-string v0, ".facebook.com"

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".workplace.com"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public register()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isWorkBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-super {p0}, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->register()V

    .line 50
    :cond_0
    return-void
.end method

.method protected saveEndpoints(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/WorkConnectionConfigOverrides;->mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->LAST_HOST:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 72
    invoke-interface {v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "work_last_host"

    .line 74
    invoke-interface {v0, v1, p1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "work_last_analytics_endpoint"

    .line 75
    invoke-interface {v0, v1, p2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    .line 77
    return-void
.end method
