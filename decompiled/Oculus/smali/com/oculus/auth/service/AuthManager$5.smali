.class Lcom/oculus/auth/service/AuthManager$5;
.super Ljava/lang/Object;
.source "AuthManager.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/service/AuthManager;->performFetchTwoFactorMethods(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lcom/oculus/horizon/api/twofac/TwoFactorMethodsResponse;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/service/AuthManager;

.field final synthetic val$nonce:Ljava/lang/String;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/auth/service/AuthManager;Landroid/os/ResultReceiver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/oculus/auth/service/AuthManager$5;->this$0:Lcom/oculus/auth/service/AuthManager;

    iput-object p2, p0, Lcom/oculus/auth/service/AuthManager$5;->val$receiver:Landroid/os/ResultReceiver;

    iput-object p3, p0, Lcom/oculus/auth/service/AuthManager$5;->val$nonce:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lcom/oculus/auth/service/AuthManager$5;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/api/twofac/TwoFactorMethodsResponse;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 508
    iget-object v0, p0, Lcom/oculus/auth/service/AuthManager$5;->val$receiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_0

    .line 525
    :goto_0
    return-object v3

    .line 511
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 513
    const-string v1, "AuthManager"

    const-string v2, "Api error when fetching two factor methods."

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 514
    iget-object v1, p0, Lcom/oculus/auth/service/AuthManager$5;->val$receiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/oculus/auth/service/AuthManager;->notifyReceiver(Landroid/os/ResultReceiver;ILjava/lang/Exception;)V

    goto :goto_0

    .line 517
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 518
    const-string v0, "nonce"

    iget-object v2, p0, Lcom/oculus/auth/service/AuthManager$5;->val$nonce:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/twofac/TwoFactorMethodsResponse;

    iget-object v0, v0, Lcom/oculus/horizon/api/twofac/TwoFactorMethodsResponse;->methods:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/oculus/auth/api/AuthDataHelper;->convertTwoFactorMethods(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 521
    const-string/jumbo v2, "two_factor_methods"

    .line 523
    invoke-static {v0}, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->marshallParcelableList(Ljava/util/List;)[B

    move-result-object v0

    .line 521
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 524
    iget-object v0, p0, Lcom/oculus/auth/service/AuthManager$5;->val$receiver:Landroid/os/ResultReceiver;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
