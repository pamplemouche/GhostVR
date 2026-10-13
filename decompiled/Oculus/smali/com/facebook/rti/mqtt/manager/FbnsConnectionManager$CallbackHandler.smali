.class Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;
.super Ljava/lang/Object;
.source "FbnsConnectionManager.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field private final mIsFastSendEnabled:Z

.field private final mqttClientForCallback:Lcom/facebook/rti/mqtt/protocol/MqttClient;

.field final synthetic this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Lcom/facebook/rti/mqtt/protocol/MqttClient;Z)V
    .locals 0

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1253
    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->mqttClientForCallback:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1254
    iput-boolean p3, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->mIsFastSendEnabled:Z

    .line 1255
    return-void
.end method

.method static synthetic access$300(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;)Z
    .locals 1

    .prologue
    .line 1247
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->mIsFastSendEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;)V
    .locals 0

    .prologue
    .line 1247
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->switchToPreemptiveConnectIfNeeded()V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;)Lcom/facebook/rti/mqtt/protocol/MqttClient;
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->mqttClientForCallback:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    return-object v0
.end method

.method private switchToPreemptiveConnectIfNeeded()V
    .locals 4

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPreemptiveReconnectClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->mqttClientForCallback:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    if-ne v0, v1, :cond_0

    .line 1559
    const-string v0, "FbnsConnectionManager"

    const-string v1, "Preemptive connection succeeded, switch to new connection"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->PREEMPTIVE_RECONNECT_SUCCESS:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    sget-object v3, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->PREEMPTIVE_RECONNECT_SUCCESS:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->disconnectInternal(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;

    .line 1568
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$2000(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)V

    .line 1573
    :cond_0
    return-void
.end method


# virtual methods
.method public connectionEstablished(Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V
    .locals 2
    .param p1    # Lcom/facebook/rti/mqtt/protocol/ConnectResult;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 1275
    const-string v0, "FbnsConnectionManager"

    const-string v1, "connection/established"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$600(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$2;-><init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1343
    return-void
.end method

.method public connectionFailed(Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V
    .locals 2
    .param p1    # Lcom/facebook/rti/mqtt/protocol/ConnectResult;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 1347
    const-string v0, "FbnsConnectionManager"

    const-string v1, "connection/failed"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$600(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$3;-><init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1377
    return-void
.end method

.method public connectionLost(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1381
    const-string v0, "FbnsConnectionManager"

    const-string v1, "connection/lost: %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1382
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$1702(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;J)J

    .line 1383
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0, p1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$1802(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1384
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$600(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$4;

    invoke-direct {v1, p0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$4;-><init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1396
    return-void
.end method

.method public errorReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$600(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$7;-><init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1536
    return-void
.end method

.method public handleClientException(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->mqttClientForCallback:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    if-ne v0, v1, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$100(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;->onClientFailed(Ljava/lang/Throwable;)V

    .line 1525
    :cond_0
    return-void
.end method

.method public messageReceived(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;J)V
    .locals 2

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$600(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;

    invoke-direct {v1, p0, p1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;-><init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1518
    return-void
.end method

.method public messageSent(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$600(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$5;-><init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1448
    return-void
.end method

.method public onPublishFailed(ILjava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mOperationManager:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->onOperationFailed(ILjava/lang/Throwable;)V

    .line 1541
    return-void
.end method

.method public pingSent()V
    .locals 0

    .prologue
    .line 1451
    return-void
.end method

.method public publishAcknowledged(I)V
    .locals 0

    .prologue
    .line 1435
    return-void
.end method

.method public publishArrived(Ljava/lang/String;[BIZJLcom/facebook/rti/common/util/RtiWakeLock;)V
    .locals 7

    .prologue
    .line 1406
    const-string v0, "/send_message_response"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/t_sm_rp"

    .line 1407
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    const-class v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    .line 1409
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->MessageSendSuccess:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 1410
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;->get(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 1411
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1413
    :cond_1
    const-string v0, "/push_notification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/t_push"

    .line 1414
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1415
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    const-class v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    .line 1416
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->FbnsNotificationReceived:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 1417
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;->get(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 1418
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1420
    :cond_3
    const-string v0, "/fbns_msg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1421
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    const-class v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    .line 1422
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->FbnsLiteNotificationReceived:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 1423
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;->get(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 1424
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1426
    :cond_4
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    const-class v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    .line 1427
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->PublishReceived:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 1428
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;->get(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 1429
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1430
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$100(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-interface/range {v0 .. v6}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;->onPublishArrived(Ljava/lang/String;[BIJLcom/facebook/rti/common/util/RtiWakeLock;)V

    .line 1432
    return-void
.end method

.method public reportDataUsage(Ljava/lang/String;JZ)V
    .locals 2

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$100(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;->reportDataUsage(Ljava/lang/String;JZ)V

    .line 1546
    return-void
.end method
