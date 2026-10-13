.class Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$7;
.super Lcom/oculus/horizon/common/UICallback;
.source "Nux360FBLoginIntroFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->doFBLoginAuth(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

.field final synthetic val$fbAccessToken:Ljava/lang/String;

.field final synthetic val$fbUserId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Lcom/oculus/horizon/base/OculusBaseFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$7;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    iput-object p3, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$7;->val$fbUserId:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$7;->val$fbAccessToken:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method protected onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$7;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$500(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Lcom/oculus/http/core/base/ApiError;)V

    .line 361
    return-void
.end method

.method protected onResponse(Lcom/oculus/horizon/nux360/FBLoginAuthResponse;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 330
    iget-object v1, p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;->login_session:Lcom/oculus/horizon/nux360/FBLoginSession;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$7;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v1, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$1300(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Z)V

    .line 332
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$7;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$1400(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;

    move-result-object v0

    iget-object v1, p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;->login_session:Lcom/oculus/horizon/nux360/FBLoginSession;

    iget-object v1, v1, Lcom/oculus/horizon/nux360/FBLoginSession;->uid:Ljava/lang/String;

    iget-object v2, p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;->login_session:Lcom/oculus/horizon/nux360/FBLoginSession;

    iget-object v2, v2, Lcom/oculus/horizon/nux360/FBLoginSession;->access_token:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$7;->val$fbUserId:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$7;->val$fbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v1, p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;->prefilled_account_info:Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;

    if-eqz v1, :cond_2

    .line 338
    new-instance v1, Lcom/oculus/horizon/nux360/FBLoginData$Builder;

    invoke-direct {v1}, Lcom/oculus/horizon/nux360/FBLoginData$Builder;-><init>()V

    .line 339
    iget-object v2, p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;->prefilled_account_info:Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;

    iget-object v2, v2, Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;->name:Ljava/lang/String;

    .line 340
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->setRealName(Ljava/lang/String;)Lcom/oculus/horizon/nux360/FBLoginData$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;->prefilled_account_info:Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;

    iget-object v3, v3, Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;->email:Ljava/lang/String;

    .line 341
    invoke-virtual {v2, v3}, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->setPrimaryEmail(Ljava/lang/String;)Lcom/oculus/horizon/nux360/FBLoginData$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;->existing_email_conflict:Ljava/lang/String;

    .line 342
    invoke-virtual {v2, v3}, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->setExistingEmailConflict(Ljava/lang/String;)Lcom/oculus/horizon/nux360/FBLoginData$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;->prefilled_account_info:Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;

    iget-object v3, v3, Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;->facebook_id:Ljava/lang/String;

    .line 343
    invoke-virtual {v2, v3}, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->setFacebookId(Ljava/lang/String;)Lcom/oculus/horizon/nux360/FBLoginData$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;->prefilled_account_info:Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;

    iget-object v3, v3, Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;->profile_pic_uri:Ljava/lang/String;

    .line 344
    invoke-virtual {v2, v3}, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->setProfilePicUri(Ljava/lang/String;)Lcom/oculus/horizon/nux360/FBLoginData$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;->prefilled_account_info:Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;

    iget-object v3, v3, Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;->username_suggestions:Ljava/util/ArrayList;

    .line 345
    invoke-virtual {v2, v3}, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->setUsernameSuggestions(Ljava/util/ArrayList;)Lcom/oculus/horizon/nux360/FBLoginData$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;->prefilled_account_info:Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;

    iget-object v3, v3, Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;->all_emails:Ljava/util/ArrayList;

    .line 346
    invoke-virtual {v2, v3}, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->setAllEmails(Ljava/util/ArrayList;)Lcom/oculus/horizon/nux360/FBLoginData$Builder;

    .line 348
    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$7;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->build()Lcom/oculus/horizon/nux360/FBLoginData;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;->setData(Lcom/oculus/horizon/nux360/FBLoginData;)V

    .line 349
    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$7;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    iget-object v2, p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;->prefilled_account_info:Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;

    iget-object v2, v2, Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;->fb_access_token:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;->prefilled_account_info:Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;

    iget-object v3, v3, Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;->facebook_id:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;->existing_email_conflict:Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v2, v3, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$1500(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$7;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$500(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 327
    check-cast p1, Lcom/oculus/horizon/nux360/FBLoginAuthResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$7;->onResponse(Lcom/oculus/horizon/nux360/FBLoginAuthResponse;)V

    return-void
.end method
