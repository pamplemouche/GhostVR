.class Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$2;
.super Ljava/lang/Object;
.source "Nux360FBLoginVerificationPresenter.java"

# interfaces
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->login(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V
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
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/oculus/authapi/AuthError;)V
    .locals 0

    .prologue
    .line 123
    check-cast p1, Lcom/oculus/authapi/AuthLoginError;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$2;->onError(Lcom/oculus/authapi/AuthLoginError;)V

    return-void
.end method

.method public onError(Lcom/oculus/authapi/AuthLoginError;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;->hideLoading()V

    .line 141
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    const-string v1, "login_failure"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->access$300(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;->showLoginError()V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 123
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$2;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 2
    .param p1    # Ljava/lang/Void;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;->hideLoading()V

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    const-string v1, "login_success"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->access$300(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;->proceedNext()V

    goto :goto_0
.end method
