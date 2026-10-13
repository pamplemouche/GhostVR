.class public Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;
.super Ljava/lang/Object;
.source "MqttHealthStats.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final mIsPartialDayOk:Z

.field private final mMqttHealthStatsSnapshot:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;

.field private final mRTConnectivityStats:Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

.field private final mRTDataUsageStats:Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

.field private final mRTStatsBasicInfo:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;

.field private final mRTStatsLatency:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;

.field private final mRTStatsLifeCycle:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

.field private final mRTTopicStats:Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;

.field private final mRTTrafficStats:Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

.field private final mReset:Z


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;ZZ)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTStatsBasicInfo:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;

    .line 59
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTStatsLifeCycle:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    .line 60
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTConnectivityStats:Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    .line 61
    iput-object p4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTStatsLatency:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;

    .line 62
    iput-object p5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mMqttHealthStatsSnapshot:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;

    .line 63
    iput-object p6, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTDataUsageStats:Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    .line 64
    iput-object p7, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTTrafficStats:Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    .line 65
    iput-object p8, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTTopicStats:Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;

    .line 66
    iput-boolean p9, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mReset:Z

    .line 67
    iput-boolean p10, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mIsPartialDayOk:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;Z)V
    .locals 11

    .prologue
    .line 79
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;-><init>(Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;ZZ)V

    .line 90
    return-void
.end method

.method private toJson(Z)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTStatsBasicInfo:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTStatsBasicInfo:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;

    .line 112
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;->getCategoryKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTStatsBasicInfo:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;

    iget-boolean v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mIsPartialDayOk:Z

    invoke-virtual {v2, p1, v3}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;->toJson(ZZ)Lorg/json/JSONObject;

    move-result-object v2

    .line 111
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTStatsLifeCycle:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTStatsLifeCycle:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    .line 116
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;->getCategoryKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTStatsLifeCycle:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    iget-boolean v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mIsPartialDayOk:Z

    invoke-virtual {v2, p1, v3}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;->toJson(ZZ)Lorg/json/JSONObject;

    move-result-object v2

    .line 115
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTConnectivityStats:Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTConnectivityStats:Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    .line 120
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;->getCategoryKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTConnectivityStats:Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    iget-boolean v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mIsPartialDayOk:Z

    .line 121
    invoke-virtual {v2, p1, v3}, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;->toJson(ZZ)Lorg/json/JSONObject;

    move-result-object v2

    .line 119
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTStatsLatency:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;

    if-eqz v1, :cond_3

    .line 124
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTStatsLatency:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;

    .line 125
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;->getCategoryKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTStatsLatency:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;

    iget-boolean v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mIsPartialDayOk:Z

    invoke-virtual {v2, p1, v3}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;->toJson(ZZ)Lorg/json/JSONObject;

    move-result-object v2

    .line 124
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    :cond_3
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mMqttHealthStatsSnapshot:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;

    if-eqz v1, :cond_4

    .line 128
    const-string/jumbo v1, "ss"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mMqttHealthStatsSnapshot:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    :cond_4
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTDataUsageStats:Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    if-eqz v1, :cond_5

    .line 131
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTDataUsageStats:Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    .line 132
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;->getCategoryKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTDataUsageStats:Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    iget-boolean v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mIsPartialDayOk:Z

    invoke-virtual {v2, p1, v3}, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;->toJson(ZZ)Lorg/json/JSONObject;

    move-result-object v2

    .line 131
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    :cond_5
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTTrafficStats:Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    if-eqz v1, :cond_6

    .line 135
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTTrafficStats:Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    .line 136
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;->getCategoryKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTTrafficStats:Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    iget-boolean v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mIsPartialDayOk:Z

    invoke-virtual {v2, p1, v3}, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;->toJson(ZZ)Lorg/json/JSONObject;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    :cond_6
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTTopicStats:Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;

    if-eqz v1, :cond_7

    .line 139
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTTopicStats:Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;

    .line 140
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;->getCategoryKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mRTTopicStats:Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;

    iget-boolean v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mIsPartialDayOk:Z

    invoke-virtual {v2, p1, v3}, Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;->toJson(ZZ)Lorg/json/JSONObject;

    move-result-object v2

    .line 139
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    :cond_7
    return-object v0
.end method


# virtual methods
.method public export()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mReset:Z

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->toJson(Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string v0, ""

    goto :goto_0
.end method

.method public export(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->mReset:Z

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->toJson(Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v0, ""

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->toJson(Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string v0, ""

    goto :goto_0
.end method
