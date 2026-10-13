.class public Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;
.super Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;
.source "FriendsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/mainnavigation/TopLevelFragment;


# instance fields
.field mAdapter:Lcom/oculus/horizon/legacy/social/adapters/FriendsFragmentAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;)V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;)V
    .locals 1

    .prologue
    .line 17
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/adapters/FriendsFragmentAdapter;->$ul_$xXXcom_oculus_horizon_legacy_social_adapters_FriendsFragmentAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/adapters/FriendsFragmentAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/FriendsFragmentAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/FriendsFragmentAdapter;

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_LANDING_PAGE:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;)V

    .line 24
    invoke-super {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;->setHasOptionsMenu(Z)V

    .line 26
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 40
    invoke-super {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onResume()V

    .line 42
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/main/MainActivity;

    .line 43
    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->FRIENDS:Lcom/oculus/horizon/mainnavigation/NavItem;

    sget v2, Lcom/oculus/horizon/R$string;->drawer_your_friends:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/main/MainActivity;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    .line 45
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/FriendsFragmentAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/FriendsFragmentAdapter;->refresh()V

    .line 46
    return-void
.end method

.method protected shouldShowChromecast()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method
