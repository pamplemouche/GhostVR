.class public Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;
.super Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;
.source "UserRoadblockPaymentMethodsFragment.java"


# instance fields
.field mPaymentMethodChecker:Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;)V
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;)V
    .locals 1

    .prologue
    .line 13
    invoke-static {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodChecker;->$ul_$xXXcom_oculus_horizon_roadblock_ui_UserRoadblockPaymentMethodChecker$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodChecker;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;->mPaymentMethodChecker:Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodChecker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;-><init>()V

    return-void
.end method

.method private showPaymentMethodActivity()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    const-string v1, "roadblock"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    const/16 v1, 0x140

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 59
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;->mRoadblock:Lcom/oculus/horizon/roadblock/model/Roadblock;

    iget-object v0, v0, Lcom/oculus/horizon/roadblock/model/Roadblock;->arguments:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;->mRoadblock:Lcom/oculus/horizon/roadblock/model/Roadblock;

    iget-object v0, v0, Lcom/oculus/horizon/roadblock/model/Roadblock;->arguments:Landroid/os/Bundle;

    const-string v1, "is_nux"

    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->ROADBLOCK_ADD_PAYMENT_METHOD_OBE_NUX:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 33
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->ROADBLOCK_ADD_PAYMENT_METHOD:Lcom/oculus/horizon/logging/TrackingViews$View;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 50
    const/16 v0, 0x140

    if-ne p1, v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;->onRoadblockCompleted()V

    .line 53
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;)V

    .line 24
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;->showPaymentMethodActivity()V

    .line 25
    return-void
.end method

.method protected onRoadblockCompleted()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;->mPaymentMethodChecker:Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodChecker;

    invoke-virtual {v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodChecker;->onRoadblockShown()V

    .line 39
    invoke-super {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onRoadblockCompleted()V

    .line 40
    return-void
.end method

.method public shouldDisableBackButton()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method
