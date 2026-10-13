.class public Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;
.super Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;
.source "UserActivityPrivacyFragment.java"

# interfaces
.implements Lcom/oculus/horizon/legacy/social/SocialManager$ActivityPrivacyUpdateRoadblockListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mAreYouSureDialog:Landroid/app/Dialog;

.field private mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mIsInActivityPrivacyUpdateRoadblock:Z

.field private mLearnMoreDialog:Landroid/app/Dialog;

.field private mNotificationsSettingsMethods:Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mRoadblockOriginalPrivacyStateString:Ljava/lang/String;

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;)V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;)V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;->$ul_$xXXcom_oculus_horizon_notifications_NotificationsSettingsMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mNotificationsSettingsMethods:Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;

    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mIsInActivityPrivacyUpdateRoadblock:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mLearnMoreDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mAreYouSureDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->startLoadingState()V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mRoadblockOriginalPrivacyStateString:Ljava/lang/String;

    return-object v0
.end method

.method private startLoadingState()V
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->setSettingsEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 221
    return-void
.end method

.method private stopLoadingState()V
    .locals 2

    .prologue
    .line 224
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->setSettingsEnabled(Z)V

    .line 225
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 226
    return-void
.end method


# virtual methods
.method protected buildPrivacyStateToViewMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/oculus/horizon/social/model/PrivacyState;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyState;->ANYONE:Lcom/oculus/horizon/social/model/PrivacyState;

    sget v2, Lcom/oculus/horizon/R$id;->anyone:I

    .line 207
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyState;->FRIENDS:Lcom/oculus/horizon/social/model/PrivacyState;

    sget v2, Lcom/oculus/horizon/R$id;->friends:I

    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyState;->SELF:Lcom/oculus/horizon/social/model/PrivacyState;

    sget v2, Lcom/oculus/horizon/R$id;->invisible:I

    .line 209
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 201
    sget v0, Lcom/oculus/horizon/R$layout;->settings_privacy_user_activity_fragment:I

    return v0
.end method

.method protected getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/oculus/horizon/social/model/PrivacyConcept;->ACTIVITY:Lcom/oculus/horizon/social/model/PrivacyConcept;

    return-object v0
.end method

.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 215
    sget v0, Lcom/oculus/horizon/R$string;->settings_user_activity_privacy:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_PRIVACY_ACTIVITY:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;)V

    .line 57
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_is_in_roadblock"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mIsInActivityPrivacyUpdateRoadblock:Z

    .line 61
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_roadblock_original_privacy"

    const-string v2, "unknown"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mRoadblockOriginalPrivacyStateString:Ljava/lang/String;

    .line 63
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-boolean v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mIsInActivityPrivacyUpdateRoadblock:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->unregisterActivityPrivacyUpdateRoadblockListener(Lcom/oculus/horizon/legacy/social/SocialManager$ActivityPrivacyUpdateRoadblockListener;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mLearnMoreDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mLearnMoreDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 148
    :cond_1
    iput-object v1, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mLearnMoreDialog:Landroid/app/Dialog;

    .line 150
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mAreYouSureDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mAreYouSureDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 153
    :cond_2
    iput-object v1, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mAreYouSureDialog:Landroid/app/Dialog;

    .line 155
    iput-object v1, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 157
    invoke-super {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->onDestroyView()V

    .line 158
    return-void
.end method

.method public onSetRoadblockSeenError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->stopLoadingState()V

    .line 175
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    .line 177
    sget v1, Lcom/oculus/horizon/R$string;->common_error_unknown:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 179
    :cond_0
    return-void
.end method

.method public onSetRoadblockSeenSuccess()V
    .locals 3

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->stopLoadingState()V

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/main/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    const v1, 0x10018000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 170
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/settings/UserActivityPrivacyDialog;->create(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mLearnMoreDialog:Landroid/app/Dialog;

    .line 70
    new-instance v0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    .line 71
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->settings_user_activity_privacy_are_you_sure:I

    .line 72
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_user_activity_privacy_are_you_sure_explanation:I

    .line 73
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setMessage(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    new-instance v2, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$1;-><init>(Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;)V

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setNegativeButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mAreYouSureDialog:Landroid/app/Dialog;

    .line 88
    sget v0, Lcom/oculus/horizon/R$id;->learn_more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    sget v1, Lcom/oculus/horizon/logging/LoggingModule$UL_id;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 1
    invoke-static {v1, v2}, Lcom/facebook/inject/FbInjector;->localInstance(ILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/logging/OculusLogger;

    .line 90
    new-instance v2, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$2;-><init>(Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;Lcom/oculus/horizon/logging/OculusLogger;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    sget v0, Lcom/oculus/horizon/R$id;->invisible:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$3;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$3;-><init>(Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;)V

    .line 102
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    sget v0, Lcom/oculus/horizon/R$id;->continue_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 113
    iget-object v2, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    iget-boolean v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mIsInActivityPrivacyUpdateRoadblock:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/oculus/horizon/widget/ProgressButton;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v2, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$4;

    invoke-direct {v2, p0, v1}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$4;-><init>(Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;Lcom/oculus/horizon/logging/OculusLogger;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-boolean v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mIsInActivityPrivacyUpdateRoadblock:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->registerActivityPrivacyUpdateRoadblockListener(Lcom/oculus/horizon/legacy/social/SocialManager$ActivityPrivacyUpdateRoadblockListener;)V

    .line 132
    :cond_0
    return-void

    .line 113
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected setSelected(Lcom/oculus/horizon/social/model/PrivacyState;)V
    .locals 0
    .param p1    # Lcom/oculus/horizon/social/model/PrivacyState;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->setSelected(Lcom/oculus/horizon/social/model/PrivacyState;)V

    .line 197
    return-void
.end method

.method protected setSettingsEnabled(Z)V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->setSettingsEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/ProgressButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/widget/ProgressButton;->setEnabled(Z)V

    .line 187
    :cond_0
    return-void
.end method
