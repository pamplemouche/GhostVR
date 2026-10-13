.class public Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;
.super Ljava/lang/Object;
.source "MqttMessage.java"


# instance fields
.field private final mFixedHeader:Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

.field private final mPayload:Ljava/lang/Object;

.field private final mVariableHeader:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->mFixedHeader:Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    .line 17
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->mVariableHeader:Ljava/lang/Object;

    .line 18
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->mPayload:Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public getFixedHeader()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->mFixedHeader:Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    return-object v0
.end method

.method public getMessageType()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->mFixedHeader:Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mMessageType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    return-object v0
.end method

.method public getPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->mPayload:Ljava/lang/Object;

    return-object v0
.end method

.method public getVariableHeader()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->mVariableHeader:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->mFixedHeader:Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mMessageType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->mFixedHeader:Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    iget v1, v1, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mQosLevel:I

    .line 41
    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->fromInt(I)Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
