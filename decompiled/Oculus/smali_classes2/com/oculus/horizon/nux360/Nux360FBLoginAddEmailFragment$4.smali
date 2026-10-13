.class Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$4;
.super Lcom/oculus/horizon/common/UICallback;
.source "Nux360FBLoginAddEmailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->checkEmail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/api/registration/CheckEmailResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$4;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$4;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->hideLoading()V

    .line 242
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$4;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$800(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$4;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    sget v2, Lcom/oculus/horizon/R$string;->registration_default_error:I

    .line 243
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oculus/http/core/base/ApiError;->getFBErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/registration/CheckEmailResponse;)V
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p1}, Lcom/oculus/horizon/api/registration/CheckEmailResponse;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$4;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    sget-object v1, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;->EXISTING:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$700(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$4;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    sget-object v1, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;->UNVERIFIED:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$700(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 229
    check-cast p1, Lcom/oculus/horizon/api/registration/CheckEmailResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$4;->onResponse(Lcom/oculus/horizon/api/registration/CheckEmailResponse;)V

    return-void
.end method
