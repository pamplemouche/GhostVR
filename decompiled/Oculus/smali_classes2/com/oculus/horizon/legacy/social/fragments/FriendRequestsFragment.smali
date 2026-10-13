.class public Lcom/oculus/horizon/legacy/social/fragments/FriendRequestsFragment;
.super Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;
.source "FriendRequestsFragment.java"


# instance fields
.field mAdapter:Lcom/oculus/horizon/legacy/social/adapters/FriendRequestsAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/FriendRequestsFragment;)V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/legacy/social/fragments/FriendRequestsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/FriendRequestsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/legacy/social/fragments/FriendRequestsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/FriendRequestsFragment;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/adapters/FriendRequestsAdapter;->$ul_$xXXcom_oculus_horizon_legacy_social_adapters_FriendRequestsAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/adapters/FriendRequestsAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/FriendRequestsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/FriendRequestsAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/FriendRequestsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/FriendRequestsAdapter;

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/FriendRequestsFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_FRIEND_REQUESTS:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/FriendRequestsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/legacy/social/fragments/FriendRequestsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/FriendRequestsFragment;)V

    .line 28
    invoke-super {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onResume()V

    .line 39
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/FriendRequestsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->social_friend_requests_label:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/FriendRequestsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/FriendRequestsAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/FriendRequestsAdapter;->refresh()V

    .line 41
    return-void
.end method
