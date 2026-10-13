.class public Lcom/oculus/horizon/legacy/social/fragments/GameInvitesFragment;
.super Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;
.source "GameInvitesFragment.java"


# instance fields
.field mAdapter:Lcom/oculus/horizon/legacy/social/adapters/GameInvitesAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/GameInvitesFragment;)V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/legacy/social/fragments/GameInvitesFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/GameInvitesFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/legacy/social/fragments/GameInvitesFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/GameInvitesFragment;)V
    .locals 1

    .prologue
    .line 20
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/adapters/GameInvitesAdapter;->$ul_$xXXcom_oculus_horizon_legacy_social_adapters_GameInvitesAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/adapters/GameInvitesAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/GameInvitesFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/GameInvitesAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/GameInvitesFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/GameInvitesAdapter;

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/GameInvitesFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_GAME_INVITES:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/GameInvitesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/legacy/social/fragments/GameInvitesFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/GameInvitesFragment;)V

    .line 27
    invoke-super {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onResume()V

    .line 38
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/GameInvitesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->social_game_invites_label:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/GameInvitesFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/GameInvitesAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/GameInvitesAdapter;->refresh()V

    .line 40
    return-void
.end method
