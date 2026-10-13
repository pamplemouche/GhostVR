.class public Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallbackNoOp;
.super Ljava/lang/Object;
.source "MqttClientTopicSubscriptionCallbackNoOp.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/protocol/MqttClientTopicSubscriptionCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public maybePublishReceived(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public maybeTopicsSubscribeAcked(I)V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public maybeTopicsUnSubscribeAcked(I)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public onMqttDisconnected(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public onTopicsSubscribeSent(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 18
    return-void
.end method

.method public onTopicsUnSubscribeSent(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 24
    return-void
.end method

.method public resetAll()V
    .locals 0

    .prologue
    .line 12
    return-void
.end method
