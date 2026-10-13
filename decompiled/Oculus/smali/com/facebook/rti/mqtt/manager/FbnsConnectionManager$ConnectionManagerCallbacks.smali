.class public interface abstract Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;
.super Ljava/lang/Object;
.source "FbnsConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionManagerCallbacks"
.end annotation


# virtual methods
.method public abstract errorReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract onClientFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract onConnectionConnecting()V
.end method

.method public abstract onConnectionEstablished()V
.end method

.method public abstract onConnectionLost(Lcom/facebook/rti/common/guavalite/base/Optional;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCredentialsChanged()V
.end method

.method public abstract onMessageReceived(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V
.end method

.method public abstract onMessageSent(Ljava/lang/String;I)V
.end method

.method public abstract onPublishArrived(Ljava/lang/String;[BIJLcom/facebook/rti/common/util/RtiWakeLock;)V
.end method

.method public abstract reportDataUsage(Ljava/lang/String;JZ)V
.end method

.method public abstract shouldBeConnected()Z
.end method
