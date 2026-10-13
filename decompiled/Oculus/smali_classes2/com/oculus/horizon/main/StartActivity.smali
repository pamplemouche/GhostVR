.class public Lcom/oculus/horizon/main/StartActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "StartActivity.java"


# instance fields
.field mIntroManager:Lcom/oculus/horizon/intro/IntroManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mRegistrationProfileHelperLazy:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/oculus/horizon/registration/RegistrationProfileHelper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mUserProfileHelperLazy:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/oculus/horizon/profile/UserProfileHelper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/main/StartActivity;)V
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/main/StartActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/main/StartActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/main/StartActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/main/StartActivity;)V
    .locals 1

    .prologue
    .line 18
    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_horizon_profile_UserProfileHelper$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/main/StartActivity;->mUserProfileHelperLazy:Lcom/facebook/inject/Lazy;

    invoke-static {p0}, Lcom/oculus/horizon/registration/RegistrationProfileHelper;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_horizon_registration_RegistrationProfileHelper$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/main/StartActivity;->mRegistrationProfileHelperLazy:Lcom/facebook/inject/Lazy;

    invoke-static {p0}, Lcom/oculus/horizon/intro/IntroManager;->$ul_$xXXcom_oculus_horizon_intro_IntroManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/intro/IntroManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/main/StartActivity;->mIntroManager:Lcom/oculus/horizon/intro/IntroManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private newNextActivityIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/main/StartActivity;->mIntroManager:Lcom/oculus/horizon/intro/IntroManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/intro/IntroManager;->shouldShowIntroScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/intro/IntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    :goto_0
    return-object v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/main/StartActivity;->mUserProfileHelperLazy:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/nux360/Nux360Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/main/StartActivity;->mRegistrationProfileHelperLazy:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/registration/RegistrationProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/registration/RegistrationProfileHelper;->getHasUserJustCreatedAccount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/obe/YouAreReadyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 55
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-static {p0, p0}, Lcom/oculus/horizon/main/StartActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/main/StartActivity;)V

    .line 28
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 33
    invoke-direct {p0}, Lcom/oculus/horizon/main/StartActivity;->newNextActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/main/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p0}, Lcom/oculus/horizon/main/StartActivity;->finish()V

    .line 39
    return-void
.end method
