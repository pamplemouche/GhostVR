.class public Lcom/oculus/horizon/react/OculusReactFeedFragment;
.super Lcom/oculus/horizon/react/OculusReactFragment;
.source "OculusReactFeedFragment.java"

# interfaces
.implements Lcom/oculus/horizon/mainnavigation/TopLevelFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 4

    .prologue
    .line 13
    invoke-super {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->onResume()V

    .line 14
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactFeedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/mainnavigation/NavigationUpdater;

    .line 15
    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->FEED:Lcom/oculus/horizon/mainnavigation/NavItem;

    iget-object v2, p0, Lcom/oculus/horizon/react/OculusReactFeedFragment;->mTitle:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/horizon/mainnavigation/NavigationUpdater;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    .line 16
    return-void
.end method
