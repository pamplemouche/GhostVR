.class Lcom/facebook/rti/mqtt/protocol/MqttClient$1;
.super Ljava/lang/Object;
.source "MqttClient.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/protocol/MqttClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBytesRead(I)V
    .locals 6

    .prologue
    .line 235
    if-ltz p1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$100(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    move-result-object v0

    const-class v1, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    .line 237
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    int-to-long v2, p1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 240
    invoke-static {v5}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$000(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "m"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "r"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "b"

    aput-object v5, v1, v4

    .line 238
    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;->increment(J[Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;

    .line 245
    :cond_0
    return-void
.end method

.method public onBytesWrite(I)V
    .locals 6

    .prologue
    .line 221
    if-ltz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$100(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    move-result-object v0

    const-class v1, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    .line 223
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    int-to-long v2, p1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 226
    invoke-static {v5}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$000(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "m"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "s"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "b"

    aput-object v5, v1, v4

    .line 224
    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;->increment(J[Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;

    .line 231
    :cond_0
    return-void
.end method

.method public onMessageRead(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 197
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$100(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    move-result-object v0

    const-class v1, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    .line 198
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    const-wide/16 v2, 0x1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 201
    invoke-static {v4}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$000(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    const-string v4, "m"

    aput-object v4, v1, v7

    const/4 v4, 0x2

    const-string/jumbo v5, "r"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "c"

    aput-object v5, v1, v4

    .line 199
    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;->increment(J[Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;

    .line 206
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$100(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$000(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, v7}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->updateTrafficStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 209
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$300(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->onWriteOrReceive()V

    .line 211
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$200(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    .line 214
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    :goto_0
    int-to-long v2, p3

    invoke-interface {v0, p1, v2, v3, v6}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->reportDataUsage(Ljava/lang/String;JZ)V

    .line 217
    :cond_0
    return-void

    :cond_1
    move-object p1, p2

    .line 214
    goto :goto_0
.end method

.method public onMessageWrite(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 180
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$100(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    move-result-object v0

    const-class v1, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    .line 181
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    const-wide/16 v2, 0x1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 184
    invoke-static {v5}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$000(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v4, "m"

    aput-object v4, v1, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "s"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "c"

    aput-object v5, v1, v4

    .line 182
    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;->increment(J[Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;

    .line 189
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$200(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    int-to-long v2, p2

    invoke-interface {v0, p1, v2, v3, v6}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->reportDataUsage(Ljava/lang/String;JZ)V

    .line 193
    :cond_0
    return-void
.end method
