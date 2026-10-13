.class Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$2;
.super Ljava/lang/Object;
.source "Nux360FBLoginAddEmailPresenter.java"

# interfaces
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->login(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V
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
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/oculus/authapi/AuthError;)V
    .locals 0

    .prologue
    .line 115
    check-cast p1, Lcom/oculus/authapi/AuthLoginError;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$2;->onError(Lcom/oculus/authapi/AuthLoginError;)V

    return-void
.end method

.method public onError(Lcom/oculus/authapi/AuthLoginError;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;->hideLoading()V

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    const-string v1, "login_failure"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;->showLoginError()V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 115
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$2;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 2
    .param p1    # Ljava/lang/Void;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;->hideLoading()V

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    const-string v1, "login_success"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;->proceedNext()V

    goto :goto_0
.end method
