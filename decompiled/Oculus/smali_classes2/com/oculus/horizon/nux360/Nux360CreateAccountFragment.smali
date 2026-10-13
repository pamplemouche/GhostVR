.class public Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;
.super Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;
.source "Nux360CreateAccountFragment.java"

# interfaces
.implements Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$CreateAccountView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$CreateAccountFragmentHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/nux360/base/Nux360BaseFragment",
        "<",
        "Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$CreateAccountFragmentHost;",
        ">;",
        "Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$CreateAccountView;"
    }
.end annotation


# instance fields
.field private mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCreateAccountButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEmailEdit:Landroid/widget/EditText;

.field private mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mFirstPartyAppsController:Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLoginText:Landroid/view/View;

.field private mMarketingEmailOptInCheckbox:Landroid/widget/Checkable;

.field private mMarketingEmailOptInGK:Ljavax/inject/Provider;
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

.field private mMarketingEmailOptInPreOptGK:Ljavax/inject/Provider;
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

.field private mPasswordEdit:Landroid/widget/EditText;

.field private mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mPresenter:Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->$ul_$xXXcom_oculus_horizon_nux360_Nux360RegistrationDataHolder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;->$ul_$xXXcom_oculus_horizon_nux360_Nux360CreateAccountPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;

    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController;->$ul_$xXXcom_oculus_horizon_nux360_Nux360FirstPartyAppsController$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mFirstPartyAppsController:Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController;

    invoke-static {p0}, Lcom/oculus/coreapps/CoreAppManager;->$ul_$xXXcom_oculus_coreapps_CoreAppManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/coreapps/CoreAppManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;

    invoke-static {p0}, Lcom/oculus/horizon/navigation/NavigationModule;->$ul_$xXXcom_oculus_horizon_navigation_IntentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/navigation/IntentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;

    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360Module;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Femail$x5Fopt$x5Fin$x5Fcheckbox$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mMarketingEmailOptInGK:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360Module;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Fmarketing$x5Femail$x5Fpre$x5Fopt$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mMarketingEmailOptInPreOptGK:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->onCreateAccountClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)Lcom/oculus/horizon/navigation/IntentFactory;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)Lcom/oculus/coreapps/CoreAppManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mFirstPartyAppsController:Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController;

    return-object v0
.end method

.method private getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onCreateAccountClick()V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;

    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->getMarketingEmailOptInStatus()Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;->createAccount(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;)V

    .line 230
    return-void
.end method

