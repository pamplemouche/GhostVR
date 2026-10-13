.class public Lcom/oculus/horizon/settings/SpecificFriendsFragment;
.super Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;
.source "SpecificFriendsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;
.implements Lcom/oculus/horizon/legacy/social/SocialManager$PrivacyListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAdapter:Lcom/oculus/horizon/legacy/social/adapters/SpecificFriendsAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIdentityInSearchPrivacyState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

.field private mIncludedUserIds:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivacyConcept:Lcom/oculus/horizon/social/model/PrivacyConcept;

.field private mPrivacyState:Lcom/oculus/horizon/social/model/PrivacyState;

.field private mSavingChanges:Z

.field mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/SpecificFriendsFragment;)V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/SpecificFriendsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/SpecificFriendsFragment;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->$ul_$xXXcom_oculus_horizon_legacy_social_SocialManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/adapters/SpecificFriendsAdapter;->$ul_$xXXcom_oculus_horizon_legacy_social_adapters_SpecificFriendsAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/adapters/SpecificFriendsAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/SpecificFriendsAdapter;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;-><init>()V

    return-void
.end method

.method private savePrivacySettings()V
    .locals 5

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mSavingChanges:Z

    .line 159
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 161
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->showLoadingState()V

    .line 162
    iget-object v0, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    iget-object v1, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mPrivacyConcept:Lcom/oculus/horizon/social/model/PrivacyConcept;

    iget-object v2, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mPrivacyState:Lcom/oculus/horizon/social/model/PrivacyState;

    iget-object v3, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/SpecificFriendsAdapter;

    .line 165
    invoke-virtual {v3}, Lcom/oculus/horizon/legacy/social/adapters/SpecificFriendsAdapter;->getIncludedUserIds()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mIdentityInSearchPrivacyState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    .line 162
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/legacy/social/SocialManager;->setPrivacy(Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/horizon/social/model/PrivacyState;[Ljava/lang/String;Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;)V

    .line 167
    return-void
.end method


# virtual methods
.method protected getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/SpecificFriendsAdapter;

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_SPECIFIC_FRIENDS:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public isRefreshSwipeEnabled()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mSavingChanges:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/SpecificFriendsFragment;)V

    .line 51
    invoke-super {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 54
    const-string v0, "privacy_state"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/social/model/PrivacyState;

    iput-object v0, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mPrivacyState:Lcom/oculus/horizon/social/model/PrivacyState;

    .line 55
    const-string v0, "privacy_concept"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/social/model/PrivacyConcept;

    iput-object v0, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mPrivacyConcept:Lcom/oculus/horizon/social/model/PrivacyConcept;

    .line 56
    const-string v0, "included_user_ids"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mIncludedUserIds:Lcom/google/common/collect/ImmutableList;

    .line 57
    const-string v0, "identity_in_search"

    .line 58
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    iput-object v0, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mIdentityInSearchPrivacyState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->setHasOptionsMenu(Z)V

    .line 61
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/oculus/horizon/R$menu;->specific_friends:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 82
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 83
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->action_save:I

    if-ne v0, v1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->savePrivacySettings()V

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->unregisterPrivacyListener(Lcom/oculus/horizon/legacy/social/SocialManager$PrivacyListener;)V

    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/SpecificFriendsAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SpecificFriendsAdapter;->getIncludedUserIds()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mIncludedUserIds:Lcom/google/common/collect/ImmutableList;

    .line 105
    invoke-super {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onPause()V

    .line 106
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 96
    sget v0, Lcom/oculus/horizon/R$id;->action_save:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 97
    iget-boolean v0, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mSavingChanges:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 98
    invoke-super {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 99
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrivacySet(Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/horizon/social/model/PrivacyState;)V
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mSavingChanges:Z

    .line 120
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 121
    sget v1, Lcom/oculus/horizon/R$string;->settings_privacy_done_applying:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 122
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onPrivacySetError(Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/http/core/base/ApiError;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 130
    :cond_0
    sget-object v0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->TAG:Ljava/lang/String;

    const-string v1, "Could not set privacy concept [%s] to [%s]. %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mPrivacyConcept:Lcom/oculus/horizon/social/model/PrivacyConcept;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mPrivacyState:Lcom/oculus/horizon/social/model/PrivacyState;

    aput-object v3, v2, v6

    const/4 v3, 0x2

    .line 135
    invoke-virtual {p2}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 130
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iput-boolean v5, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mSavingChanges:Z

    .line 138
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 140
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->showLoadedState()V

    .line 141
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_privacy_error_applying:I

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onResume()V

    .line 71
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_privacy_common_specific_friends_title:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->registerPrivacyListener(Lcom/oculus/horizon/legacy/social/SocialManager$PrivacyListener;)V

    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/SpecificFriendsAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mIncludedUserIds:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/SpecificFriendsAdapter;->setIncludedUserIds(Lcom/google/common/collect/ImmutableList;)V

    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/SpecificFriendsAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SpecificFriendsAdapter;->refresh()V

    .line 77
    return-void
.end method
