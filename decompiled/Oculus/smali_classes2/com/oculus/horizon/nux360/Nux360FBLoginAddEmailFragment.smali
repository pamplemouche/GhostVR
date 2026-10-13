.class public Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;
.super Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;
.source "Nux360FBLoginAddEmailFragment.java"

# interfaces
.implements Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;,
        Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$FBLoginAddEmailFragmentHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/nux360/base/Nux360BaseFragment",
        "<",
        "Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$FBLoginAddEmailFragmentHost;",
        ">;",
        "Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;"
    }
.end annotation


# instance fields
.field private mAddEmailButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mCurrentState:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

.field private mEmailEdit:Landroid/widget/EditText;

.field private mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mEmailVerificationState:Landroid/widget/TextView;

.field private mEnterAnotherEmailText:Landroid/widget/TextView;

.field private mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mFBLoginConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mFBLoginData:Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLocaleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMarketingEmailOptInCheckbox:Landroid/widget/Checkable;

.field mMarketingEmailOptInGK:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_horizon_email_opt_in_checkbox"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mMarketingEmailOptInPreOptGk:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_horizon_marketing_email_pre_opt"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNuxMethods:Lcom/oculus/horizon/nux360/NuxMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRegistrationData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->$ul_$xXXcom_oculus_horizon_nux360_Nux360FBLoginAddEmailPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;->$ul_$xXXcom_oculus_horizon_nux360_Nux360FBLoginDataHolder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFBLoginData:Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->$ul_$xXXcom_oculus_horizon_nux360_Nux360RegistrationDataHolder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mRegistrationData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    invoke-static {p0}, Lcom/oculus/locale/LocaleModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_util_Locale$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->$ul_$xXXcom_oculus_horizon_fbconnect_FBConnectHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {p0}, Lcom/oculus/horizon/nux360/NuxMethods;->$ul_$xXXcom_oculus_horizon_nux360_NuxMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/NuxMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mNuxMethods:Lcom/oculus/horizon/nux360/NuxMethods;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360Module;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Femail$x5Fopt$x5Fin$x5Fcheckbox$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mMarketingEmailOptInGK:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360Module;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Fmarketing$x5Femail$x5Fpre$x5Fopt$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mMarketingEmailOptInPreOptGk:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;-><init>()V

    .line 85
    sget-object v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;->UNVERIFIED:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mCurrentState:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFragmentHost:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFragmentHost:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->showUserFacingErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->showUserFacingErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->showUserFacingErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->reportFacebookLoginRegisterEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFragmentHost:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFragmentHost:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->reportFacebookLoginEventWithTrackingView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->verifyEmail()V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->updateButtonAndEmailVerificationState(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mCurrentState:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    return-object v0
.end method

.method private checkEmail(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mNuxMethods:Lcom/oculus/horizon/nux360/NuxMethods;

    new-instance v1, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$4;

    invoke-direct {v1, p0, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$4;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/nux360/NuxMethods;->checkEmail(Ljava/lang/String;Lretrofit/Callback;)V

    .line 246
    return-void
.end method

.method private reportFacebookLoginEventWithTrackingView(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginEventWithTrackingView(Ljava/lang/String;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 254
    return-void
.end method

.method private reportFacebookLoginRegisterEvent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 249
    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mCurrentState:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    sget-object v2, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;->VERIFIED:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginRegisterEvent(Ljava/lang/String;Z)V

    .line 250
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateButtonAndEmailVerificationState(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 201
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mCurrentState:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    .line 202
    sget-object v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$6;->$SwitchMap$com$oculus$horizon$nux360$Nux360FBLoginAddEmailFragment$EmailState:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 204
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailVerificationState:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->nux_fblogin_add_email_verified_email:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEnterAnotherEmailText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mAddEmailButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/ProgressButton;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFBLoginConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setVisibility(I)V

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailVerificationState:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->nux_fblogin_add_email_unverified_email:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEnterAnotherEmailText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mAddEmailButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/ProgressButton;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFBLoginConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setVisibility(I)V

    goto :goto_0

    .line 218
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailVerificationState:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->nux_fblogin_add_email_existing_email:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 219
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEnterAnotherEmailText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mAddEmailButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFBLoginConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/ProgressButton;->setVisibility(I)V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private verifyEmail()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFBLoginData:Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;->getData()Lcom/oculus/horizon/nux360/FBLoginData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/FBLoginData;->getAllEmails()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 188
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->clearEmailError()V

    .line 189
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    sget-object v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;->VERIFIED:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->updateButtonAndEmailVerificationState(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;)V

    .line 198
    :goto_0
    return-void

    .line 193
    :cond_0
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->checkEmail(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_1
    sget-object v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;->UNVERIFIED:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->updateButtonAndEmailVerificationState(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;)V

    goto :goto_0
.end method


# virtual methods
.method public clearEmailError()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method

.method public getMarketingEmailOptInStatus()Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mMarketingEmailOptInGK:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    sget-object v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->UNKNOWN:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    .line 324
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mMarketingEmailOptInCheckbox:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->OPTED_IN:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->OPTED_OUT:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    goto :goto_0
.end method

.method public getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 390
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->FB_LOGIN_ADD_EMAIL:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public hideLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailEdit:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 372
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mAddEmailButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 373
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFBLoginConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 374
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)V

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$style;->Theme_Nux360_Light:I

    invoke-static {v0, p1, v2}, Lcom/oculus/horizon/util/ThemeUtils;->getThemedInflater(Landroid/content/Context;Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$layout;->nux360_fblogin_add_email:I

    .line 98
    invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 100
    sget v0, Lcom/oculus/horizon/R$id;->edit_email:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailEdit:Landroid/widget/EditText;

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFBLoginData:Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    invoke-virtual {v3}, Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;->getData()Lcom/oculus/horizon/nux360/FBLoginData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oculus/horizon/nux360/FBLoginData;->getPrimaryEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    sget v0, Lcom/oculus/horizon/R$id;->edit_email_layout:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 103
    sget v0, Lcom/oculus/horizon/R$id;->email_verification_state:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailVerificationState:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/oculus/horizon/R$id;->enter_another_email_text:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEnterAnotherEmailText:Landroid/widget/TextView;

    .line 106
    sget v0, Lcom/oculus/horizon/R$id;->add_email_next_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mAddEmailButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mAddEmailButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v3, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$1;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$1;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)V

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v0, Lcom/oculus/horizon/R$id;->nux_marketing_email_opt_in_checkbox:I

    .line 117
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mMarketingEmailOptInCheckbox:Landroid/widget/Checkable;

    .line 118
    iget-object v3, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mMarketingEmailOptInCheckbox:Landroid/widget/Checkable;

    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mMarketingEmailOptInPreOptGk:Ljavax/inject/Provider;

    .line 119
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->OPTED_IN:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    iget-object v4, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mRegistrationData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    .line 121
    invoke-virtual {v4}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->getData()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oculus/horizon/nux360/RegistrationData;->getMarketingEmailOptInStatus()Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    move-result-object v4

    .line 120
    invoke-virtual {v0, v4}, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 118
    :goto_0
    invoke-interface {v3, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 123
    sget v0, Lcom/oculus/horizon/R$id;->nux_marketing_email_opt_in_container:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mMarketingEmailOptInGK:Ljavax/inject/Provider;

    .line 124
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    sget v0, Lcom/oculus/horizon/R$id;->add_email_connect_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFBLoginConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFBLoginConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$2;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$3;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    sget v0, Lcom/oculus/horizon/R$string;->common_fblogin_add_email:I

    invoke-virtual {p0, v2, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->setupToolbar(Landroid/view/View;I)V

    .line 159
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->verifyEmail()V

    .line 161
    return-object v2

    :cond_1
    move v0, v1

    .line 120
    goto :goto_0

    .line 124
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailEdit:Landroid/widget/EditText;

    .line 173
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 174
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailVerificationState:Landroid/widget/TextView;

    .line 175
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEnterAnotherEmailText:Landroid/widget/TextView;

    .line 176
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mAddEmailButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 177
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mMarketingEmailOptInCheckbox:Landroid/widget/Checkable;

    .line 178
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFBLoginConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 180
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->setView(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;)V

    .line 181
    invoke-super {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onDestroyView()V

    .line 182
    return-void
.end method

.method protected onNetworkErrorRetryClicked()V
    .locals 0

    .prologue
    .line 386
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 167
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->setView(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;)V

    .line 168
    return-void
.end method

.method public proceedNext()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$FBLoginAddEmailFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$FBLoginAddEmailFragmentHost;->verificationProceedNext()V

    .line 381
    :cond_0
    return-void
.end method

.method public registerFBLoginAccount()V
    .locals 10

    .prologue
    .line 258
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->getCurrentFBAccessToken()Lcom/facebook/AccessToken;

    move-result-object v9

    .line 259
    if-nez v9, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->hideLoading()V

    .line 318
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->showLoading()V

    .line 264
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mNuxMethods:Lcom/oculus/horizon/nux360/NuxMethods;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mRegistrationData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    .line 265
    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->getData()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/RegistrationData;->getTermsOfServiceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mRegistrationData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    .line 266
    invoke-virtual {v2}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->getData()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/nux360/RegistrationData;->getUsername()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mRegistrationData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    .line 267
    invoke-virtual {v3}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->getData()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oculus/horizon/nux360/RegistrationData;->getEmail()Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-virtual {v9}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mLocaleProvider:Ljavax/inject/Provider;

    .line 269
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mRegistrationData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    .line 270
    invoke-virtual {v6}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->getData()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oculus/horizon/nux360/RegistrationData;->getPin()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mRegistrationData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    .line 271
    invoke-virtual {v7}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->getData()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oculus/horizon/nux360/RegistrationData;->getMarketingEmailOptInStatus()Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;

    invoke-direct {v8, p0, p0, v9}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$5;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Lcom/oculus/horizon/base/OculusBaseFragment;Lcom/facebook/AccessToken;)V

    .line 264
    invoke-virtual/range {v0 .. v8}, Lcom/oculus/horizon/nux360/NuxMethods;->registerFBLoginAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    goto :goto_0
.end method

.method public showEmailAlreadyTakenError()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/oculus/horizon/R$string;->registration_email_address_error_unavailable:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 333
    const-string v0, "register_failure"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->reportFacebookLoginRegisterEvent(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public showEmailFormatError(Lcom/oculus/horizon/util/validators/EmailValidator$Error;)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oculus/horizon/util/validators/EmailValidator$Error;->getString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 340
    return-void
.end method

.method public showLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 362
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mEmailEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mAddEmailButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 365
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->mFBLoginConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 366
    return-void
.end method

.method public showLoginError()V
    .locals 2

    .prologue
    .line 355
    sget v0, Lcom/oculus/horizon/R$string;->common_error_something_went_wrong:I

    .line 356
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->registration_default_error:I

    .line 357
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->showUserFacingErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public showNetworkError()V
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->showNetworkErrorDialog()V

    .line 350
    const-string v0, "register_failure"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->reportFacebookLoginRegisterEvent(Ljava/lang/String;)V

    .line 351
    return-void
.end method
