.class public abstract Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;
.super Ljava/lang/Object;
.source "ProductSpecificConfigOverrides.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/common/config/ConnectionConfigOverrides;


# instance fields
.field protected volatile mAnalyticsEndpoint:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected final mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

.field protected final mContext:Landroid/content/Context;

.field protected final mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

.field protected volatile mMqttEndpoint:Ljava/lang/String;

.field protected final mServiceConnectionType:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;Lcom/facebook/common/errorreporting/FbErrorReporter;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V
    .locals 0
    .param p4    # Lcom/facebook/common/errorreporting/FbErrorReporter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    .line 62
    iput-object p3, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mServiceConnectionType:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    .line 63
    iput-object p4, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    .line 64
    iput-object p5, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    .line 65
    return-void
.end method


# virtual methods
.method public getAnalyticsEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mAnalyticsEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getBroadcastActionName()Ljava/lang/String;
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method public getMqttEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mMqttEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method protected isLegitMqttEndpoint(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 42
    if-eqz p1, :cond_0

    const-string v0, ".ghostvr.pamplemouche.com"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".workplace.com"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".pushnotifs.com"

    .line 45
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
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;-><init>(Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->getBroadcastActionName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    :cond_0
    return-void
.end method

.method protected abstract saveEndpoints(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected setEndpoints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "set endpoints with: %s, %s, %s, %s"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 161
    invoke-static/range {v0 .. v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mServiceConnectionType:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    sget-object v1, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->FBNS:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mServiceConnectionType:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    sget-object v1, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->PreloadedFBNS:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    if-ne v0, v1, :cond_5

    .line 171
    :cond_0
    invoke-static {p3}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 174
    :goto_0
    invoke-static {p4}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object p2, p4

    .line 179
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mMqttEndpoint:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/facebook/rti/common/util/StringUtil;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mAnalyticsEndpoint:Ljava/lang/String;

    .line 180
    invoke-static {v0, p2}, Lcom/facebook/rti/common/util/StringUtil;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 181
    :cond_2
    invoke-virtual {p0, p3, p2}, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->saveEndpoints(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iput-object p3, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mMqttEndpoint:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mAnalyticsEndpoint:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->notifyConfigChanged()V

    .line 187
    :cond_3
    return-void

    :cond_4
    move-object p3, p1

    goto :goto_0

    :cond_5
    move-object p3, p1

    goto :goto_1
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    :cond_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to unregister broadcast receiver"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
