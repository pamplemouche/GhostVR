.class public Lcom/oculus/horizon/nux360/Nux360Activity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Nux360Activity.java"

# interfaces
.implements Lcom/facebook/common/propertybag/PropertyBag;
.implements Lcom/oculus/horizon/login/LoginFragment$LoginFragmentHost;
.implements Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$LoginApprovalsFragmentHost;
.implements Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment$LoginApprovalsTerminalFragmentHost;
.implements Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$CreateAccountFragmentHost;
.implements Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$FBLoginAddEmailFragmentHost;
.implements Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$FBLoginConnectAccountFragmentHost;
.implements Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment$FBLoginCreateFragmentHost;
.implements Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment$FBLoginExistingAccountFragmentHost;
.implements Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$FBLoginIntroFragmentHost;
.implements Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment$FBLoginPinFragmentHost;
.implements Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$FBLoginVerificationFragmentHost;
.implements Lcom/oculus/horizon/nux360/Nux360NameFragment$NameFragmentHost;
.implements Lcom/oculus/horizon/nux360/Nux360PinFragment$PinFragmentHost;
.implements Lcom/oculus/horizon/nux360/Nux360VerificationFragment$VerificationFragmentHost;
.implements Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodsFragmentHost;


# instance fields
.field private mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mPropertyBagHelper:Lcom/facebook/common/propertybag/PropertyBagHelper;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360Activity;)V
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/nux360/Nux360Activity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360Activity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/nux360/Nux360Activity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360Activity;)V
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/oculus/horizon/navigation/NavigationModule;->$ul_$xXXcom_oculus_horizon_navigation_IntentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/navigation/IntentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360Activity;->mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 69
    new-instance v0, Lcom/facebook/common/propertybag/PropertyBagHelper;

    invoke-direct {v0}, Lcom/facebook/common/propertybag/PropertyBagHelper;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360Activity;->mPropertyBagHelper:Lcom/facebook/common/propertybag/PropertyBagHelper;

    return-void
.end method

