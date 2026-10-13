.class public interface abstract Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;
.super Ljava/lang/Object;
.source "MqttClientTopicSubscriptionCallback.java"


# virtual methods
.method public abstract maybePublishReceived(Ljava/lang/String;)V
.end method

.method public abstract maybeTopicsSubscribeAcked(I)V
.end method

.method public abstract maybeTopicsUnSubscribeAcked(I)V
.end method

.method public abstract onMqttDisconnected(Ljava/lang/String;)V
.end method

.method public abstract onTopicsSubscribeSent(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onTopicsUnSubscribeSent(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract resetAll()V
.end method
