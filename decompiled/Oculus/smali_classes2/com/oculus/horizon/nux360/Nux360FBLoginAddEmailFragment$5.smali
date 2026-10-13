.class Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;
.super Lcom/oculus/horizon/common/UICallback;
.source "Nux360FBLoginAddEmailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->registerFBLoginAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/nux360/FBLoginAuthRegisterResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

.field final synthetic val$token:Lcom/facebook/AccessToken;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Lcom/oculus/horizon/base/OculusBaseFragment;Lcom/facebook/AccessToken;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    iput-object p3, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->val$token:Lcom/facebook/AccessToken;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method protected onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->hideLoading()V

    .line 312
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    sget v2, Lcom/oculus/horizon/R$string;->common_error_something_went_wrong:I

    .line 313
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oculus/http/core/base/ApiError;->getFBErrorTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    sget v3, Lcom/oculus/horizon/R$string;->registration_default_error:I

    .line 314
    invoke-virtual {v2, v3}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oculus/http/core/base/ApiError;->getFBErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$1400(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    const-string v1, "register_failure"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method protected onResponse(Lcom/oculus/horizon/nux360/FBLoginAuthRegisterResponse;)V
    .locals 4

    .prologue
    .line 275
    sget-object v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$6;->$SwitchMap$com$oculus$horizon$nux360$Nux360FBLoginAddEmailFragment$EmailState:[I

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$900(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 299
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->hideLoading()V

    .line 300
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    sget v2, Lcom/oculus/horizon/R$string;->common_error_something_went_wrong:I

    .line 301
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    sget v3, Lcom/oculus/horizon/R$string;->registration_default_error:I

    .line 302
    invoke-virtual {v2, v3}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$1300(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    const-string v1, "register_failure"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Ljava/lang/String;)V

    .line 307
    :goto_0
    return-void

    .line 277
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    const-string v1, "register_success"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    const-string v1, "login_attempt"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$500(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    move-result-object v0

    iget-object v1, p1, Lcom/oculus/horizon/nux360/FBLoginAuthRegisterResponse;->login_session:Lcom/oculus/horizon/nux360/FBLoginSession;

    iget-object v1, v1, Lcom/oculus/horizon/nux360/FBLoginSession;->uid:Ljava/lang/String;

    iget-object v2, p1, Lcom/oculus/horizon/nux360/FBLoginAuthRegisterResponse;->login_session:Lcom/oculus/horizon/nux360/FBLoginSession;

    iget-object v2, v2, Lcom/oculus/horizon/nux360/FBLoginSession;->access_token:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->val$token:Lcom/facebook/AccessToken;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->login(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    goto :goto_0

    .line 285
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$1000(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    const-string v1, "register_success"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$1100(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$FBLoginAddEmailFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$FBLoginAddEmailFragmentHost;->introFBLoginVerificationNext()V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->hideLoading()V

    .line 291
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    sget v2, Lcom/oculus/horizon/R$string;->common_error_something_went_wrong:I

    .line 292
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    sget v3, Lcom/oculus/horizon/R$string;->registration_default_error:I

    .line 293
    invoke-virtual {v2, v3}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$1200(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    const-string v1, "register_failure"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 272
    check-cast p1, Lcom/oculus/horizon/nux360/FBLoginAuthRegisterResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;->onResponse(Lcom/oculus/horizon/nux360/FBLoginAuthRegisterResponse;)V

    return-void
.end method
