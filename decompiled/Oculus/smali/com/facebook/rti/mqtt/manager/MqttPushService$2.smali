.class Lcom/facebook/rti/mqtt/manager/MqttPushService$2;
.super Ljava/lang/Object;
.source "MqttPushService.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/manager/MqttPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/manager/MqttPushService;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->this$0:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public errorReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->this$0:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->errorReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 649
    return-void
.end method

.method public onClientFailed(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->this$0:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->onClientFailed(Ljava/lang/Throwable;)V

    .line 705
    return-void
.end method

.method public onConnectionConnecting()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->this$0:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->onConnectionConnecting()V

    .line 664
    return-void
.end method

.method public onConnectionEstablished()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->this$0:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->onConnectionEstablished()V

    .line 674
    return-void
.end method

.method public onConnectionLost(Lcom/facebook/rti/common/guavalite/base/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->this$0:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->onConnectionLost(Lcom/facebook/rti/common/guavalite/base/Optional;)V

    .line 659
    return-void
.end method

.method public onCredentialsChanged()V
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->this$0:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->onCredentialsChanged()V

    .line 679
    return-void
.end method

.method public onMessageReceived(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->this$0:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->onMessageReceived(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V

    .line 700
    return-void
.end method

.method public onMessageSent(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->this$0:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->onMessageSent(Ljava/lang/String;I)V

    .line 695
    return-void
.end method

.method public onPublishArrived(Ljava/lang/String;[BIJLcom/facebook/rti/common/util/RtiWakeLock;)V
    .locals 8

    .prologue
    .line 688
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->this$0:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->onPublishArrived(Ljava/lang/String;[BIJLcom/facebook/rti/common/util/RtiWakeLock;)V

    .line 690
    return-void
.end method

.method public reportDataUsage(Ljava/lang/String;JZ)V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->this$0:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->reportDataUsage(Ljava/lang/String;JZ)V

    .line 654
    return-void
.end method

.method public shouldBeConnected()Z
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->this$0:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->shouldBeConnected()Z

    move-result v0

    return v0
.end method
