.class public Lcom/oculus/horizon/obe/YouAreReadyActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "YouAreReadyActivity.java"

# interfaces
.implements Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment$Host;


# static fields
.field private static final FRAGMENT_CONTAINER_ID:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mObeRoadblocksHelper:Lcom/oculus/horizon/obe/ObeRoadblocksHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/obe/YouAreReadyActivity;)V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/obe/YouAreReadyActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/obe/YouAreReadyActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/obe/YouAreReadyActivity;)V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/obe/YouAreReadyActivity;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/horizon/obe/ObeRoadblocksHelper;->$ul_$xXXcom_oculus_horizon_obe_ObeRoadblocksHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/obe/ObeRoadblocksHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/obe/YouAreReadyActivity;->mObeRoadblocksHelper:Lcom/oculus/horizon/obe/ObeRoadblocksHelper;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/obe/YouAreReadyActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/oculus/horizon/R$id;->content:I

    sput v0, Lcom/oculus/horizon/obe/YouAreReadyActivity;->FRAGMENT_CONTAINER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private onCloseButtonClicked()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/main/StartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->finish()V

    .line 131
    return-void
.end method

.method private setStatusBarTransparent()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/16 v1, 0x200

    .line 98
    invoke-virtual {p0}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 102
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 103
    return-void
.end method

.method private showLaunchingFragment()V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 81
    sget v1, Lcom/oculus/horizon/obe/YouAreReadyActivity;->FRAGMENT_CONTAINER_ID:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 82
    instance-of v1, v1, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;

    if-eqz v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/obe/YouAreReadyActivity;->FRAGMENT_CONTAINER_ID:I

    new-instance v2, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;

    invoke-direct {v2}, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;-><init>()V

    .line 91
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private showWelcomeFragment()V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 67
    sget v1, Lcom/oculus/horizon/obe/YouAreReadyActivity;->FRAGMENT_CONTAINER_ID:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/obe/YouAreReadyActivity;->FRAGMENT_CONTAINER_ID:I

    new-instance v2, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;

    invoke-direct {v2}, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;-><init>()V

    .line 74
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->setStatusBarTransparent()V

    .line 48
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {p0, p0}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/obe/YouAreReadyActivity;)V

    .line 51
    sget v0, Lcom/oculus/horizon/R$layout;->obe_you_are_ready_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->setContentView(I)V

    .line 52
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->overridePendingTransition(II)V

    .line 54
    sget v0, Lcom/oculus/horizon/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 55
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyActivity;->mObeRoadblocksHelper:Lcom/oculus/horizon/obe/ObeRoadblocksHelper;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/obe/ObeRoadblocksHelper;->checkShouldRoadblockUser(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    invoke-direct {p0}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->showWelcomeFragment()V

    .line 60
    const/4 v0, 0x0

    sget v1, Lcom/oculus/horizon/registration/RegistrationModule$UL_id;->$ul_$xXXcom_oculus_horizon_registration_RegistrationProfileHelper$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/obe/YouAreReadyActivity;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/registration/RegistrationProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/registration/RegistrationProfileHelper;->clear()V

    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->YOU_ARE_READY:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportView(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 63
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 114
    sget v1, Lcom/oculus/horizon/R$menu;->you_are_ready:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 115
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->action_close:I

    if-ne v0, v1, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->onCloseButtonClicked()V

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 107
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->overridePendingTransition(II)V

    .line 108
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 109
    return-void
.end method

.method public onWelcomeFragmentNavigateNext()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/oculus/horizon/obe/YouAreReadyActivity;->showLaunchingFragment()V

    .line 136
    return-void
.end method
