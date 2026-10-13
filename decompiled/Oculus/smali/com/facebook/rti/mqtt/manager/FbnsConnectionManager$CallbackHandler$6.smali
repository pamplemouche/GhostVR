.class Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;
.super Ljava/lang/Object;
.source "FbnsConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->messageReceived(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

.field final synthetic val$message:Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V
    .locals 0

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->val$message:Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->access$700(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;)Lcom/facebook/rti/mqtt/protocol/MqttClient;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1460
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v1

    .line 1461
    sget-object v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$8;->$SwitchMap$com$facebook$rti$mqtt$protocol$messages$MessageType:[I

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->val$message:Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getMessageType()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1492
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1493
    const-string v0, "FbnsConnectionManager"

    const-string/jumbo v1, "receive/%s"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->val$message:Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getMessageType()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1512
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->val$message:Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    if-eqz v0, :cond_2

    .line 1513
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$100(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->val$message:Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    invoke-interface {v0, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;->onMessageReceived(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V

    .line 1516
    :cond_2
    return-void

    .line 1465
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->val$message:Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    .line 1467
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getVariableHeader()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    iget v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->mMessageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1466
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    move-object v1, v0

    .line 1468
    goto :goto_0

    .line 1471
    :pswitch_1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    move-object v1, v0

    .line 1472
    goto :goto_0

    .line 1475
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->rescheduleKeepAlive()V

    .line 1476
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$1900(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)V

    goto :goto_0

    .line 1480
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->val$message:Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    .line 1481
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getFixedHeader()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v0

    iget v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mQosLevel:I

    .line 1482
    sget-object v2, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->rescheduleKeepAlive()V

    goto :goto_0

    .line 1495
    :cond_3
    const-string v0, "FbnsConnectionManager"

    const-string/jumbo v2, "receive/%s; id=%d"

    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->val$message:Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    .line 1496
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getMessageType()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    .line 1495
    invoke-static {v0, v2, v3, v4}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1499
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mOperationManager:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->completeOperation(I)Lcom/facebook/rti/mqtt/manager/MqttOperation;

    .line 1503
    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPreemptiveReconnectTriggerOperationId:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPreemptiveReconnectClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    if-eqz v0, :cond_1

    .line 1505
    const-string v0, "FbnsConnectionManager"

    const-string v1, "Attempting to stop preemptive reconnect %d"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v2, v2, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget v2, v2, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPreemptiveReconnectTriggerOperationId:I

    .line 1508
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1505
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1509
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$6;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mPreemptiveReconnectClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->stopConnectingIfConnectNotSent()V

    goto/16 :goto_1

    .line 1461
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
