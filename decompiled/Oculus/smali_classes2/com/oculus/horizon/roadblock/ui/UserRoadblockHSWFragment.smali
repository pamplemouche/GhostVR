.class public Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWFragment;
.super Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;
.source "UserRoadblockHSWFragment.java"

# interfaces
.implements Lcom/oculus/horizon/hsw/HSWVideoFragment$Listener;


# instance fields
.field mHSWShowChecker:Lcom/facebook/inject/Lazy;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWShowChecker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWFragment;)V
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWFragment;)V
    .locals 1

    .prologue
    .line 16
    invoke-static {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWShowChecker;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_horizon_roadblock_ui_UserRoadblockHSWShowChecker$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWFragment;->mHSWShowChecker:Lcom/facebook/inject/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public onComplete()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWFragment;->mHSWShowChecker:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWShowChecker;

    invoke-virtual {v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWShowChecker;->onRoadblockShown()V

    .line 44
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWFragment;->onRoadblockCompleted()V

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWFragment;)V

    .line 25
    new-instance v0, Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;-><init>()V

    .line 26
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 27
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->content_frame:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 28
    return-void
.end method

.method public shouldDisableBackButton()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
