.class public Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;
.super Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;
.source "ProfilePictureRoadblockFragment.java"

# interfaces
.implements Lcom/oculus/horizon/legacy/social/MeManager$Listener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionText:Landroid/widget/TextView;

.field private mAvatarView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mContinueButton:Landroid/widget/TextView;

.field private mIsProfilePictureSet:Z

.field private mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mProfilePictureFileHelper:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUsernameLabel:Landroid/widget/TextView;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;)V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;)V
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {p0}, Lcom/oculus/horizon/camera/CameraModule;->$ul_$xXXcom_oculus_horizon_camera_ProfilePictureFileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mProfilePictureFileHelper:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->showPictureSelectorMenu()V

    return-void
.end method

.method private redrawProfilePicture()Z
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mAvatarView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mProfilePictureFileHelper:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->hasProfilePictureForMe()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mAvatarView:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mProfilePictureFileHelper:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    iget-object v3, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mAvatarView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 129
    invoke-virtual {v2, v3}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->getProfilePictureControllerForMe(Lcom/facebook/drawee/view/DraweeView;)Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 130
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mContinueButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/MeManager;->me()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    iget-object v2, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mActionText:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/oculus/horizon/api/common/user/User;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mUsernameLabel:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/user/User;->alias:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mUsernameLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mContinueButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mUsernameLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPictureSelectorMenu()V
    .locals 3

    .prologue
    .line 173
    new-instance v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$Builder;

    invoke-direct {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$Builder;-><init>()V

    const/4 v1, 0x1

    .line 174
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$Builder;->setIsForRoadblocks(Z)Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$Builder;->build()Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 177
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->ROADBLOCK_PROFILE_PICTURE:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;)V

    .line 53
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 147
    sget v0, Lcom/oculus/horizon/R$menu;->common_skip:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 148
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 149
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 58
    sget v0, Lcom/oculus/horizon/R$layout;->user_roadblock_profile_picture_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/MeManager;->unregisterListener(Lcom/oculus/horizon/legacy/social/MeManager$Listener;)V

    .line 112
    iput-object v1, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mAvatarView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 113
    iput-object v1, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mActionText:Landroid/widget/TextView;

    .line 114
    iput-object v1, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mUsernameLabel:Landroid/widget/TextView;

    .line 115
    iput-object v1, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mContinueButton:Landroid/widget/TextView;

    .line 117
    invoke-super {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onDestroyView()V

    .line 118
    return-void
.end method

.method public onMyUserDataRefreshError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public onMyUserDataRefreshed(Lcom/oculus/horizon/api/common/user/User;)V
    .locals 1
    .param p1    # Lcom/oculus/horizon/api/common/user/User;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->redrawProfilePicture()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mIsProfilePictureSet:Z

    .line 182
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 186
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->action_skip:I

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mRoadblock:Lcom/oculus/horizon/roadblock/model/Roadblock;

    iget-object v1, v1, Lcom/oculus/horizon/roadblock/model/Roadblock;->roadblockType:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    invoke-virtual {v1}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportRoadblockSkippedEvent(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->onRoadblockCompleted()V

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 153
    sget v0, Lcom/oculus/horizon/R$id;->action_skip:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v0, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mIsProfilePictureSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 154
    invoke-super {p0, p1}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 155
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onResume()V

    .line 105
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->roadblock_profile_picture_title:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 106
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->setHasOptionsMenu(Z)V

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/MeManager;->registerListener(Lcom/oculus/horizon/legacy/social/MeManager$Listener;)V

    .line 68
    new-instance v1, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment$1;-><init>(Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;)V

    .line 76
    sget v0, Lcom/oculus/horizon/R$id;->avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mAvatarView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mAvatarView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v0, Lcom/oculus/horizon/R$id;->add_avatar_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mActionText:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mActionText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget v0, Lcom/oculus/horizon/R$id;->username_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mUsernameLabel:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/oculus/horizon/R$id;->continue_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mContinueButton:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mContinueButton:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mContinueButton:Landroid/widget/TextView;

    new-instance v1, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment$2;-><init>(Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->redrawProfilePicture()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->mIsProfilePictureSet:Z

    .line 95
    return-void
.end method

.method public shouldDisableBackButton()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method
