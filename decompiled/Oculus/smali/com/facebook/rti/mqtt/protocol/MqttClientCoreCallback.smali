.class public interface abstract Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;
.super Ljava/lang/Object;
.source "MqttClientCoreCallback.java"


# virtual methods
.method public abstract checkConnectionState(Lcom/facebook/rti/mqtt/protocol/ConnectionState;)Z
.end method

.method public abstract disconnectOnError(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V
.end method

.method public abstract getMqttSessionId()J
.end method

.method public abstract getNetworkInfo()Landroid/net/NetworkInfo;
.end method

.method public abstract getNetworkSessionId()J
.end method

.method public abstract handleClientException(Ljava/lang/Throwable;)V
.end method

.method public abstract messageReceived(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V
.end method

.method public abstract notifyPubAckResult(ZLjava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract notifyStateChange(Lcom/facebook/rti/mqtt/protocol/ConnectionState;)V
.end method

.method public abstract onConnectAttempted(Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V
.end method

.method public abstract onWriteMessageComplete(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportError(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateRefCode(Ljava/lang/String;)V
.end method

.method public abstract wakeUpAllThreadInObject()V
.end method
