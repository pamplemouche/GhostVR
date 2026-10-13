.class Lcom/oculus/horizon/fbconnect/FBConnectHelper$3;
.super Ljava/lang/Object;
.source "FBConnectHelper.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnect/FBConnectHelper;->doFBAuth(Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$3;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 376
    invoke-static {}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FB login cancelled"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$3;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$000(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$3;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$000(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;->onFBAuthCancelled()V

    .line 381
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 5

    .prologue
    .line 385
    invoke-static {}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FB login failed with exception: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$3;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$000(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$3;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$000(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;->onFBAuthError(Lcom/oculus/http/core/base/ApiError;)V

    .line 390
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$3;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$000(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$3;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$000(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;->onFBAuthSuccess(Lcom/facebook/AccessToken;)V

    .line 372
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 366
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper$3;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
