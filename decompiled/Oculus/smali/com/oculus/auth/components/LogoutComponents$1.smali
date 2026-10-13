.class Lcom/oculus/auth/components/LogoutComponents$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "LogoutComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/components/LogoutComponents;->logoutAsync()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/logout/LogoutResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/components/LogoutComponents;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/auth/components/LogoutComponents;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oculus/auth/components/LogoutComponents$1;->this$0:Lcom/oculus/auth/components/LogoutComponents;

    iput-object p2, p0, Lcom/oculus/auth/components/LogoutComponents$1;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 66
    const-string v0, "LogoutComponents"

    const-string v1, "Api error when calling logout."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/oculus/auth/components/LogoutComponents$1;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 69
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/logout/LogoutResponse;)V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/oculus/horizon/api/logout/LogoutResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "LogoutComponents"

    const-string v1, "Successfully logged out user"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/oculus/auth/components/LogoutComponents$1;->this$0:Lcom/oculus/auth/components/LogoutComponents;

    invoke-virtual {v0}, Lcom/oculus/auth/components/LogoutComponents;->clear()V

    .line 56
    iget-object v0, p0, Lcom/oculus/auth/components/LogoutComponents$1;->val$tcs:Lbolts/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v0, "LogoutComponents"

    const-string v1, "Error logging the user out."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/oculus/auth/components/LogoutComponents$1;->val$tcs:Lbolts/TaskCompletionSource;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Was not successful"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Lcom/oculus/horizon/api/logout/LogoutResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/auth/components/LogoutComponents$1;->onResponse(Lcom/oculus/horizon/api/logout/LogoutResponse;)V

    return-void
.end method
