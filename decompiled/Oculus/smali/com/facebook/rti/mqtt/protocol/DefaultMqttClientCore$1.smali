.class Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;
.super Ljava/lang/Object;
.source "DefaultMqttClientCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->connect(Ljava/lang/String;IZLcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$onConnectKeepaliveS:I

.field final synthetic val$payload:Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;

.field final synthetic val$port:I

.field final synthetic val$useConnectHash:Z

.field final synthetic val$useSsl:Z


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;Ljava/lang/String;IZLcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;IZ)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->this$0:Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->val$host:Ljava/lang/String;

    iput p3, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->val$port:I

    iput-boolean p4, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->val$useConnectHash:Z

    iput-object p5, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->val$payload:Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;

    iput p6, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->val$onConnectKeepaliveS:I

    iput-boolean p7, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->val$useSsl:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->this$0:Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->val$host:Ljava/lang/String;

    iget v2, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->val$port:I

    iget-boolean v3, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->val$useConnectHash:Z

    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->val$payload:Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;

    iget v5, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->val$onConnectKeepaliveS:I

    iget-boolean v6, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->val$useSsl:Z

    .line 149
    invoke-static/range {v0 .. v6}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->access$000(Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;Ljava/lang/String;IZLcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;IZ)Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    move-result-object v0

    .line 151
    iget-boolean v1, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mSucceeded:Z

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->this$0:Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->cleanUpStates()V

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->this$0:Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->access$100(Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;)Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->onConnectAttempted(Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V

    .line 155
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->this$0:Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->access$200(Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 161
    const-string v1, "DefaultMqttClientCore"

    const-string v2, "exception/networkThreadLoop"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->this$0:Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->access$100(Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;)Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->handleClientException(Ljava/lang/Throwable;)V

    .line 163
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->this$0:Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->access$100(Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;)Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    move-result-object v1

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->UNKNOWN_RUNTIME:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/Operation;->NETWORK_THREAD_LOOP:Lcom/facebook/rti/mqtt/protocol/Operation;

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->disconnectOnError(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V

    .line 165
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;->this$0:Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->access$100(Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;)Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    move-result-object v1

    const-string v2, "Mqtt Unhandled Exception"

    const-string v3, "Unhandled exception in Mqtt networkThreadLoop"

    invoke-interface {v1, v0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
