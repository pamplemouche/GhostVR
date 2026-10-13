.class Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$1;
.super Ljava/lang/Object;
.source "Nux360FBLoginConnectPresenter.java"

# interfaces
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->link(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/authapi/AuthResultCallback",
        "<",
        "Ljava/lang/Void;",
        "Lcom/oculus/authapi/AuthLoginError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/oculus/authapi/AuthError;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Lcom/oculus/authapi/AuthLoginError;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$1;->onError(Lcom/oculus/authapi/AuthLoginError;)V

    return-void
.end method

.method public onError(Lcom/oculus/authapi/AuthLoginError;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;->hideLoading()V

    .line 103
    if-nez p1, :cond_2

    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    const-string v1, "login_failure"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;->showInvalidCredentialsError()V

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p1}, Lcom/oculus/authapi/AuthLoginError;->getErrorCode()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 111
    invoke-virtual {p1}, Lcom/oculus/authapi/AuthLoginError;->getErrorCode()I

    move-result v0

    const/4 v1, -0x8

    if-ne v0, v1, :cond_0

    .line 112
    :cond_3
    new-instance v0, Lcom/oculus/horizon/login/LoginData$Builder;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;)Lcom/oculus/horizon/login/LoginDataHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/login/LoginDataHolder;->getLoginData()Lcom/oculus/horizon/login/LoginData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/login/LoginData$Builder;-><init>(Lcom/oculus/horizon/login/LoginData;)V

    .line 113
    invoke-virtual {p1}, Lcom/oculus/authapi/AuthLoginError;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/login/LoginData$Builder;->setNonce(Ljava/lang/String;)Lcom/oculus/horizon/login/LoginData$Builder;

    .line 114
    invoke-virtual {p1}, Lcom/oculus/authapi/AuthLoginError;->getErrorCode()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 115
    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;)Lcom/oculus/horizon/login/LoginDataHolder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oculus/horizon/login/LoginData$Builder;->build()Lcom/oculus/horizon/login/LoginData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/login/LoginDataHolder;->setLoginData(Lcom/oculus/horizon/login/LoginData;)V

    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;->proceedLoginApprovalsNext()V

    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {p1}, Lcom/oculus/authapi/AuthLoginError;->getTwoFactorMethods()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/login/LoginData$Builder;->setTwoFactorMethods(Ljava/util/List;)Lcom/oculus/horizon/login/LoginData$Builder;

    .line 119
    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;)Lcom/oculus/horizon/login/LoginDataHolder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oculus/horizon/login/LoginData$Builder;->build()Lcom/oculus/horizon/login/LoginData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/login/LoginDataHolder;->setLoginData(Lcom/oculus/horizon/login/LoginData;)V

    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;->proceedTwoFactorNext()V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$1;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 2
    .param p1    # Ljava/lang/Void;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    const-string v1, "login_success"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;->hideLoading()V

    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;->proceedNext()V

    goto :goto_0
.end method
