.class public interface abstract Lcom/facebook/rti/mqtt/credentials/MqttCredentials;
.super Ljava/lang/Object;
.source "MqttCredentials.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract clearConnectPayloadHash()V
.end method

.method public abstract getClientType()Ljava/lang/String;
.end method

.method public abstract getConnectPayloadHash()Ljava/lang/String;
.end method

.method public abstract getKeySecretPair()Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;
.end method

.method public abstract setConnectPayloadHash(Ljava/lang/String;)V
.end method

.method public abstract update(Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;)Z
.end method
