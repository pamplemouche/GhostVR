.class public interface abstract Lcom/facebook/rti/mqtt/protocol/MqttClientCore;
.super Ljava/lang/Object;
.source "MqttClientCore.java"


# virtual methods
.method public abstract cleanUpStates()V
.end method

.method public abstract connect(Ljava/lang/String;IZLcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;IZ)V
.end method

.method public abstract decodeTopicName(Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;)Ljava/lang/String;
.end method

.method public abstract getClientStack()B
.end method

.method public abstract getConnectInfoForUserReport()Ljava/lang/String;
.end method

.method public abstract getRemoteSocketAddress()Ljava/lang/String;
.end method

.method public abstract sendPingReqMessage()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendPingRespMessage()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendPubAck(ILjava/lang/Object;)V
.end method

.method public abstract sendPublishMessage(Ljava/lang/String;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendSubscribeMessage(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendUnsubscribeMessage(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setCallbacks(Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;)V
.end method

.method public abstract stopConnectingIfConnectNotSent()V
.end method
