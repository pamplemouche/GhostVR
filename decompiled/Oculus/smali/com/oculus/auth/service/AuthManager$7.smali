.class Lcom/oculus/auth/service/AuthManager$7;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "AuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/service/AuthManager;->performResendLoginApprovalsCode(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/loginapprovals/ResendConfirmationCodeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/service/AuthManager;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/auth/service/AuthManager;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/oculus/auth/service/AuthManager$7;->this$0:Lcom/oculus/auth/service/AuthManager;

    iput-object p2, p0, Lcom/oculus/auth/service/AuthManager$7;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/oculus/auth/service/AuthManager$7;->val$receiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/oculus/auth/service/AuthManager;->notifyReceiver(Landroid/os/ResultReceiver;ILjava/lang/Exception;)V

    .line 589
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/loginapprovals/ResendConfirmationCodeResponse;)V
    .locals 2

    .prologue
    .line 579
    iget-boolean v0, p1, Lcom/oculus/horizon/api/loginapprovals/ResendConfirmationCodeResponse;->success:Z

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/oculus/auth/service/AuthManager$7;->val$receiver:Landroid/os/ResultReceiver;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/oculus/auth/service/AuthManager;->access$300(Landroid/os/ResultReceiver;I)V

    .line 584
    :goto_0
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/oculus/auth/service/AuthManager$7;->val$receiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/auth/service/AuthManager;->access$300(Landroid/os/ResultReceiver;I)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 576
    check-cast p1, Lcom/oculus/horizon/api/loginapprovals/ResendConfirmationCodeResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/auth/service/AuthManager$7;->onResponse(Lcom/oculus/horizon/api/loginapprovals/ResendConfirmationCodeResponse;)V

    return-void
.end method
