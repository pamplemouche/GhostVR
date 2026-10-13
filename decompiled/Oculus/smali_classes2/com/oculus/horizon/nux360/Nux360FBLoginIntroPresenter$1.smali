.class Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$1;
.super Ljava/lang/Object;
.source "Nux360FBLoginIntroPresenter.java"

# interfaces
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/oculus/authapi/AuthError;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lcom/oculus/authapi/AuthLoginError;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$1;->onError(Lcom/oculus/authapi/AuthLoginError;)V

    return-void
.end method

.method public onError(Lcom/oculus/authapi/AuthLoginError;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$View;->hideLoading()V

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;

    const-string v1, "login_failure"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;->access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$View;->showLoginError()V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$1;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 2
    .param p1    # Ljava/lang/Void;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$View;->hideLoading()V

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;

    const-string v1, "login_success"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;->access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$View;->proceedNext()V

    goto :goto_0
.end method
