.class Lcom/oculus/modules/MessengerModule$2;
.super Ljava/lang/Object;
.source "MessengerModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/MessengerModule;->AddPendingCall(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/MessengerModule;

.field final synthetic val$callId:I


# direct methods
.method constructor <init>(Lcom/oculus/modules/MessengerModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/MessengerModule;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/oculus/modules/MessengerModule$2;->this$0:Lcom/oculus/modules/MessengerModule;

    iput p2, p0, Lcom/oculus/modules/MessengerModule$2;->val$callId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 380
    iget-object v1, p0, Lcom/oculus/modules/MessengerModule$2;->this$0:Lcom/oculus/modules/MessengerModule;

    invoke-static {v1}, Lcom/oculus/modules/MessengerModule;->access$800(Lcom/oculus/modules/MessengerModule;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/oculus/modules/MessengerModule$2;->val$callId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/modules/MessengerModule$PendingAsyncCall;

    .line 381
    .local v0, "call":Lcom/oculus/modules/MessengerModule$PendingAsyncCall;
    if-eqz v0, :cond_0

    .line 382
    iget-object v1, p0, Lcom/oculus/modules/MessengerModule$2;->this$0:Lcom/oculus/modules/MessengerModule;

    iget v2, v0, Lcom/oculus/modules/MessengerModule$PendingAsyncCall;->rejectId:I

    const-string v3, "Call timed out waiting for response from messenger service"

    invoke-static {v1, v2, v3}, Lcom/oculus/modules/MessengerModule;->access$200(Lcom/oculus/modules/MessengerModule;ILjava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/oculus/modules/MessengerModule$2;->this$0:Lcom/oculus/modules/MessengerModule;

    invoke-static {v1}, Lcom/oculus/modules/MessengerModule;->access$800(Lcom/oculus/modules/MessengerModule;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/oculus/modules/MessengerModule$2;->val$callId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 385
    :cond_0
    return-void
.end method
