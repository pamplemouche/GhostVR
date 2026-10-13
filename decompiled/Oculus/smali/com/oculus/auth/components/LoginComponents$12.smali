.class Lcom/oculus/auth/components/LoginComponents$12;
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
        "Lcom/oculus/horizon/api/twofac/TwoFactorVerifyResponse;",
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
    .line 365
    iput-object p1, p0, Lcom/oculus/auth/components/LoginComponents$12;->this$0:Lcom/oculus/auth/components/LoginComponents;

    iput-object p2, p0, Lcom/oculus/auth/components/LoginComponents$12;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 379
    const-string v0, "LoginComponents"

    const-string v1, "Two factor verification failed with error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$12;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 381
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/twofac/TwoFactorVerifyResponse;)V
    .locals 4

    .prologue
    .line 368
    new-instance v0, Lcom/oculus/auth/credentials/Credentials;

    iget-object v1, p1, Lcom/oculus/horizon/api/twofac/TwoFactorVerifyResponse;->uid:Ljava/lang/String;

    iget-object v2, p1, Lcom/oculus/horizon/api/twofac/TwoFactorVerifyResponse;->access_token:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/oculus/auth/credentials/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v1, "LoginComponents"

    const-string v2, "Received login response with access token [len=%s]"

    .line 373
    invoke-virtual {v0}, Lcom/oculus/auth/credentials/Credentials;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 370
    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    iget-object v1, p0, Lcom/oculus/auth/components/LoginComponents$12;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 365
    check-cast p1, Lcom/oculus/horizon/api/twofac/TwoFactorVerifyResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/auth/components/LoginComponents$12;->onResponse(Lcom/oculus/horizon/api/twofac/TwoFactorVerifyResponse;)V

    return-void
.end method
