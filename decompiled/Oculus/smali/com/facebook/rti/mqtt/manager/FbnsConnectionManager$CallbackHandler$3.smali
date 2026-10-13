.class Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$3;
.super Ljava/lang/Object;
.source "FbnsConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->connectionFailed(Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

.field final synthetic val$result:Lcom/facebook/rti/mqtt/protocol/ConnectResult;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V
    .locals 0

    .prologue
    .line 1349
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$3;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$3;->val$result:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$3;->val$result:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mReason:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    .line 1353
    const-string v1, "FbnsConnectionManager"

    const-string v2, "connection/failed; reason=%s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1354
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED_SERVER_SHEDDING_LOAD:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED_NOT_AUTHORIZED:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    .line 1356
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1359
    :cond_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$3;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$200(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->setShouldBackoffMore()V

    .line 1362
    :cond_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$3;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$3;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    invoke-static {v2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->access$700(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;)Lcom/facebook/rti/mqtt/protocol/MqttClient;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 1363
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED_BAD_USER_NAME_OR_PASSWORD:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1365
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$3;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$800(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->clear()V

    .line 1367
    :cond_2
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$3;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    sget-object v2, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->CONNECT_FAILED:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;

    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$1500(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;Lcom/facebook/rti/common/guavalite/base/Optional;)V

    .line 1372
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$3;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    const-class v2, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    .line 1373
    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats$Metric;->LastConnectFailureReason:Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats$Metric;

    .line 1374
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 1375
    return-void

    .line 1368
    :cond_4
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$3;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPreemptiveReconnectClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$3;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    invoke-static {v2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->access$700(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;)Lcom/facebook/rti/mqtt/protocol/MqttClient;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 1370
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$3;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$1600(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)V

    goto :goto_0
.end method
