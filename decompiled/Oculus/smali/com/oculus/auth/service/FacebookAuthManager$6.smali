.class Lcom/oculus/auth/service/FacebookAuthManager$6;
.super Ljava/lang/Object;
.source "FacebookAuthManager.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/service/FacebookAuthManager;->performFBPollForApproval(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/oculus/auth/api/CheckApprovedMachineResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/service/FacebookAuthManager;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/auth/service/FacebookAuthManager;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/oculus/auth/service/FacebookAuthManager$6;->this$0:Lcom/oculus/auth/service/FacebookAuthManager;

    iput-object p2, p0, Lcom/oculus/auth/service/FacebookAuthManager$6;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 3

    .prologue
    .line 233
    invoke-static {}, Lcom/oculus/auth/service/FacebookAuthManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failure = %s"

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/oculus/auth/service/FacebookAuthManager$6;->val$receiver:Landroid/os/ResultReceiver;

    invoke-static {v0, p1}, Lcom/oculus/auth/service/FacebookAuthManager;->notifyReceiverWithError(Landroid/os/ResultReceiver;Ljava/lang/Exception;)V

    .line 235
    return-void
.end method

.method public success(Lcom/oculus/auth/api/CheckApprovedMachineResponse;Lretrofit/client/Response;)V
    .locals 3

    .prologue
    .line 222
    invoke-static {}, Lcom/oculus/auth/service/FacebookAuthManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "success with response isApproved = %s"

    .line 224
    invoke-virtual {p1}, Lcom/oculus/auth/api/CheckApprovedMachineResponse;->isApproved()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 221
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/oculus/auth/service/FacebookAuthManager$6;->val$receiver:Landroid/os/ResultReceiver;

    const/4 v1, -0x1

    .line 228
    invoke-virtual {p1}, Lcom/oculus/auth/api/CheckApprovedMachineResponse;->getResultBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 225
    invoke-static {v0, v1, v2}, Lcom/oculus/auth/service/FacebookAuthManager;->access$400(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    .line 229
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 217
    check-cast p1, Lcom/oculus/auth/api/CheckApprovedMachineResponse;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/auth/service/FacebookAuthManager$6;->success(Lcom/oculus/auth/api/CheckApprovedMachineResponse;Lretrofit/client/Response;)V

    return-void
.end method
