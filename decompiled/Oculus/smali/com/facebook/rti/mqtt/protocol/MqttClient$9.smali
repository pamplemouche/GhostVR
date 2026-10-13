.class Lcom/facebook/rti/mqtt/protocol/MqttClient$9;
.super Ljava/lang/Object;
.source "MqttClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/protocol/MqttClient;->acknowledgePublication(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

.field final synthetic val$fbTraceNode:Ljava/lang/Object;

.field final synthetic val$msgId:I


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$9;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iput p2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$9;->val$msgId:I

    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$9;->val$fbTraceNode:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1072
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$9;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$600(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

    move-result-object v0

    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$9;->val$msgId:I

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$9;->val$fbTraceNode:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClientCore;->sendPubAck(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    :goto_0
    return-void

    .line 1073
    :catch_0
    move-exception v0

    .line 1077
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$9;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$3600(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    move-result-object v1

    const-string v2, "Mqtt Uncaught Exception"

    const-string/jumbo v3, "sendPubAck"

    invoke-interface {v1, v0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$9;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1079
    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->getFromWriteException(Ljava/lang/Throwable;)Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    move-result-object v2

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/Operation;->PUBACK:Lcom/facebook/rti/mqtt/protocol/Operation;

    .line 1078
    invoke-static {v1, v2, v3, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1500(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
