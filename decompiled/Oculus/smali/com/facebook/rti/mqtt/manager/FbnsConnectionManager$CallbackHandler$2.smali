.class Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;
.super Ljava/lang/Object;
.source "FbnsConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->connectionEstablished(Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V
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
    .line 1278
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->val$result:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 1281
    const-string v0, "FbnsConnectionManager"

    const-string v1, "connection/established/runnable"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->access$300(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1283
    const-string v0, "FbnsConnectionManager"

    const-string v1, "FastSend disabled"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->access$400(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;)V

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->access$700(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;)Lcom/facebook/rti/mqtt/protocol/MqttClient;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 1289
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->val$result:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mMqttAuthenticationKeySecretPair:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1290
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    .line 1291
    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$800(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->val$result:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mMqttAuthenticationKeySecretPair:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    invoke-interface {v1, v0}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->update(Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;)Z

    move-result v0

    or-int/2addr v0, v2

    move v1, v0

    .line 1293
    :goto_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$900(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->isServicePreLoadedPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->val$result:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mMqttDeviceIdSecretPair:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 1294
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1295
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$1000(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->val$result:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mMqttDeviceIdSecretPair:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-interface {v3, v0}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->update(Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;)Z

    move-result v0

    or-int/2addr v1, v0

    .line 1297
    :cond_1
    if-eqz v1, :cond_2

    .line 1298
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$100(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;->onCredentialsChanged()V

    .line 1301
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->access$300(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1302
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0, v8, v8}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->syncSubscriptionTopics(Ljava/util/List;Ljava/util/List;)V

    .line 1307
    :cond_3
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->rescheduleKeepAlive()V

    .line 1310
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 1311
    invoke-interface {v1}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v4

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$1100(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1310
    invoke-virtual {v0, v4, v5}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->reportSuccessfulConnection(J)V

    .line 1312
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$1200(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1313
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getConnectivityStats()Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$1300(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;Z)V

    .line 1316
    :cond_4
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    const-class v1, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    .line 1317
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats$Metric;->LastConnectFailureReason:Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats$Metric;

    .line 1318
    invoke-virtual {v0, v1, v8}, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 1320
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->access$300(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1321
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$100(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;->onConnectionEstablished()V

    .line 1324
    :cond_5
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 1325
    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v3, v3, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v3}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$200(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->getRetryStartTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 1326
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v3, v3, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v3, v3, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v4, v4, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    .line 1327
    invoke-static {v4}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$200(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->getTotalRetryCount()I

    move-result v4

    .line 1326
    invoke-virtual {v3, v4, v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttConnectionEventConnectRetries(IJ)V

    .line 1331
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0, v2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$1402(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Z)Z

    .line 1332
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    .line 1333
    invoke-static {v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->access$700(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;)Lcom/facebook/rti/mqtt/protocol/MqttClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->getAndResetConnectMessages()Ljava/util/List;

    move-result-object v1

    .line 1332
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->completeOperationsSentWithConnect(Ljava/util/List;)V

    .line 1337
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->sendQueuedMessagesIfAny(Ljava/util/List;)V

    .line 1338
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mLastConnectionEstablishTime:J

    .line 1339
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iput-boolean v2, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mClockSkewDetected:Z

    .line 1341
    :cond_6
    return-void

    :cond_7
    move v1, v2

    goto/16 :goto_0
.end method
