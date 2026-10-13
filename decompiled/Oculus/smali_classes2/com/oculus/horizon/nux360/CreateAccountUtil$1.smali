.class Lcom/oculus/horizon/nux360/CreateAccountUtil$1;
.super Ljava/lang/Object;
.source "CreateAccountUtil.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/CreateAccountUtil;->createAccountAsync(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;Z)Lbolts/Task;
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
.field final synthetic this$0:Lcom/oculus/horizon/nux360/CreateAccountUtil;

.field final synthetic val$createViaFBLogin:Z

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$marketingEmailOptInStatus:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$taskApps:Lbolts/Task;

.field final synthetic val$taskCheck:Lbolts/Task;

.field final synthetic val$taskCoreApps:Lbolts/Task;

.field final synthetic val$taskTos:Lbolts/Task;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/CreateAccountUtil;Lbolts/Task;ZLjava/lang/String;Ljava/lang/String;Lbolts/Task;Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;Lbolts/Task;Lbolts/Task;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->this$0:Lcom/oculus/horizon/nux360/CreateAccountUtil;

    iput-object p2, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->val$taskCheck:Lbolts/Task;

    iput-boolean p3, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->val$createViaFBLogin:Z

    iput-object p4, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->val$email:Ljava/lang/String;

    iput-object p5, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->val$password:Ljava/lang/String;

    iput-object p6, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->val$taskTos:Lbolts/Task;

    iput-object p7, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->val$marketingEmailOptInStatus:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    iput-object p8, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->val$taskApps:Lbolts/Task;

    iput-object p9, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->val$taskCoreApps:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 6
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
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-object p1

    .line 75
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Lcom/oculus/horizon/nux360/CreateAccountUtil$NetworkException;

    invoke-direct {v0}, Lcom/oculus/horizon/nux360/CreateAccountUtil$NetworkException;-><init>()V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object p1

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->val$taskCheck:Lbolts/Task;

    invoke-virtual {v0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/registration/CheckEmailAndPasswordResponse;

    .line 83
    invoke-virtual {v0}, Lcom/oculus/horizon/api/registration/CheckEmailAndPasswordResponse;->isEmailAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    .line 87
    :goto_1
    iget-boolean v4, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->val$createViaFBLogin:Z

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/oculus/horizon/api/registration/CheckEmailAndPasswordResponse;->isPasswordValid()Z

    move-result v0

    if-nez v0, :cond_2

    move v3, v2

    .line 91
    :cond_2
    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    .line 92
    :cond_3
    new-instance v0, Lcom/oculus/horizon/nux360/CreateAccountUtil$EmailAndPasswordException;

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/nux360/CreateAccountUtil$EmailAndPasswordException;-><init>(ZZ)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object p1

    goto :goto_0

    .line 96
    :cond_4
    new-instance v1, Lcom/oculus/horizon/nux360/RegistrationData$Builder;

    sget v0, Lcom/oculus/horizon/nux360/Nux360Module$UL_id;->$ul_$xXXcom_oculus_horizon_nux360_Nux360RegistrationDataHolder$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->this$0:Lcom/oculus/horizon/nux360/CreateAccountUtil;

    .line 97
    invoke-static {v2}, Lcom/oculus/horizon/nux360/CreateAccountUtil;->access$000(Lcom/oculus/horizon/nux360/CreateAccountUtil;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v5, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->getData()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;-><init>(Lcom/oculus/horizon/nux360/RegistrationData;)V

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->val$email:Ljava/lang/String;

    .line 99
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->setEmail(Ljava/lang/String;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->val$password:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v2}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->setPassword(Ljava/lang/String;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;

    move-result-object v2

    iget-object v0, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->val$taskTos:Lbolts/Task;

    .line 101
    invoke-virtual {v0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/tos/TermsOfServiceResponse;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/tos/TermsOfServiceResponse;->getData()Lcom/oculus/horizon/api/tos/TermsOfServiceResponse$Data;

    move-result-object v0

    iget-object v0, v0, Lcom/oculus/horizon/api/tos/TermsOfServiceResponse$Data;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->setTermsOfServiceId(Ljava/lang/String;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->val$marketingEmailOptInStatus:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    .line 102
    invoke-virtual {v0, v2}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->setMarketingEmailOptInStatus(Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;

    move-result-object v2

    iget-object v0, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->val$taskApps:Lbolts/Task;

    .line 103
    invoke-virtual {v0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/obe/GearVRRequiredApplicationsResponse;

    iget-object v0, v0, Lcom/oculus/horizon/api/obe/GearVRRequiredApplicationsResponse;->default_applications:Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->setApplicationsToDownload(Ljava/util/List;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;

    move-result-object v2

    iget-object v0, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->val$taskCoreApps:Lbolts/Task;

    .line 104
    invoke-virtual {v0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/MinimumAppVersion;

    invoke-virtual {v2, v0}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->setCoreApplications(Lcom/oculus/horizon/api/common/MinimumAppVersion;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;

    .line 105
    sget v0, Lcom/oculus/horizon/nux360/Nux360Module$UL_id;->$ul_$xXXcom_oculus_horizon_nux360_Nux360RegistrationDataHolder$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->this$0:Lcom/oculus/horizon/nux360/CreateAccountUtil;

    invoke-static {v2}, Lcom/oculus/horizon/nux360/CreateAccountUtil;->access$000(Lcom/oculus/horizon/nux360/CreateAccountUtil;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v5, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->build()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->setData(Lcom/oculus/horizon/nux360/RegistrationData;)V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto/16 :goto_1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/CreateAccountUtil$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
