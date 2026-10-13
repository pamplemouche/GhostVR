.class public Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;
.super Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;
.source "ConnectMqttMessage.java"


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getPayload()Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getPayload()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;

    return-object v0
.end method

.method public bridge synthetic getPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;->getPayload()Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;

    move-result-object v0

    return-object v0
.end method

.method public getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getVariableHeader()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;

    return-object v0
.end method

.method public bridge synthetic getVariableHeader()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;->getPayload()Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
