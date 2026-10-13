.class public Lcom/oculus/horizon/intro/IntroActivity;
.super Landroid/app/Activity;
.source "IntroActivity.java"

# interfaces
.implements Lcom/oculus/horizon/intro/IntroPresenter$View;


# instance fields
.field private mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPresenter:Lcom/oculus/horizon/intro/IntroPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/intro/IntroActivity;)V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/intro/IntroActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/intro/IntroActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/intro/IntroActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/intro/IntroActivity;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/intro/IntroPresenter;->$ul_$xXXcom_oculus_horizon_intro_IntroPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/intro/IntroPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/intro/IntroActivity;->mPresenter:Lcom/oculus/horizon/intro/IntroPresenter;

    invoke-static {p0}, Lcom/oculus/horizon/navigation/NavigationModule;->$ul_$xXXcom_oculus_horizon_navigation_IntentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/navigation/IntentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/intro/IntroActivity;->mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public navigateToNextActivity()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/intro/IntroActivity;->mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;

    invoke-interface {v0, p0}, Lcom/oculus/horizon/navigation/IntentFactory;->newStartActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/intro/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Lcom/oculus/horizon/intro/IntroActivity;->finish()V

    .line 55
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-static {p0, p0}, Lcom/oculus/horizon/intro/IntroActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/intro/IntroActivity;)V

    .line 31
    invoke-static {}, Lcom/oculus/util/device/DeviceUtils;->isJapanS6Device()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget v0, Lcom/oculus/horizon/R$layout;->intro_activity_jp:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/intro/IntroActivity;->setContentView(I)V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    sget v0, Lcom/oculus/horizon/R$layout;->intro_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/intro/IntroActivity;->setContentView(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oculus/horizon/intro/IntroActivity;->mPresenter:Lcom/oculus/horizon/intro/IntroPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/intro/IntroPresenter;->pause()V

    .line 47
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/intro/IntroActivity;->overridePendingTransition(II)V

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 49
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 41
    iget-object v0, p0, Lcom/oculus/horizon/intro/IntroActivity;->mPresenter:Lcom/oculus/horizon/intro/IntroPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/intro/IntroPresenter;->resume(Lcom/oculus/horizon/intro/IntroPresenter$View;)V

    .line 42
    return-void
.end method
