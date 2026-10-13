.class public Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;
.super Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats;
.source "RTStatsLifeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "lc"

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized toJson(ZZ)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 70
    monitor-enter p0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 72
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;->mStatsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 74
    sget-object v6, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$1;->$SwitchMap$com$facebook$rti$mqtt$common$analytics$RTStatsLifeCycle$Metric:[I

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->ordinal()I

    move-result v1

    aget v1, v6, v1

    packed-switch v1, :pswitch_data_0

    .line 95
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;

    invoke-interface {v1}, Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-wide v0, v2

    :goto_2
    move-wide v2, v0

    .line 97
    goto :goto_0

    .line 84
    :pswitch_0
    if-eqz p1, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;->getKey()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-wide v0, v2

    .line 87
    goto :goto_2

    .line 88
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;

    invoke-interface {v1}, Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-wide v0, v2

    .line 90
    goto :goto_2

    .line 93
    :pswitch_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_1

    .line 99
    :cond_1
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->MqttTotalDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-object v4

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
