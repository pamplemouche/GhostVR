.class Lcom/facebook/rti/mqtt/protocol/MqttClient$8;
.super Ljava/lang/Object;
.source "MqttClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/protocol/MqttClient;->disconnectWithOperation(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

.field final synthetic val$op:Lcom/facebook/rti/mqtt/protocol/Operation;

.field final synthetic val$reason:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$8;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$8;->val$reason:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$8;->val$op:Lcom/facebook/rti/mqtt/protocol/Operation;

    iput-object p4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$8;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 845
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$8;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$8;->val$reason:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$8;->val$op:Lcom/facebook/rti/mqtt/protocol/Operation;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$8;->val$throwable:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$1500(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V

    .line 846
    return-void
.end method
