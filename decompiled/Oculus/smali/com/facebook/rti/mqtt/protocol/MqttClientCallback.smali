.class public interface abstract Lcom/facebook/rti/mqtt/protocol/MqttClientCallback;
.super Ljava/lang/Object;
.source "MqttClientCallback.java"


# virtual methods
.method public abstract connectionEstablished(Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V
.end method

.method public abstract connectionFailed(Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V
.end method

.method public abstract connectionLost(Ljava/lang/String;)V
.end method

.method public abstract errorReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract handleClientException(Ljava/lang/Throwable;)V
.end method

.method public abstract messageReceived(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;J)V
.end method

.method public abstract messageSent(Ljava/lang/String;I)V
.end method

.method public abstract onPublishFailed(ILjava/lang/Throwable;)V
.end method

.method public abstract pingSent()V
.end method

.method public abstract publishAcknowledged(I)V
.end method

.method public abstract publishArrived(Ljava/lang/String;[BIZJLcom/facebook/rti/common/util/RtiWakeLock;)V
.end method

.method public abstract reportDataUsage(Ljava/lang/String;JZ)V
.end method
