.class Lcom/oculus/auth/service/AuthManager$4;
.super Ljava/lang/Object;
.source "AuthManager.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/service/AuthManager;->fetchTwoFacMethodsForLoginAsync(Lbolts/Task;)Lbolts/Task;
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

.field final synthetic val$apiError:Lcom/oculus/http/core/base/ApiError;

.field final synthetic val$nonce:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/auth/service/AuthManager;Lcom/oculus/http/core/base/ApiError;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/oculus/auth/service/AuthManager$4;->this$0:Lcom/oculus/auth/service/AuthManager;

    iput-object p2, p0, Lcom/oculus/auth/service/AuthManager$4;->val$apiError:Lcom/oculus/http/core/base/ApiError;

    iput-object p3, p0, Lcom/oculus/auth/service/AuthManager$4;->val$nonce:Ljava/lang/String;

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
    .line 463
    invoke-virtual {p0, p1}, Lcom/oculus/auth/service/AuthManager$4;->then(Lbolts/Task;)Ljava/lang/Void;

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
    .line 466
    new-instance v1, Lcom/oculus/auth/components/TwoFactorLoginRequiredError;

    iget-object v2, p0, Lcom/oculus/auth/service/AuthManager$4;->val$apiError:Lcom/oculus/http/core/base/ApiError;

    iget-object v3, p0, Lcom/oculus/auth/service/AuthManager$4;->val$nonce:Ljava/lang/String;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/twofac/TwoFactorMethodsResponse;

    iget-object v0, v0, Lcom/oculus/horizon/api/twofac/TwoFactorMethodsResponse;->methods:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v0}, Lcom/oculus/auth/components/TwoFactorLoginRequiredError;-><init>(Lcom/oculus/http/core/base/ApiError;Ljava/lang/String;Ljava/util/ArrayList;)V

    throw v1
.end method
