.class public Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory;
.super Ljava/lang/Object;
.source "MessageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory$1;->$SwitchMap$com$facebook$rti$mqtt$protocol$messages$MessageType:[I

    iget-object v1, p1, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mMessageType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mMessageType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 73
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :pswitch_0
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;

    check-cast p2, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;

    check-cast p3, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;)V

    .line 69
    :goto_0
    return-object v0

    .line 37
    :pswitch_1
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;

    check-cast p2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;

    check-cast p3, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;)V

    goto :goto_0

    .line 41
    :pswitch_2
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;

    check-cast p2, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    check-cast p3, Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;)V

    goto :goto_0

    .line 45
    :pswitch_3
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;

    check-cast p2, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    check-cast p3, Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;)V

    goto :goto_0

    .line 49
    :pswitch_4
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;

    check-cast p2, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    check-cast p3, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;)V

    goto :goto_0

    .line 53
    :pswitch_5
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    check-cast p2, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    check-cast p3, [B

    check-cast p3, [B

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;[B)V

    goto :goto_0

    .line 57
    :pswitch_6
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    invoke-direct {v0, p1, v2, v2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :pswitch_7
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    invoke-direct {v0, p1, v2, v2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :pswitch_8
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    invoke-direct {v0, p1, v2, v2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :pswitch_9
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;

    check-cast p2, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    invoke-direct {v0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;)V

    goto :goto_0

    .line 69
    :pswitch_a
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;

    check-cast p2, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    invoke-direct {v0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;)V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
