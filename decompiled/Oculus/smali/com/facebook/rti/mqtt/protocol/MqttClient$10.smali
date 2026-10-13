.class Lcom/facebook/rti/mqtt/protocol/MqttClient$10;
.super Ljava/lang/Object;
.source "MqttClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/protocol/MqttClient;->acknowledgePing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V
    .locals 0

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$10;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1093
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$10;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$3700(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$10;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$600(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientCore;->sendPingRespMessage()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    :cond_0
    :goto_0
    return-void

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    const-string v1, "MqttClient"

    const-string v2, "exception/ping"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1098
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$10;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1099
    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->getFromWriteException(Ljava/lang/Throwable;)Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    move-result-object v2

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/Operation;->PINGRESP:Lcom/facebook/rti/mqtt/protocol/Operation;

    .line 1098
    invoke-static {v1, v2, v3, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1500(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
