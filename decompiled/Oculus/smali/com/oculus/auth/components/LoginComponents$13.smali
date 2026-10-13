.class Lcom/oculus/auth/components/LoginComponents$13;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "LoginComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/components/LoginComponents;->verifyLoginAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/login/LoginResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/components/LoginComponents;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/auth/components/LoginComponents;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/oculus/auth/components/LoginComponents$13;->this$0:Lcom/oculus/auth/components/LoginComponents;

    iput-object p2, p0, Lcom/oculus/auth/components/LoginComponents$13;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 403
    const-string v0, "LoginComponents"

    const-string v1, "Login approvals failed with error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$13;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 405
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/login/LoginResponse;)V
    .locals 4

    .prologue
    .line 391
    new-instance v0, Lcom/oculus/auth/credentials/Credentials;

    iget-object v1, p1, Lcom/oculus/horizon/api/login/LoginResponse;->uid:Ljava/lang/String;

    iget-object v2, p1, Lcom/oculus/horizon/api/login/LoginResponse;->access_token:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/oculus/auth/credentials/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v1, "LoginComponents"

    const-string v2, "Received login response with access token [len=%s]"

    .line 396
    invoke-virtual {v0}, Lcom/oculus/auth/credentials/Credentials;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 393
    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    iget-object v1, p0, Lcom/oculus/auth/components/LoginComponents$13;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 399
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 388
    check-cast p1, Lcom/oculus/horizon/api/login/LoginResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/auth/components/LoginComponents$13;->onResponse(Lcom/oculus/horizon/api/login/LoginResponse;)V

    return-void
.end method
