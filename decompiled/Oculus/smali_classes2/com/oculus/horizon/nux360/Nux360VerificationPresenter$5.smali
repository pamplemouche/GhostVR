.class Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$5;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "Nux360VerificationPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->resendVerificationEmail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$5;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$5;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$1800(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$5;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$1900(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;->hideLoading()V

    .line 190
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$5;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$2000(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;->showNetworkError()V

    .line 192
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 177
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$5;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$5;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$1500(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$5;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$1600(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;->hideLoading()V

    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$5;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$1700(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;->showEmailSent()V

    .line 184
    :cond_0
    return-void
.end method