.method private setupCreateAccount(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 125
    sget v0, Lcom/oculus/horizon/R$id;->nux_create_account:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mCreateAccountButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 126
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mCreateAccountButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$1;-><init>(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method private setupLegalNotice(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 147
    sget v0, Lcom/oculus/horizon/R$id;->legal_notices:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 149
    sget v1, Lcom/oculus/horizon/R$string;->nux_legal_notices_link:I

    .line 150
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/horizon/util/TextSpanUtils;->useNonbreakingSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    sget v2, Lcom/oculus/horizon/R$string;->nux_legal_notices_text:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 153
    new-instance v3, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$3;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$3;-><init>(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)V

    .line 154
    invoke-static {v2, v1, v3}, Lcom/oculus/horizon/util/TextSpanUtils;->makeLink(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/view/View$OnClickListener;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 166
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 167
    return-void
.end method

.method private setupLogin(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 136
    sget v0, Lcom/oculus/horizon/R$id;->nux_login:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mLoginText:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mLoginText:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$2;-><init>(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method


# virtual methods
.method public clearEmailError()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 282
    return-void
.end method

.method public clearPasswordError()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 299
    return-void
.end method

.method public getMarketingEmailOptInStatus()Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mMarketingEmailOptInGK:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    sget-object v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->UNKNOWN:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    .line 244
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mMarketingEmailOptInCheckbox:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->OPTED_IN:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->OPTED_OUT:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    goto :goto_0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->REGISTRATION_EMAIL:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public hideLoading()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mCreateAccountButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 314
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)V

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;->setView(Ljava/lang/Object;)V

    .line 91
    sget v0, Lcom/oculus/horizon/R$layout;->nux360_account_fragment:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 93
    sget v0, Lcom/oculus/horizon/R$id;->nux_email:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mEmailEdit:Landroid/widget/EditText;

    .line 94
    sget v0, Lcom/oculus/horizon/R$id;->nux_email_layout:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 96
    sget v0, Lcom/oculus/horizon/R$id;->nux_password:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mPasswordEdit:Landroid/widget/EditText;

    .line 97
    sget v0, Lcom/oculus/horizon/R$id;->nux_password_layout:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 99
    sget v0, Lcom/oculus/horizon/R$id;->nux_marketing_email_opt_in_checkbox:I

    .line 100
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mMarketingEmailOptInCheckbox:Landroid/widget/Checkable;

    .line 101
    iget-object v3, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mMarketingEmailOptInCheckbox:Landroid/widget/Checkable;

    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mMarketingEmailOptInPreOptGK:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 103
    sget v0, Lcom/oculus/horizon/R$id;->nux_marketing_email_opt_in_container:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mMarketingEmailOptInGK:Ljavax/inject/Provider;

    .line 104
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    invoke-direct {p0, v2}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->setupCreateAccount(Landroid/view/View;)V

    .line 107
    invoke-direct {p0, v2}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->setupLogin(Landroid/view/View;)V

    .line 108
    invoke-direct {p0, v2}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->setupLegalNotice(Landroid/view/View;)V

    .line 110
    return-object v2

    .line 104
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onDestroy()V

    .line 122
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-super {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onDestroyView()V

    .line 172
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;->setView(Ljava/lang/Object;)V

    .line 173
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mEmailEdit:Landroid/widget/EditText;

    .line 174
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 175
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mPasswordEdit:Landroid/widget/EditText;

    .line 176
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 177
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mCreateAccountButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 178
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mLoginText:Landroid/view/View;

    .line 179
    return-void
.end method

.method protected onNetworkErrorRetryClicked()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->onCreateAccountClick()V

    .line 319
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 184
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;

    new-instance v1, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$4;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$4;-><init>(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/coreapps/CoreAppManager;->addCoreAppsListener(Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;)V

    .line 209
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->getData()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/RegistrationData;->getCoreApplications()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oculus/coreapps/CoreAppManager;->setCoreApps(Ljava/util/List;Z)V

    .line 210
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;

    const-string v1, "nux"

    invoke-virtual {v0, v1}, Lcom/oculus/coreapps/CoreAppManager;->installOrUpdateRequiredApps(Ljava/lang/String;)Lbolts/Task;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mFragmentHost:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 221
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$CreateAccountFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$CreateAccountFragmentHost;->createAccountProceedNext()V

    goto :goto_0

    .line 220
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onResume()V

    .line 116
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->hideLoading()V

    .line 117
    return-void
.end method

.method public proceedLoginNext()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$CreateAccountFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$CreateAccountFragmentHost;->createAccountLoginNext()V

    .line 265
    :cond_0
    return-void
.end method

.method public proceedNext()V
    .locals 3

    .prologue
    .line 251
    new-instance v0, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    .line 252
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 253
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->setPermission(Ljava/lang/String;)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_permission_title:I

    .line 254
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->setTitle(I)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_permission_write_external_storage_message:I

    .line 255
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->setMessage(I)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->build()Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    .line 257
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public showEmailAlreadyTakenError()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/oculus/horizon/R$string;->registration_email_address_error_unavailable:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 271
    return-void
.end method

.method public showEmailFormatError(Lcom/oculus/horizon/util/validators/EmailValidator$Error;)V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oculus/horizon/util/validators/EmailValidator$Error;->getString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 277
    return-void
.end method

.method public showLoading()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mCreateAccountButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 309
    return-void
.end method

.method public showNetworkError()V
    .locals 0

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->showNetworkErrorDialog()V

    .line 304
    return-void
.end method

.method public showPasswordFormatError(Lcom/oculus/horizon/util/validators/PasswordValidator$Error;)V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;->getString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 288
    return-void
.end method

.method public showPasswordNotValidError()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/oculus/horizon/R$string;->registration_password_error:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 294
    return-void
.end method
