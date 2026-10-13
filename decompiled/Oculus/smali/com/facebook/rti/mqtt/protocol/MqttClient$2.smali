.class Lcom/facebook/rti/mqtt/protocol/MqttClient$2;
.super Ljava/lang/Object;
.source "MqttClient.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;


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
    .line 250
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkConnectionState(Lcom/facebook/rti/mqtt/protocol/ConnectionState;)Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1600(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public disconnectOnError(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1500(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V

    .line 345
    :cond_0
    return-void
.end method

.method public getMqttSessionId()J
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$2400(Lcom/facebook/rti/mqtt/protocol/MqttClient;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1900(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSessionId()J
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$2500(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getNetworkSessionId()J

    move-result-wide v0

    return-wide v0
.end method

.method public handleClientException(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$200(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_0

    .line 335
    invoke-interface {v0, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->handleClientException(Ljava/lang/Throwable;)V

    .line 337
    :cond_0
    return-void
.end method

.method public messageReceived(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V
    .locals 14

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$400(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/common/util/RtiWakeLockHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/common/util/RtiWakeLockHelper;->acquireNewWakeLock()Lcom/facebook/rti/common/util/RtiWakeLock;

    move-result-object v8

    .line 254
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$500(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/common/time/MonotonicClock;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v6

    .line 255
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$200(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;

    move-result-object v1

    .line 256
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getMessageType()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v9

    .line 257
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$11;->$SwitchMap$com$facebook$rti$mqtt$protocol$messages$MessageType:[I

    invoke-virtual {v9}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 313
    const-string v0, "MqttClient"

    const-string/jumbo v2, "receive/type=%s"

    invoke-static {v0, v2, v9}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 318
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1100(Lcom/facebook/rti/mqtt/protocol/MqttClient;)J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->messageReceived(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;J)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$500(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/common/time/MonotonicClock;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1102(Lcom/facebook/rti/mqtt/protocol/MqttClient;J)J

    .line 323
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1200(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1300(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    move-result-object v1

    const-string v2, "I %s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 326
    invoke-virtual {v9}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v4

    .line 325
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->showSubstatus(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1100(Lcom/facebook/rti/mqtt/protocol/MqttClient;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1402(Lcom/facebook/rti/mqtt/protocol/MqttClient;J)J

    .line 329
    return-void

    :pswitch_0
    move-object v0, p1

    .line 259
    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    .line 260
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$600(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientCore;->decodeTopicName(Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;)Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v3

    iget v4, v3, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->mMessageId:I

    .line 262
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getFixedHeader()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v3

    iget v10, v3, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mQosLevel:I

    .line 264
    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 265
    invoke-static {v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$700(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getPayload()[B

    move-result-object v5

    invoke-interface {v3, v2, v5}, Lcom/facebook/rti/common/fbtrace/FbTraceLogger;->logPublishReceive(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object v11

    .line 267
    const-string v3, "MqttClient"

    const-string/jumbo v5, "receive/publish; id=%d, qos=%d, topic=%s"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v3, v5, v12, v13, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 269
    if-eqz v1, :cond_2

    .line 272
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getPayload()[B

    move-result-object v3

    .line 274
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getFixedHeader()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->isRetain()Z

    move-result v5

    .line 270
    invoke-interface/range {v1 .. v8}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->publishArrived(Ljava/lang/String;[BIZJLcom/facebook/rti/common/util/RtiWakeLock;)V

    .line 277
    invoke-static {v2}, Lcom/facebook/rti/mqtt/protocol/messages/TopicUtil;->isGraphqlTopic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$800(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;->maybePublishReceived(Ljava/lang/String;)V

    .line 283
    :cond_2
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->getValue()I

    move-result v0

    if-ne v10, v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0, v4, v11}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$900(Lcom/facebook/rti/mqtt/protocol/MqttClient;ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_1
    move-object v0, p1

    .line 289
    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;

    .line 290
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v0

    iget v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->mMessageId:I

    .line 291
    const-string v2, "MqttClient"

    const-string/jumbo v3, "receive/puback; id=%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    if-eqz v1, :cond_3

    .line 293
    invoke-interface {v1, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->publishAcknowledged(I)V

    .line 295
    :cond_3
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$800(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;->maybeTopicsSubscribeAcked(I)V

    .line 296
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$800(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;->maybeTopicsUnSubscribeAcked(I)V

    goto/16 :goto_0

    :pswitch_2
    move-object v0, p1

    .line 299
    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;

    .line 300
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$800(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    move-result-object v2

    .line 301
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v0

    iget v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->mMessageId:I

    .line 300
    invoke-interface {v2, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;->maybeTopicsSubscribeAcked(I)V

    goto/16 :goto_0

    :pswitch_3
    move-object v0, p1

    .line 304
    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;

    .line 305
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$800(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    move-result-object v2

    .line 306
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v0

    iget v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->mMessageId:I

    .line 305
    invoke-interface {v2, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;->maybeTopicsUnSubscribeAcked(I)V

    goto/16 :goto_0

    .line 310
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1000(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V

    goto/16 :goto_0

    .line 326
    :cond_4
    const-string v0, ""

    goto/16 :goto_1

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public notifyPubAckResult(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 441
    if-nez p1, :cond_0

    .line 442
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$700(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1, p2}, Lcom/facebook/rti/common/fbtrace/FbTraceLogger;->logAcknowledgePublication(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 446
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$700(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-interface {v0, p3, v1, v2}, Lcom/facebook/rti/common/fbtrace/FbTraceLogger;->logAcknowledgePublication(Ljava/lang/Object;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public notifyStateChange(Lcom/facebook/rti/mqtt/protocol/ConnectionState;)V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1602(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/protocol/ConnectionState;)Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    .line 451
    return-void
.end method

.method public onConnectAttempted(Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V
    .locals 14

    .prologue
    .line 382
    iget-boolean v0, p1, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mSucceeded:Z

    if-eqz v0, :cond_4

    .line 384
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$2000(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1800(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getConnectPayloadHash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$2100(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1800(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getConnectPayloadHash()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->setConnectPayloadHash(Ljava/lang/String;)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$500(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/common/time/MonotonicClock;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$2202(Lcom/facebook/rti/mqtt/protocol/MqttClient;J)J

    .line 396
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$2700(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    move-result-object v1

    iget-boolean v2, p1, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mSucceeded:Z

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 398
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$500(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/common/time/MonotonicClock;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v4

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$2300(Lcom/facebook/rti/mqtt/protocol/MqttClient;)J

    move-result-wide v6

    sub-long v3, v4, v6

    iget-object v0, p1, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mReason:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 399
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mReason:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iget-object v6, p1, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mException:Lcom/facebook/rti/common/guavalite/base/Optional;

    iget-object v7, p1, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mConAckReturnCode:Lcom/facebook/rti/common/guavalite/base/Optional;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 402
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$2400(Lcom/facebook/rti/mqtt/protocol/MqttClient;)J

    move-result-wide v8

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 403
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$2500(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getNetworkSessionId()J

    move-result-wide v10

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 404
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1900(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Landroid/net/NetworkInfo;

    move-result-object v12

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 405
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$2600(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v13

    .line 396
    invoke-virtual/range {v1 .. v13}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttConnectionEventConnectAttempt(ZJLjava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;JJLandroid/net/NetworkInfo;Z)V

    .line 408
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$200(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_2

    .line 410
    iget-boolean v1, p1, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mSucceeded:Z

    if-eqz v1, :cond_7

    .line 411
    invoke-interface {v0, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->connectionEstablished(Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V

    .line 416
    :cond_2
    :goto_2
    iget-boolean v0, p1, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mSucceeded:Z

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$800(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;->maybeTopicsSubscribeAcked(I)V

    .line 419
    :cond_3
    return-void

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$2000(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mReason:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 389
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mReason:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 390
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_UNKNOWN_CONNECT_HASH:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    if-eq v0, v1, :cond_5

    iget-object v0, p1, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mReason:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 392
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    if-ne v0, v1, :cond_1

    .line 394
    :cond_5
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$2100(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->clearConnectPayloadHash()V

    goto/16 :goto_0

    .line 399
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 413
    :cond_7
    invoke-interface {v0, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->connectionFailed(Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V

    goto :goto_2
.end method

.method public onWriteMessageComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 423
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$500(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/common/time/MonotonicClock;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$2802(Lcom/facebook/rti/mqtt/protocol/MqttClient;J)J

    .line 424
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1300(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    move-result-object v0

    const-string v1, "O %s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->showSubstatus(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$2800(Lcom/facebook/rti/mqtt/protocol/MqttClient;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1402(Lcom/facebook/rti/mqtt/protocol/MqttClient;J)J

    .line 426
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$100(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$000(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->updateTrafficStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 429
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$300(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->onWriteOrReceive()V

    .line 430
    return-void
.end method

.method public reportError(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$200(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0, p2, p3, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;->errorReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    :cond_0
    return-void
.end method

.method public updateRefCode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$2900(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$2900(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v1, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$3000(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 437
    :cond_0
    return-void
.end method

.method public wakeUpAllThreadInObject()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$3100(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V

    .line 456
    return-void
.end method
