.class Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "Nux360UserNamePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;->setUsername(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/registration/CheckUsernameResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

    iput-object p2, p0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$1;->val$username:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;->access$500(Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;->access$600(Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$UserNameView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$UserNameView;->hideLoading()V

    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;->access$700(Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$UserNameView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$UserNameView;->showNetworkError()V

    goto :goto_0
.end method

.method public onResponse(Lcom/oculus/horizon/api/registration/CheckUsernameResponse;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/horizon/api/registration/CheckUsernameResponse;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    new-instance v0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;->access$100(Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;)Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->getData()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;-><init>(Lcom/oculus/horizon/nux360/RegistrationData;)V

    .line 67
    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;->access$100(Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;)Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$1;->val$username:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->setUsername(Ljava/lang/String;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->build()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->setData(Lcom/oculus/horizon/nux360/RegistrationData;)V

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;->access$200(Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$UserNameView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$UserNameView;->proceedNext()V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;->access$300(Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$UserNameView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$UserNameView;->hideLoading()V

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;->access$400(Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$UserNameView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$UserNameView;->showUsernameTakenError()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Lcom/oculus/horizon/api/registration/CheckUsernameResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$1;->onResponse(Lcom/oculus/horizon/api/registration/CheckUsernameResponse;)V

    return-void
.end method
