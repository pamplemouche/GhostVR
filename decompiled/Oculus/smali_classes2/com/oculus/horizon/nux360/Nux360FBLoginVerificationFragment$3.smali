.class Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$3;
.super Lcom/oculus/horizon/common/UICallback;
.source "Nux360FBLoginVerificationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->doFBAuth(Lcom/facebook/AccessToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/nux360/FBLoginAuthResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;

.field final synthetic val$fbAccessToken:Lcom/facebook/AccessToken;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;Lcom/oculus/horizon/base/OculusBaseFragment;Lcom/facebook/AccessToken;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$3;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;

    iput-object p3, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$3;->val$fbAccessToken:Lcom/facebook/AccessToken;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method protected onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$3;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->access$300(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;Lcom/oculus/http/core/base/ApiError;)V

    .line 129
    return-void
.end method

.method protected onResponse(Lcom/oculus/horizon/nux360/FBLoginAuthResponse;)V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$3;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->hideLoading()V

    .line 118
    iget-object v0, p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;->login_session:Lcom/oculus/horizon/nux360/FBLoginSession;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$3;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;)Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    move-result-object v0

    iget-object v1, p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;->login_session:Lcom/oculus/horizon/nux360/FBLoginSession;

    iget-object v1, v1, Lcom/oculus/horizon/nux360/FBLoginSession;->uid:Ljava/lang/String;

    iget-object v2, p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;->login_session:Lcom/oculus/horizon/nux360/FBLoginSession;

    iget-object v2, v2, Lcom/oculus/horizon/nux360/FBLoginSession;->access_token:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$3;->val$fbAccessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->login(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$3;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->access$300(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 114
    check-cast p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$3;->onResponse(Lcom/oculus/horizon/nux360/FBLoginAuthResponse;)V

    return-void
.end method
