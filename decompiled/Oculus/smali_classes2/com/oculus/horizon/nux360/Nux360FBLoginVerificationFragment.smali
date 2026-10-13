.class public Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;
.super Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;
.source "Nux360FBLoginVerificationFragment.java"

# interfaces
.implements Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;
.implements Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$FBLoginVerificationFragmentHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/nux360/base/Nux360BaseFragment",
        "<",
        "Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$FBLoginVerificationFragmentHost;",
        ">;",
        "Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;",
        "Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;"
    }
.end annotation


# instance fields
.field private mChangeEmailText:Landroid/widget/TextView;

.field private mEmailText:Landroid/widget/TextView;

.field private mNuxMethods:Lcom/oculus/horizon/nux360/NuxMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPresenter_DO_NOT_USE:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mResendButton:Lcom/oculus/horizon/widget/ProgressButton;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;)V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->$ul_$xXXcom_oculus_horizon_nux360_Nux360FBLoginVerificationPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->$ul_$xXXcom_oculus_horizon_nux360_Nux360VerificationPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mPresenter_DO_NOT_USE:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {p0}, Lcom/oculus/horizon/nux360/NuxMethods;->$ul_$xXXcom_oculus_horizon_nux360_NuxMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/NuxMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mNuxMethods:Lcom/oculus/horizon/nux360/NuxMethods;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;)Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mPresenter_DO_NOT_USE:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;)Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;Lcom/oculus/http/core/base/ApiError;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->onFBAuthError(Lcom/oculus/http/core/base/ApiError;)V

    return-void
.end method

.method private onFBAuthError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->hideLoading()V

    .line 135
    if-eqz p1, :cond_0

    .line 136
    sget v0, Lcom/oculus/horizon/R$string;->common_error_something_went_wrong:I

    .line 137
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->getFBErrorTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_fblogin_generic_login_error:I

    .line 138
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oculus/http/core/base/ApiError;->getFBErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->showUserFacingErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    const-string v0, "login_failure"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->reportFacebookLoginEventWithTrackingView(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method private reportFacebookLoginEventWithTrackingView(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginEventWithTrackingView(Ljava/lang/String;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 154
    return-void
.end method


# virtual methods
.method public backToChangeEmail()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$FBLoginVerificationFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$FBLoginVerificationFragmentHost;->verificationFBLoginBackToEmail()V

    .line 183
    :cond_0
    return-void
.end method

.method public doFBAuth(Lcom/facebook/AccessToken;)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mNuxMethods:Lcom/oculus/horizon/nux360/NuxMethods;

    .line 113
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$3;

    invoke-direct {v2, p0, p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$3;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;Lcom/oculus/horizon/base/OculusBaseFragment;Lcom/facebook/AccessToken;)V

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/nux360/NuxMethods;->doFBLoginAuth(Ljava/lang/String;Lretrofit/Callback;)V

    .line 131
    return-void
.end method

.method public getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->FB_LOGIN_VERIFICATION:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public hideLoading()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mResendButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 169
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;)V

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 59
    sget v0, Lcom/oculus/horizon/R$layout;->nux360_verification_fragment:I

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 63
    sget v0, Lcom/oculus/horizon/R$id;->nux_email:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mEmailText:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/oculus/horizon/R$id;->nux_change_email:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mChangeEmailText:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mChangeEmailText:Landroid/widget/TextView;

    new-instance v2, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$1;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget v0, Lcom/oculus/horizon/R$id;->nux_resend_email:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mResendButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mResendButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v2, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$2;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$2;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mResendButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 146
    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mEmailText:Landroid/widget/TextView;

    .line 147
    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mChangeEmailText:Landroid/widget/TextView;

    .line 149
    invoke-super {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onDestroy()V

    .line 150
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mEmailText:Landroid/widget/TextView;

    .line 101
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mChangeEmailText:Landroid/widget/TextView;

    .line 102
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mResendButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mPresenter_DO_NOT_USE:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->setView(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;)V

    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->setView(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;)V

    .line 107
    invoke-super {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onDestroyView()V

    .line 108
    return-void
.end method

.method protected onNetworkErrorCancelClicked()V
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 196
    return-void
.end method

.method protected onNetworkErrorRetryClicked()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->setView(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;)V

    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->waitOnVerificationComplete()V

    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mPresenter_DO_NOT_USE:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->setView(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;)V

    .line 96
    return-void
.end method

.method public proceedNext()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$FBLoginVerificationFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$FBLoginVerificationFragmentHost;->verificationProceedNext()V

    .line 213
    :cond_0
    return-void
.end method

.method public showEmail(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mEmailText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method public showEmailSent()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public showEmailVerified()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public showLoading()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->mResendButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 164
    return-void
.end method

.method public showLoginError()V
    .locals 2

    .prologue
    .line 173
    sget v0, Lcom/oculus/horizon/R$string;->common_error_something_went_wrong:I

    .line 174
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_fblogin_generic_login_error:I

    .line 175
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->showUserFacingErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public showNetworkError()V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->showNetworkErrorDialog()V

    .line 188
    return-void
.end method
