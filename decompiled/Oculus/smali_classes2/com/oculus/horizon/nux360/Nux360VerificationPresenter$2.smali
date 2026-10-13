.class Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$2;
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
        "Ljava/lang/Void;",
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
    .line 104
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
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
    const/4 v2, 0x1

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$400(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$500(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;->hideLoading()V

    .line 112
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$600(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;->showEmailVerified()V

    .line 114
    sget v0, Lcom/facebook/inject/BundledAndroidModule$UL_id;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$700(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Lcom/facebook/inject/InjectionContext;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/horizon/registration/RegistrationProfileHelper;->clear(Landroid/content/Context;)V

    .line 115
    sget v0, Lcom/facebook/inject/BundledAndroidModule$UL_id;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$700(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Lcom/facebook/inject/InjectionContext;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/horizon/registration/RegistrationProfileHelper;->markUserJustCreatedAccount(Landroid/content/Context;)V

    .line 116
    const/4 v0, 0x4

    sget v1, Lcom/oculus/horizon/logging/LoggingModule$UL_id;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v2}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$700(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportConfirmationSuccess()V

    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$2;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$800(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Lbolts/Task;

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
    .line 104
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
