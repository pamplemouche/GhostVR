.class Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$5;
.super Ljava/lang/Object;
.source "FbnsConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->messageSent(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

.field final synthetic val$msgId:I

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1440
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$5;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$5;->val$type:Ljava/lang/String;

    iput p3, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$5;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$5;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$5;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->access$700(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;)Lcom/facebook/rti/mqtt/protocol/MqttClient;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$5;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$100(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$5;->val$type:Ljava/lang/String;

    iget v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$5;->val$msgId:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;->onMessageSent(Ljava/lang/String;I)V

    .line 1446
    :cond_0
    return-void
.end method
