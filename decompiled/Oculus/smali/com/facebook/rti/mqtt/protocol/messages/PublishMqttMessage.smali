.class public Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;
.super Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;
.source "PublishMqttMessage.java"


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;[B)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic getPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getPayload()[B

    move-result-object v0

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getPayload()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getVariableHeader()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    return-object v0
.end method

.method public bridge synthetic getVariableHeader()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
