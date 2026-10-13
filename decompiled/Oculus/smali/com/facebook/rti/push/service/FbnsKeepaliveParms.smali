.class public Lcom/facebook/rti/push/service/FbnsKeepaliveParms;
.super Ljava/lang/Object;
.source "FbnsKeepaliveParms.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;


# instance fields
.field private final mFbnsConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsKeepaliveParms;->mFbnsConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    .line 14
    return-void
.end method


# virtual methods
.method public getBackgroundDefaultS()I
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsKeepaliveParms;->mFbnsConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackgroundKeepaliveIntervalPersistent:I

    return v0
.end method

.method public getForegroundKeepaliveS()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsKeepaliveParms;->mFbnsConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mForegroundKeepaliveInterval:I

    return v0
.end method

.method public getPingDelayS()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsKeepaliveParms;->mFbnsConnectionConfigManager:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPingDelayS:I

    return v0
.end method
