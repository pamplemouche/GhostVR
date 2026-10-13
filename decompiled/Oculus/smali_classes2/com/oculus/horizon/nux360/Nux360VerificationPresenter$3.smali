.class Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$3;
.super Ljava/lang/Object;
.source "Nux360VerificationPresenter.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->startRegisterAccount()V
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
        "Lcom/oculus/horizon/api/registration/RegisterResponse;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$3;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/api/registration/RegisterResponse;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$3;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$900(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 89
    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/registration/RegisterResponse;

    iget-boolean v0, v0, Lcom/oculus/horizon/api/registration/RegisterResponse;->success:Z

    if-nez v0, :cond_3

    .line 90
    :cond_2
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$RegisterAccountException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$RegisterAccountException;-><init>(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$1;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_3
    const/4 v0, 0x4

    sget v1, Lcom/oculus/horizon/logging/LoggingModule$UL_id;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$3;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v2}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$700(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportRegisterSuccess()V

    .line 94
    sget v0, Lcom/facebook/inject/BundledAndroidModule$UL_id;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$3;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$700(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Lcom/facebook/inject/InjectionContext;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/horizon/registration/RegistrationProfileHelper;->markUserPendingConfirmation(Landroid/content/Context;)V

    .line 95
    sget v0, Lcom/facebook/inject/BundledAndroidModule$UL_id;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$3;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$700(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Lcom/facebook/inject/InjectionContext;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$3;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$1100(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->getData()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/RegistrationData;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/registration/RegistrationProfileHelper;->setEmail(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$3;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$1200(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;->hideLoading()V

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$3;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$1300(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;->showEmailSent()V

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$3;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$1400(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