.method private removeFromBackstack(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360Activity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 113
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 114
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 115
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 116
    return-void
.end method

.method private setupBackground()V
    .locals 4

    .prologue
    .line 85
    sget v0, Lcom/oculus/horizon/R$id;->background_cubemap:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/Nux360Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360CubemapView;

    .line 86
    sget v1, Lcom/oculus/horizon/R$drawable;->nux_cubemap:I

    const/16 v2, 0x602

    const/16 v3, 0x2400

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/nux360/Nux360CubemapView;->initializeNuxCubemap(III)V

    .line 87
    return-void
.end method

.method private showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360Activity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 100
    sget v1, Lcom/oculus/horizon/R$id;->content:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 101
    if-eqz p3, :cond_1

    .line 102
    if-eqz p4, :cond_0

    .line 103
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 105
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 107
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 108
    return-void
.end method

.method private showIntroFragment()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oculus/horizon/nux360/Nux360Activity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 91
    return-void
.end method

.method private showLoginFragment()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 94
    new-instance v0, Lcom/oculus/horizon/login/LoginFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/login/LoginFragment;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oculus/horizon/nux360/Nux360Activity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 95
    return-void
.end method

.method private startStartActivity()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360Activity;->mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;

    invoke-interface {v0, p0}, Lcom/oculus/horizon/navigation/IntentFactory;->newStartActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 248
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/Nux360Activity;->startActivity(Landroid/content/Intent;)V

    .line 251
    return-void
.end method


# virtual methods
.method public createAccountLoginNext()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360Activity;->showLoginFragment()V

    .line 227
    return-void
.end method

.method public createAccountProceedNext()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 221
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360NameFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/nux360/Nux360NameFragment;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oculus/horizon/nux360/Nux360Activity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 222
    return-void
.end method

.method public getProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360Activity;->mPropertyBagHelper:Lcom/facebook/common/propertybag/PropertyBagHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/common/propertybag/PropertyBagHelper;->getProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public introCreateAccountNext()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 135
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;-><init>()V

    const-string v1, "email_fragment"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oculus/horizon/nux360/Nux360Activity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 136
    return-void
.end method

.method public introFBLoginAddEmailNext()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 145
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;-><init>()V

    const-string v1, "fblogin_email_fragment"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oculus/horizon/nux360/Nux360Activity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 146
    return-void
.end method

.method public introFBLoginConnectNext()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 155
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oculus/horizon/nux360/Nux360Activity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 156
    return-void
.end method

.method public introFBLoginCreateNext()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 140
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oculus/horizon/nux360/Nux360Activity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 141
    return-void
.end method

.method public introFBLoginExistingAccountNext()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 160
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oculus/horizon/nux360/Nux360Activity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 161
    return-void
.end method

.method public introFBLoginPinNext()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 150
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oculus/horizon/nux360/Nux360Activity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 151
    return-void
.end method

.method public introFBLoginVerificationNext()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 165
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oculus/horizon/nux360/Nux360Activity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 166
    return-void
.end method

.method public introLoginNext()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360Activity;->showLoginFragment()V

    .line 131
    return-void
.end method

.method public loginApprovalsBackToLogin()V
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360Activity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "login_fragment"

    const/4 v2, 0x1

    .line 204
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 205
    return-void
.end method

.method public loginApprovalsProceedNext()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360Activity;->startStartActivity()V

    .line 194
    return-void
.end method

.method public loginApprovalsProceedTerminalNext()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 198
    new-instance v0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oculus/horizon/nux360/Nux360Activity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 199
    return-void
.end method

.method public loginLoginApprovalsNext()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    const-string v1, "title"

    sget v2, Lcom/oculus/horizon/R$string;->login_approvals_title:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    new-instance v1, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;-><init>()V

    .line 178
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 179
    const-string v0, "login_fragment"

    invoke-direct {p0, v1, v0, v3, v3}, Lcom/oculus/horizon/nux360/Nux360Activity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 180
    return-void
.end method

.method public loginProceedNext()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360Activity;->startStartActivity()V

    .line 171
    return-void
.end method

.method public loginTwoFactorNext()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 185
    const-string v1, "title"

    sget v2, Lcom/oculus/horizon/R$string;->two_factor_title:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    new-instance v1, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;-><init>()V

    .line 187
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 188
    const-string v0, "login_fragment"

    invoke-direct {p0, v1, v0, v3, v3}, Lcom/oculus/horizon/nux360/Nux360Activity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 189
    return-void
.end method

.method public nameProceedNext()V
    .locals 4

    .prologue
    .line 231
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360PinFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/nux360/Nux360PinFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/horizon/nux360/Nux360Activity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 232
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360Activity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 121
    instance-of v1, v0, Lcom/oculus/horizon/common/BackPressListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/oculus/horizon/common/BackPressListener;

    invoke-interface {v0}, Lcom/oculus/horizon/common/BackPressListener;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {p0, p0}, Lcom/oculus/horizon/nux360/Nux360Activity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360Activity;)V

    .line 76
    sget v0, Lcom/oculus/horizon/R$layout;->nux360_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/Nux360Activity;->setContentView(I)V

    .line 77
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360Activity;->setupBackground()V

    .line 78
    if-nez p1, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360Activity;->showIntroFragment()V

    .line 82
    :cond_0
    return-void
.end method

.method public pinProceedNext()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 236
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oculus/horizon/nux360/Nux360Activity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 237
    return-void
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360Activity;->mPropertyBagHelper:Lcom/facebook/common/propertybag/PropertyBagHelper;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/common/propertybag/PropertyBagHelper;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public twoFactorProceedNext(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lcom/oculus/horizon/nux360/Nux360Activity;->removeFromBackstack(Landroidx/fragment/app/Fragment;)V

    .line 212
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    const-string v1, "title"

    sget v2, Lcom/oculus/horizon/R$string;->two_factor_title:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    new-instance v1, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;-><init>()V

    .line 215
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 216
    const-string v0, "login_fragment"

    invoke-direct {p0, v1, v0, v3, v3}, Lcom/oculus/horizon/nux360/Nux360Activity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 217
    return-void
.end method

.method public verificationBackToEmail()V
    .locals 3

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360Activity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "email_fragment"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 256
    return-void
.end method

.method public verificationFBLoginBackToEmail()V
    .locals 3

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360Activity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "fblogin_email_fragment"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 261
    return-void
.end method

.method public verificationProceedNext()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360Activity;->startStartActivity()V

    .line 243
    return-void
.end method
