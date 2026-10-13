.class Lcom/facebook/rti/mqtt/manager/MqttOperationManager$1;
.super Ljava/lang/Object;
.source "MqttOperationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->addPendingOperation(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;II)Lcom/facebook/rti/mqtt/manager/MqttOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

.field final synthetic val$operation:Lcom/facebook/rti/mqtt/manager/MqttOperation;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttOperationManager;Lcom/facebook/rti/mqtt/manager/MqttOperation;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$1;->this$0:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$1;->val$operation:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$1;->this$0:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$1;->val$operation:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->access$000(Lcom/facebook/rti/mqtt/manager/MqttOperationManager;Lcom/facebook/rti/mqtt/manager/MqttOperation;)V

    .line 98
    return-void
.end method
