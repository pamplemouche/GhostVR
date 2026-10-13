.class Lcom/oculus/auth/components/FbAuthHelper$1;
.super Ljava/lang/Object;
.source "FbAuthHelper.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/components/FbAuthHelper;->loginWithFbAuthAsync(Ljava/lang/String;Lcom/oculus/auth/components/AuthAction;)Lbolts/Task;
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
        "Lcom/oculus/auth/api/LoginWithFbAuthResponse;",
        "Lcom/oculus/auth/api/LoginWithFbAuthResponse$LoginSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/components/FbAuthHelper;


# direct methods
.method constructor <init>(Lcom/oculus/auth/components/FbAuthHelper;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/oculus/auth/components/FbAuthHelper$1;->this$0:Lcom/oculus/auth/components/FbAuthHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/oculus/auth/api/LoginWithFbAuthResponse$LoginSession;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/auth/api/LoginWithFbAuthResponse;",
            ">;)",
            "Lcom/oculus/auth/api/LoginWithFbAuthResponse$LoginSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/api/LoginWithFbAuthResponse;

    .line 38
    iget-object v1, v0, Lcom/oculus/auth/api/LoginWithFbAuthResponse;->loginSession:Lcom/oculus/auth/api/LoginWithFbAuthResponse$LoginSession;

    if-eqz v1, :cond_0

    .line 39
    iget-object v0, v0, Lcom/oculus/auth/api/LoginWithFbAuthResponse;->loginSession:Lcom/oculus/auth/api/LoginWithFbAuthResponse$LoginSession;

    return-object v0

    .line 40
    :cond_0
    iget-object v1, v0, Lcom/oculus/auth/api/LoginWithFbAuthResponse;->prefilledAccountInfo:Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;

    if-eqz v1, :cond_1

    .line 41
    new-instance v1, Lcom/oculus/auth/components/NoLinkedAccountError;

    iget-object v2, v0, Lcom/oculus/auth/api/LoginWithFbAuthResponse;->prefilledAccountInfo:Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;

    iget-object v0, v0, Lcom/oculus/auth/api/LoginWithFbAuthResponse;->existingEmailConflict:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/oculus/auth/components/NoLinkedAccountError;-><init>(Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_1
    new-instance v0, Lcom/oculus/auth/components/UnexpectedResponseError;

    invoke-direct {v0}, Lcom/oculus/auth/components/UnexpectedResponseError;-><init>()V

    throw v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/oculus/auth/components/FbAuthHelper$1;->then(Lbolts/Task;)Lcom/oculus/auth/api/LoginWithFbAuthResponse$LoginSession;

    move-result-object v0

    return-object v0
.end method
