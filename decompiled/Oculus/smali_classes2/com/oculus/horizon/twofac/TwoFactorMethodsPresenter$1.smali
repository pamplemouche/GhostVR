.class Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$1;
.super Ljava/lang/Object;
.source "TwoFactorMethodsPresenter.java"

# interfaces
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->loadMethods()V
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
        "Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;",
        "Lcom/oculus/authapi/AuthError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$1;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/authapi/AuthError;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$1;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    invoke-static {v0, p1}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->access$600(Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;Lcom/oculus/authapi/AuthError;)V

    .line 114
    return-void
.end method

.method public onResult(Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$1;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->access$000(Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;->getTwoFactorMethods()Ljava/util/ArrayList;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$1;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->access$100(Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$TwoFactorMethodsView;

    invoke-interface {v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$TwoFactorMethodsView;->showError()V

    goto :goto_0

    .line 99
    :cond_2
    new-instance v2, Lcom/oculus/horizon/login/LoginData$Builder;

    sget v0, Lcom/oculus/horizon/login/LoginModule$UL_id;->$ul_$xXXcom_oculus_horizon_login_LoginDataHolder$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$1;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    invoke-static {v3}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->access$200(Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;)Lcom/facebook/inject/InjectionContext;

    move-result-object v3

    invoke-static {v5, v0, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/login/LoginDataHolder;

    invoke-virtual {v0}, Lcom/oculus/horizon/login/LoginDataHolder;->getLoginData()Lcom/oculus/horizon/login/LoginData;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/oculus/horizon/login/LoginData$Builder;-><init>(Lcom/oculus/horizon/login/LoginData;)V

    .line 100
    invoke-virtual {v2, v1}, Lcom/oculus/horizon/login/LoginData$Builder;->setTwoFactorMethods(Ljava/util/List;)Lcom/oculus/horizon/login/LoginData$Builder;

    .line 101
    sget v0, Lcom/oculus/horizon/login/LoginModule$UL_id;->$ul_$xXXcom_oculus_horizon_login_LoginDataHolder$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$1;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    invoke-static {v3}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->access$200(Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;)Lcom/facebook/inject/InjectionContext;

    move-result-object v3

    invoke-static {v5, v0, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/login/LoginDataHolder;

    invoke-virtual {v2}, Lcom/oculus/horizon/login/LoginData$Builder;->build()Lcom/oculus/horizon/login/LoginData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/login/LoginDataHolder;->setLoginData(Lcom/oculus/horizon/login/LoginData;)V

    .line 102
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$1;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->access$300(Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$TwoFactorMethodsView;

    invoke-interface {v0, v1, v4}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$TwoFactorMethodsView;->setMethods(Ljava/util/List;I)V

    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$1;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    invoke-virtual {v0, v4}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->continueWithMethod(I)V

    goto :goto_0

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$1;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->access$400(Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$TwoFactorMethodsView;

    invoke-interface {v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$TwoFactorMethodsView;->stopLoadingState()V

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$1;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->access$500(Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$TwoFactorMethodsView;

    invoke-interface {v0, v1, v4}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$TwoFactorMethodsView;->setMethods(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 88
    check-cast p1, Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$1;->onResult(Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;)V

    return-void
.end method
