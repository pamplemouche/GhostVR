.class public Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;
.super Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;
.source "Nux360FBLoginIntroFragment.java"

# interfaces
.implements Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$FBLoginIntroFragmentHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/nux360/base/Nux360BaseFragment",
        "<",
        "Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$FBLoginIntroFragmentHost;",
        ">;",
        "Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$View;"
    }
.end annotation


# instance fields
.field private mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mCreateAccount:Landroid/widget/TextView;

.field private final mFBConnectDelegate:Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

.field private mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mFBLoginData:Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mFBLoginFlow:Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

.field private mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNotYouLink:Landroid/widget/TextView;

.field private mNuxMethods:Lcom/oculus/horizon/nux360/NuxMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSignIn:Landroid/widget/TextView;

.field private mTermsView:Landroid/widget/TextView;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;->$ul_$xXXcom_oculus_horizon_nux360_Nux360FBLoginIntroPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;

    invoke-static {p0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->$ul_$xXXcom_oculus_horizon_fbconnect_FBConnectHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {p0}, Lcom/oculus/horizon/nux360/NuxMethods;->$ul_$xXXcom_oculus_horizon_nux360_NuxMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/NuxMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mNuxMethods:Lcom/oculus/horizon/nux360/NuxMethods;

    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;->$ul_$xXXcom_oculus_horizon_nux360_Nux360FBLoginDataHolder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFBLoginData:Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    invoke-static {p0}, Lcom/oculus/horizon/navigation/NavigationModule;->$ul_$xXXcom_oculus_horizon_navigation_IntentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/navigation/IntentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;-><init>()V

    .line 50
    sget-object v0, Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;->SDK:Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFBLoginFlow:Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    .line 60
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$1;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFBConnectDelegate:Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->showContinueWithFacebook()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFragmentHost:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFragmentHost:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->reportFacebookLoginEventWithFlow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->reportFacebookLoginAuthSuccess(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->onFBLoginAuthSuccess(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFragmentHost:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Lcom/oculus/horizon/navigation/IntentFactory;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFBLoginData:Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Lcom/oculus/horizon/fbconnect/FacebookData;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->showContinueAs(Lcom/oculus/horizon/fbconnect/FacebookData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->doFBLoginAuth(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Lcom/oculus/http/core/base/ApiError;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->onFBLoginAuthError(Lcom/oculus/http/core/base/ApiError;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFragmentHost:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFragmentHost:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFragmentHost:Ljava/lang/Object;

    return-object v0
.end method

.method private createOnSDKConnectClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 278
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$5;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$5;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)V

    return-object v0
.end method

.method private createOnSSOConnectClickListener(Lcom/oculus/horizon/fbconnect/FacebookData;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 296
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$6;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Lcom/oculus/horizon/fbconnect/FacebookData;)V

    return-object v0
.end method

.method private doFBLoginAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mNuxMethods:Lcom/oculus/horizon/nux360/NuxMethods;

    new-instance v1, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$7;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$7;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Lcom/oculus/horizon/base/OculusBaseFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lcom/oculus/horizon/nux360/NuxMethods;->doFBLoginAuth(Ljava/lang/String;Lretrofit/Callback;)V

    .line 363
    return-void
.end method

.method private onFBLoginAuthError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->hideLoading()V

    .line 380
    const-string v0, "auth_failure"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->reportFacebookLoginEventWithFlow(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v0, p1, Lcom/oculus/http/core/base/ApiError;->type:Lcom/oculus/http/core/base/ApiError$Type;

    sget-object v1, Lcom/oculus/http/core/base/ApiError$Type;->NETWORK_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    if-ne v0, v1, :cond_2

    .line 387
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->showNetworkErrorDialog()V

    goto :goto_0

    .line 389
    :cond_2
    sget v0, Lcom/oculus/horizon/R$string;->common_error_something_went_wrong:I

    .line 390
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->getFBErrorTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_fblogin_generic_login_error:I

    .line 391
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oculus/http/core/base/ApiError;->getFBErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->showUserFacingErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onFBLoginAuthSuccess(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0, p3}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->reportFacebookLoginAuthSuccess(Z)V

    .line 368
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0, p2, p1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->setCurrentFBAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 370
    if-eqz p3, :cond_1

    .line 371
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$FBLoginIntroFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$FBLoginIntroFragmentHost;->introFBLoginExistingAccountNext()V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$FBLoginIntroFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$FBLoginIntroFragmentHost;->introFBLoginCreateNext()V

    goto :goto_0
.end method

.method private reportFacebookLoginAuthSuccess(Z)V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginAuthSuccess(Z)V

    .line 448
    return-void
.end method

.method private reportFacebookLoginEventWithFlow(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFBLoginFlow:Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginEventWithFlow(Ljava/lang/String;Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;)V

    .line 444
    return-void
.end method

.method private showContinueAs(Lcom/oculus/horizon/fbconnect/FacebookData;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 265
    sget-object v0, Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;->SSO:Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFBLoginFlow:Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    .line 266
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    sget v1, Lcom/oculus/horizon/R$string;->fbconnect_continue_as:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/oculus/horizon/fbconnect/FacebookData;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-direct {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->createOnSSOConnectClickListener(Lcom/oculus/horizon/fbconnect/FacebookData;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mNotYouLink:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    const-string v0, "entry_point_impression"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->reportFacebookLoginEventWithFlow(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method private showContinueWithFacebook()V
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;->SDK:Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFBLoginFlow:Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    .line 254
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    sget v1, Lcom/oculus/horizon/R$string;->nux_fblogin_login_button:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setText(I)V

    .line 255
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->createOnSDKConnectClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mNotYouLink:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    const-string v0, "entry_point_impression"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->reportFacebookLoginEventWithFlow(Ljava/lang/String;)V

    .line 258
    return-void
.end method


# virtual methods
.method public createSpannable(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4

    .prologue
    .line 414
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$8;

    invoke-direct {v0, p0, p4}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$8;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 437
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 438
    const/16 v3, 0x21

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 439
    return-object p1
.end method

.method public createTermsView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 396
    sget v0, Lcom/oculus/horizon/R$id;->nux_fblogin_signup_terms_links:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mTermsView:Landroid/widget/TextView;

    .line 397
    sget v0, Lcom/oculus/horizon/R$string;->nux_fblogin_signup_tos:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 398
    sget v1, Lcom/oculus/horizon/R$string;->nux_fblogin_signup_privacy_policy:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 400
    sget v2, Lcom/oculus/horizon/R$string;->nux_fblogin_signup_terms_links:I

    .line 402
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 401
    invoke-static {v2, v3}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSensitive(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 404
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 405
    const-string v4, "tos"

    invoke-virtual {p0, v3, v2, v0, v4}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->createSpannable(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    .line 406
    const-string v3, "privacy"

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->createSpannable(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mTermsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mTermsView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 410
    return-void
.end method

.method public getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 466
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->FB_LOGIN_INTRO:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public hideLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 317
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mTermsView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 318
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mSignIn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mCreateAccount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 320
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mNotYouLink:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 321
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 322
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 248
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->onActivityResultLinkingAccount(IILandroid/content/Intent;)V

    .line 249
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)V

    .line 152
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 157
    sget v0, Lcom/oculus/horizon/R$layout;->nux360_fblogin_intro_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 159
    sget v0, Lcom/oculus/horizon/R$id;->nux_fblogin_create_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 161
    sget v0, Lcom/oculus/horizon/R$id;->nux_fblogin_sign_in:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mSignIn:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mSignIn:Landroid/widget/TextView;

    new-instance v2, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$2;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$2;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    sget v0, Lcom/oculus/horizon/R$id;->nux_fblogin_create_account:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mCreateAccount:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mCreateAccount:Landroid/widget/TextView;

    new-instance v2, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$3;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$3;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->createTermsView(Landroid/view/View;)V

    .line 188
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;->setView(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$View;)V

    .line 234
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->setFBConnectDelegate(Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;)V

    .line 236
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mSignIn:Landroid/widget/TextView;

    .line 237
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mCreateAccount:Landroid/widget/TextView;

    .line 238
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mTermsView:Landroid/widget/TextView;

    .line 239
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 240
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mNotYouLink:Landroid/widget/TextView;

    .line 242
    invoke-super {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onDestroyView()V

    .line 243
    return-void
.end method

.method protected onNetworkErrorRetryClicked()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/ProgressButton;->performClick()Z

    .line 275
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->cancelFetchFBData()V

    .line 227
    invoke-super {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onPause()V

    .line 228
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onResume()V

    .line 219
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->hideLoading()V

    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->startFetchFBData()V

    .line 221
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 193
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 194
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter;->setView(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroPresenter$View;)V

    .line 196
    sget v0, Lcom/oculus/horizon/R$id;->nux_fblogin_not_you:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mNotYouLink:Landroid/widget/TextView;

    .line 197
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mNotYouLink:Landroid/widget/TextView;

    new-instance v1, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$4;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$4;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFBConnectDelegate:Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->setFBConnectDelegate(Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;)V

    .line 213
    return-void
.end method

.method public proceedNext()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$FBLoginIntroFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$FBLoginIntroFragmentHost;->verificationProceedNext()V

    .line 462
    :cond_0
    return-void
.end method

.method public showLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mTermsView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 309
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mSignIn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mCreateAccount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mNotYouLink:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 312
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 313
    return-void
.end method

.method public showLoginError()V
    .locals 2

    .prologue
    .line 452
    sget v0, Lcom/oculus/horizon/R$string;->common_error_something_went_wrong:I

    .line 453
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_fblogin_generic_login_error:I

    .line 454
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->showUserFacingErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void
.end method
