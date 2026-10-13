.class public abstract Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;
.super Ljava/lang/Object;
.source "ConnectionConfigManager.java"


# instance fields
.field private final mConnectionConfigOverridesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/common/config/ConnectionConfigOverrides;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->mConnectionConfigOverridesList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized addConfigOverrides(Lcom/facebook/rti/mqtt/common/config/ConnectionConfigOverrides;)V
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->mConnectionConfigOverridesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized applyConfigOverrides(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->mConnectionConfigOverridesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigOverrides;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :try_start_1
    invoke-interface {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigOverrides;->getMqttEndpoint()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 56
    const-string v3, "host_name_v6"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    :cond_1
    invoke-interface {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigOverrides;->getAnalyticsEndpoint()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    const-string v2, "analytics_endpoint"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0

    .line 66
    :cond_2
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract build()V
.end method

.method public abstract get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;
.end method

.method public abstract notifyConfigChanged()V
.end method
