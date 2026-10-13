.class Lcom/oculus/auth/service/FacebookAuthManager$8;
.super Ljava/lang/Object;
.source "FacebookAuthManager.java"

# interfaces
.implements Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/service/FacebookAuthManager;->performFBLinkAccount(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/service/FacebookAuthManager;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/auth/service/FacebookAuthManager;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/oculus/auth/service/FacebookAuthManager$8;->this$0:Lcom/oculus/auth/service/FacebookAuthManager;

    iput-object p2, p0, Lcom/oculus/auth/service/FacebookAuthManager$8;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFBAccountLinkError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 395
    invoke-static {}, Lcom/oculus/auth/service/FacebookAuthManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFBAccountLinkError"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    iget-object v0, p0, Lcom/oculus/auth/service/FacebookAuthManager$8;->val$receiver:Landroid/os/ResultReceiver;

    invoke-static {v0, p1}, Lcom/oculus/auth/service/FacebookAuthManager;->notifyReceiverWithError(Landroid/os/ResultReceiver;Ljava/lang/Exception;)V

    .line 397
    return-void
.end method

.method public onFBAccountLinkSuccess()V
    .locals 3

    .prologue
    .line 389
    invoke-static {}, Lcom/oculus/auth/service/FacebookAuthManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFBAccountLinkSuccess"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/oculus/auth/service/FacebookAuthManager$8;->val$receiver:Landroid/os/ResultReceiver;

    const/4 v1, -0x1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/oculus/auth/service/FacebookAuthManager;->access$400(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    .line 391
    return-void
.end method

.method public onFBAccountUnlinkError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 403
    return-void
.end method

.method public onFBAccountUnlinkSuccess()V
    .locals 0

    .prologue
    .line 400
    return-void
.end method

.method public onFBAuthCancelled()V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method public onFBAuthError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/oculus/auth/service/FacebookAuthManager$8;->onFBAccountLinkError(Lcom/oculus/http/core/base/ApiError;)V

    .line 382
    return-void
.end method

.method public onFBAuthSuccess(Lcom/facebook/AccessToken;)V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public onFBDataFetchComplete(Lcom/oculus/horizon/fbconnect/FacebookData;)V
    .locals 0
    .param p1    # Lcom/oculus/horizon/fbconnect/FacebookData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 374
    return-void
.end method

.method public onFBSyncFriendsError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 409
    return-void
.end method

.method public onFBSyncFriendsSuccess()V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public onFBUnsyncFriendsError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 415
    return-void
.end method

.method public onFBUnsyncFriendsSuccess()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method
