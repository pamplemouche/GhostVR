.class Lcom/oculus/modules/MessengerModule$3;
.super Ljava/lang/Object;
.source "MessengerModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/MessengerModule;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$messageType:I

.field final synthetic val$rejectId:I

.field final synthetic val$resolveId:I


# direct methods
.method constructor <init>(Lcom/oculus/modules/MessengerModule;ILandroid/os/Bundle;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/MessengerModule;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/oculus/modules/MessengerModule$3;->this$0:Lcom/oculus/modules/MessengerModule;

    iput p2, p0, Lcom/oculus/modules/MessengerModule$3;->val$messageType:I

    iput-object p3, p0, Lcom/oculus/modules/MessengerModule$3;->val$bundle:Landroid/os/Bundle;

    iput p4, p0, Lcom/oculus/modules/MessengerModule$3;->val$resolveId:I

    iput p5, p0, Lcom/oculus/modules/MessengerModule$3;->val$rejectId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 394
    iget-object v4, p0, Lcom/oculus/modules/MessengerModule$3;->this$0:Lcom/oculus/modules/MessengerModule;

    invoke-static {v4}, Lcom/oculus/modules/MessengerModule;->access$600(Lcom/oculus/modules/MessengerModule;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    iget v4, p0, Lcom/oculus/modules/MessengerModule$3;->val$messageType:I

    invoke-static {v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 396
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/oculus/modules/MessengerModule$3;->this$0:Lcom/oculus/modules/MessengerModule;

    invoke-static {v4}, Lcom/oculus/modules/MessengerModule;->access$908(Lcom/oculus/modules/MessengerModule;)I

    move-result v1

    .line 397
    .local v1, "callId":I
    iget-object v4, p0, Lcom/oculus/modules/MessengerModule$3;->val$bundle:Landroid/os/Bundle;

    const-string v5, "call_id"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 398
    iget-object v4, p0, Lcom/oculus/modules/MessengerModule$3;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 399
    iget-object v4, p0, Lcom/oculus/modules/MessengerModule$3;->this$0:Lcom/oculus/modules/MessengerModule;

    invoke-static {v4}, Lcom/oculus/modules/MessengerModule;->access$1000(Lcom/oculus/modules/MessengerModule;)Landroid/os/Messenger;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 401
    :try_start_0
    iget-object v4, p0, Lcom/oculus/modules/MessengerModule$3;->this$0:Lcom/oculus/modules/MessengerModule;

    iget v5, p0, Lcom/oculus/modules/MessengerModule$3;->val$resolveId:I

    iget v6, p0, Lcom/oculus/modules/MessengerModule$3;->val$rejectId:I

    invoke-static {v4, v1, v5, v6}, Lcom/oculus/modules/MessengerModule;->access$1100(Lcom/oculus/modules/MessengerModule;III)V

    .line 402
    iget-object v4, p0, Lcom/oculus/modules/MessengerModule$3;->this$0:Lcom/oculus/modules/MessengerModule;

    invoke-static {v4}, Lcom/oculus/modules/MessengerModule;->access$400(Lcom/oculus/modules/MessengerModule;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v1    # "callId":I
    .end local v3    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 403
    .restart local v1    # "callId":I
    .restart local v3    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 404
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/oculus/modules/MessengerModule$3;->this$0:Lcom/oculus/modules/MessengerModule;

    iget v5, p0, Lcom/oculus/modules/MessengerModule$3;->val$rejectId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InvokeServicePending got remote exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oculus/modules/MessengerModule;->access$200(Lcom/oculus/modules/MessengerModule;ILjava/lang/String;)V

    goto :goto_0

    .line 407
    .end local v1    # "callId":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    new-instance v0, Lcom/oculus/modules/MessengerModule$ServiceCall;

    iget-object v4, p0, Lcom/oculus/modules/MessengerModule$3;->this$0:Lcom/oculus/modules/MessengerModule;

    invoke-direct {v0, v4, v5}, Lcom/oculus/modules/MessengerModule$ServiceCall;-><init>(Lcom/oculus/modules/MessengerModule;Lcom/oculus/modules/MessengerModule$1;)V

    .line 408
    .local v0, "call":Lcom/oculus/modules/MessengerModule$ServiceCall;
    iget v4, p0, Lcom/oculus/modules/MessengerModule$3;->val$messageType:I

    iput v4, v0, Lcom/oculus/modules/MessengerModule$ServiceCall;->messageType:I

    .line 409
    iget-object v4, p0, Lcom/oculus/modules/MessengerModule$3;->val$bundle:Landroid/os/Bundle;

    iput-object v4, v0, Lcom/oculus/modules/MessengerModule$ServiceCall;->bundle:Landroid/os/Bundle;

    .line 410
    iget v4, p0, Lcom/oculus/modules/MessengerModule$3;->val$resolveId:I

    iput v4, v0, Lcom/oculus/modules/MessengerModule$ServiceCall;->resolveId:I

    .line 411
    iget v4, p0, Lcom/oculus/modules/MessengerModule$3;->val$rejectId:I

    iput v4, v0, Lcom/oculus/modules/MessengerModule$ServiceCall;->rejectId:I

    .line 412
    iget-object v4, p0, Lcom/oculus/modules/MessengerModule$3;->this$0:Lcom/oculus/modules/MessengerModule;

    invoke-static {v4}, Lcom/oculus/modules/MessengerModule;->access$1300(Lcom/oculus/modules/MessengerModule;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Trying to InvokeService before messenger service is initialised, queueing call for later..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
