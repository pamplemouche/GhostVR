.class public interface abstract Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;
.super Ljava/lang/Object;
.source "MessagePayloadEncoder.java"


# virtual methods
.method public abstract getConnectSubscribeTopics(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleConnectMessage(Ljava/io/DataOutputStream;Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
