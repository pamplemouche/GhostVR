.class Lcom/oculus/auth/service/AuthManager$6;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "AuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/service/AuthManager;->performSendTwoFactorCode(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Ljava/lang/Void;",
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
    .line 556
    iput-object p1, p0, Lcom/oculus/auth/service/AuthManager$6;->this$0:Lcom/oculus/auth/service/AuthManager;

    iput-object p2, p0, Lcom/oculus/auth/service/AuthManager$6;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/oculus/auth/service/AuthManager$6;->val$receiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/oculus/auth/service/AuthManager;->notifyReceiver(Landroid/os/ResultReceiver;ILjava/lang/Exception;)V

    .line 565
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 556
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/auth/service/AuthManager$6;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/oculus/auth/service/AuthManager$6;->val$receiver:Landroid/os/ResultReceiver;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/oculus/auth/service/AuthManager;->access$300(Landroid/os/ResultReceiver;I)V

    .line 560
    return-void
.end method
