.class Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$4;
.super Ljava/lang/Object;
.source "FbnsConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$4;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 671
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$4;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$4;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->PING_UNRECEIVED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    sget-object v3, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->CONNECTION_LOST:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->disconnectInternal(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;

    .line 675
    return-void
.end method
