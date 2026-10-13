.class Lcom/oculus/horizon/fbconnect/FBConnectHelper$6;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "FBConnectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnect/FBConnectHelper;->reauthAsync(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnect/FBConnectHelper;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$6;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    iput-object p2, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$6;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$6;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 490
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;)V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$6;->val$tcs:Lbolts/TaskCompletionSource;

    iget-object v1, p1, Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;->facebook_account:Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 485
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 481
    check-cast p1, Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper$6;->onResponse(Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;)V

    return-void
.end method
