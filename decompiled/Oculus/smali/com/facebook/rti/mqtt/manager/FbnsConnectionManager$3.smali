.class Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$3;
.super Ljava/lang/Object;
.source "FbnsConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$3;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$3;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$100(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;->shouldBeConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$3;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$3;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->sendKeepAlive()V

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$3;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$3;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->updateKeepaliveInterval()V

    .line 643
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$3;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$200(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->ensureScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$3;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;->KEEPALIVE:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->setConnectTriggerReason(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V

    goto :goto_0

    .line 649
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$3;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->KEEPALIVE_SHOULD_NOT_CONNECT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->disconnect(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method
