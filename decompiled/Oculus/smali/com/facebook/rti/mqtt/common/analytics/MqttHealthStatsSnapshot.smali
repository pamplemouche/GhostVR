.class public Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;
.super Ljava/lang/Object;
.source "MqttHealthStatsSnapshot.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final mMqttConnectDelayAfterServiceStartMs:J

.field private final mMqttConnectionGapMs:J

.field private final mMqttFullConnectLatencyMs:J

.field private final mServiceStartReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;->mServiceStartReason:Ljava/lang/String;

    .line 39
    iput-wide p2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;->mMqttConnectDelayAfterServiceStartMs:J

    .line 40
    iput-wide p4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;->mMqttFullConnectLatencyMs:J

    .line 41
    iput-wide p6, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;->mMqttConnectionGapMs:J

    .line 42
    return-void
.end method


# virtual methods
.method public final toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    const-string/jumbo v1, "ssr"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;->mServiceStartReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v1, "mcd"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;->mMqttConnectDelayAfterServiceStartMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v1, "mfcl"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;->mMqttFullConnectLatencyMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v1, "mcg"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;->mMqttConnectionGapMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    return-object v0
.end method
