.class public Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;
.super Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/oculus/horizon/legacy/social/SocialManager$BlockedUsersListener;
.implements Lcom/oculus/horizon/main/SometimesTopLevelFragment;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mItsMe:Z

.field private mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mReferrer:Ljava/lang/String;

.field private mSocialDialogFactory:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;)V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->$ul_$xXXcom_oculus_horizon_legacy_social_adapters_ProfileFragmentAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->$ul_$xXXcom_oculus_horizon_legacy_social_SocialManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {p0}, Lcom/oculus/horizon/social/SocialUtils;->$ul_$xXXcom_oculus_horizon_social_SocialUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/social/SocialUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/SocialDialogFactory;->$ul_$xXXcom_oculus_horizon_legacy_social_SocialDialogFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mSocialDialogFactory:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_app_NotificationManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->updateTitleBar()V

    return-void
.end method

.method private doOpenSearch(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 203
    const-class v0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    const/4 v1, 0x0

    .line 204
    invoke-static {p1, v0, v1}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 203
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 205
    return-void
.end method

.method private shouldShowAddFriends()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mItsMe:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->getFriendsCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowBlock()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mItsMe:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->getUser()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowUnfriend()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mItsMe:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->getUser()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->getUser()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/social/SocialUtils;->isFriend(Lcom/oculus/horizon/api/common/user/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTitleBar()V
    .locals 4

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/main/MainActivity;

    .line 195
    iget-boolean v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mItsMe:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/MeManager;->me()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v1

    .line 196
    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/oculus/horizon/api/common/user/User;->alias:Ljava/lang/String;

    .line 197
    :goto_1
    iget-boolean v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mItsMe:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/oculus/horizon/mainnavigation/NavItem;->PROFILE:Lcom/oculus/horizon/mainnavigation/NavItem;

    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/oculus/horizon/main/MainActivity;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    .line 199
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 200
    return-void

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->getUser()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v1

    goto :goto_0

    .line 196
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 197
    :cond_2
    sget-object v2, Lcom/oculus/horizon/mainnavigation/NavItem;->FRIENDS:Lcom/oculus/horizon/mainnavigation/NavItem;

    goto :goto_2
.end method


# virtual methods
.method protected getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->TAG:Ljava/lang/String;

    const-string v1, "getTrackingView was called when it shouldn\'t be due to overridden reportView"

    invoke-static {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public isTopLevelFragment()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mItsMe:Z

    return v0
.end method

.method public onBlockUser(Lcom/oculus/horizon/social/api/BlockedUser;)V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->getUser()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->alias:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/horizon/social/api/BlockedUser;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->social_block_success:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 218
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 220
    :cond_0
    return-void
.end method

.method public onBlockUserError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public onBlockedUsersError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;)V

    .line 58
    invoke-super {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 61
    const-string v0, "user"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/User;

    .line 62
    const-string v3, "user_id"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    const-string v5, "referrer"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mReferrer:Ljava/lang/String;

    .line 65
    const-string v5, "dismiss_notification_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 66
    if-lez v4, :cond_0

    .line 67
    iget-object v5, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 70
    :cond_0
    if-eqz v0, :cond_2

    move v4, v2

    .line 71
    :goto_0
    if-eqz v3, :cond_1

    move v1, v2

    .line 73
    :cond_1
    xor-int/2addr v1, v4

    const-string v4, "Create this with an User object or with a user_id, but never with both"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 77
    if-eqz v0, :cond_3

    .line 78
    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    .line 80
    :goto_1
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/social/SocialUtils;->itsMe(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mItsMe:Z

    .line 81
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->setUserId(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment$1;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->registerBlockedUsersListener(Lcom/oculus/horizon/legacy/social/SocialManager$BlockedUsersListener;)Lcom/oculus/horizon/social/model/SocialData;

    .line 92
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->setHasOptionsMenu(Z)V

    .line 93
    return-void

    :cond_2
    move v4, v1

    .line 70
    goto :goto_0

    :cond_3
    move-object v0, v3

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/oculus/horizon/R$menu;->social_profile:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 140
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 141
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->unregisterBlockedUsersListener(Lcom/oculus/horizon/legacy/social/SocialManager$BlockedUsersListener;)V

    .line 123
    invoke-super {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onDestroy()V

    .line 124
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 145
    sget v1, Lcom/oculus/horizon/R$id;->action_block:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 146
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mSocialDialogFactory:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

    .line 148
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-virtual {v3}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->getUser()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v3

    sget-object v4, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_PROFILE:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 147
    invoke-virtual {v1, v2, v3, v4}, Lcom/oculus/horizon/legacy/social/SocialDialogFactory;->newBlockDialog(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/User;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroid/app/Dialog;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;->showAlertDialog(Landroid/app/Dialog;)V

    .line 161
    :goto_0
    return v0

    .line 151
    :cond_0
    sget v1, Lcom/oculus/horizon/R$id;->action_unfriend:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 152
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mSocialDialogFactory:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

    .line 154
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-virtual {v3}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->getUser()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v3

    sget-object v4, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_PROFILE:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 153
    invoke-virtual {v1, v2, v3, v4}, Lcom/oculus/horizon/legacy/social/SocialDialogFactory;->newUnfriendDialog(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/User;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroid/app/Dialog;

    move-result-object v1

    .line 155
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;->showAlertDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 157
    :cond_1
    sget v1, Lcom/oculus/horizon/R$id;->action_add:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->doOpenSearch(Landroid/content/Context;)V

    goto :goto_0

    .line 161
    :cond_2
    invoke-super {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .prologue
    .line 166
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 167
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 168
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 169
    sget v3, Lcom/oculus/horizon/R$id;->action_add:I

    if-ne v2, v3, :cond_1

    .line 170
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->shouldShowAddFriends()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 166
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    sget v3, Lcom/oculus/horizon/R$id;->action_block:I

    if-ne v2, v3, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->shouldShowBlock()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 173
    :cond_2
    sget v3, Lcom/oculus/horizon/R$id;->action_unfriend:I

    if-ne v2, v3, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->shouldShowUnfriend()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 177
    :cond_3
    invoke-super {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 178
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onResume()V

    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->refresh()V

    .line 118
    return-void
.end method

.method public onUnblockUser(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public onUnblockUserError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method protected reportView()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_PROFILE:Lcom/oculus/horizon/logging/TrackingViews$View;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    .line 105
    invoke-virtual {v2}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mReferrer:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportSocialView(Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method protected reportViewEnd()V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_PROFILE:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->reportViewEndInternal(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 111
    return-void
.end method

.method public setBlockedUsers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/social/api/BlockedUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    return-void
.end method

.method protected showLoadedState()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->showLoadedState()V

    .line 248
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->shouldHeaderFillHeight()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->setLineDividersVisible(Z)V

    .line 249
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
