.class public Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;
.super Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;
.source "UserRoadblockActivityPrivacyUpdateFragment.java"

# interfaces
.implements Lcom/oculus/horizon/legacy/social/SocialManager$ActivityPrivacyUpdateRoadblockListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mLearnMoreDialog:Landroid/app/Dialog;

.field mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mOriginalPrivacyStateString:Ljava/lang/String;

.field mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;)V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;)V
    .locals 1

    .prologue
    .line 43
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->$ul_$xXXcom_oculus_horizon_legacy_social_SocialManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mOriginalPrivacyStateString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->getCurrentStateString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mLearnMoreDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private getCurrentStateString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyConcept;->ACTIVITY:Lcom/oculus/horizon/social/model/PrivacyConcept;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/MeManager;->getCurrentPrivacyState(Lcom/oculus/horizon/social/model/PrivacyConcept;)Lcom/oculus/horizon/social/model/CurrentPrivacyState;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oculus/horizon/social/model/CurrentPrivacyState;->state:Lcom/oculus/horizon/social/model/PrivacyState;

    invoke-virtual {v0}, Lcom/oculus/horizon/social/model/PrivacyState;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private isOnlyYouPrivacyState()Z
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyConcept;->ACTIVITY:Lcom/oculus/horizon/social/model/PrivacyConcept;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/MeManager;->getCurrentPrivacyState(Lcom/oculus/horizon/social/model/PrivacyConcept;)Lcom/oculus/horizon/social/model/CurrentPrivacyState;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oculus/horizon/social/model/CurrentPrivacyState;->state:Lcom/oculus/horizon/social/model/PrivacyState;

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyState;->SELF:Lcom/oculus/horizon/social/model/PrivacyState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSkipClicked()V
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/ProgressButton;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 210
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v1, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;->SKIP:Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    iget-object v2, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mOriginalPrivacyStateString:Ljava/lang/String;

    .line 213
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->getCurrentStateString()Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportActivityPrivacyRoadblockEvent(Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->setSeenActivityPrivacyUpdateRoadblock()V

    goto :goto_0
.end method

.method private shouldShowSkipButton()Z
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/oculus/horizon/social/model/PrivacyState;->SELF:Lcom/oculus/horizon/social/model/PrivacyState;

    invoke-virtual {v0}, Lcom/oculus/horizon/social/model/PrivacyState;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mOriginalPrivacyStateString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->TAG:Ljava/lang/String;

    const-string v1, "getTrackingView was called when it shouldn\'t be due to overridden reportView"

    invoke-static {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;)V

    .line 61
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 180
    sget v0, Lcom/oculus/horizon/R$menu;->common_skip:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 181
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 182
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 66
    sget v0, Lcom/oculus/horizon/R$layout;->user_roadblock_activity_privacy_update_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->unregisterActivityPrivacyUpdateRoadblockListener(Lcom/oculus/horizon/legacy/social/SocialManager$ActivityPrivacyUpdateRoadblockListener;)V

    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mLearnMoreDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mLearnMoreDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 147
    :cond_0
    iput-object v1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mLearnMoreDialog:Landroid/app/Dialog;

    .line 149
    iput-object v1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 151
    invoke-super {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onDestroyView()V

    .line 152
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->action_skip:I

    if-ne v0, v1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->onSkipClicked()V

    .line 198
    const/4 v0, 0x1

    .line 200
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
    .line 186
    sget v0, Lcom/oculus/horizon/R$id;->action_skip:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->shouldShowSkipButton()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 187
    invoke-super {p0, p1}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 188
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onResume()V

    .line 175
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->roadblock_activity_privacy_update_title:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 176
    return-void
.end method

.method public onSetRoadblockSeenError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    sget v1, Lcom/oculus/horizon/R$string;->common_error_unknown:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 231
    :cond_0
    return-void
.end method

.method public onSetRoadblockSeenSuccess()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->onRoadblockCompleted()V

    .line 222
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 72
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0, v8}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->setHasOptionsMenu(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/settings/UserActivityPrivacyDialog;->create(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mLearnMoreDialog:Landroid/app/Dialog;

    .line 76
    sget v0, Lcom/oculus/horizon/R$id;->learn_more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    new-instance v1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$1;-><init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->isOnlyYouPrivacyState()Z

    move-result v1

    .line 90
    sget v0, Lcom/oculus/horizon/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    if-eqz v1, :cond_0

    .line 92
    sget v2, Lcom/oculus/horizon/R$string;->settings_privacy_common_anyone_title:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    sget v3, Lcom/oculus/horizon/R$string;->settings_privacy_common_friends_title:I

    invoke-virtual {p0, v3}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 94
    sget v4, Lcom/oculus/horizon/R$string;->roadblock_activity_privacy_update_text_only_you_format:I

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v9

    aput-object v3, v5, v8

    .line 95
    invoke-virtual {p0, v4, v5}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 100
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/String;

    aput-object v2, v7, v9

    aput-object v3, v7, v8

    .line 98
    invoke-static {v5, v6, v4, v7}, Lcom/oculus/horizon/util/TextSpanUtils;->highlightText(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_0
    sget v0, Lcom/oculus/horizon/R$id;->continue_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 109
    iget-object v2, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    if-eqz v1, :cond_1

    sget v0, Lcom/oculus/horizon/R$string;->roadblock_activity_privacy_update_button_update:I

    :goto_1
    invoke-virtual {v2, v0}, Lcom/oculus/horizon/widget/ProgressButton;->setText(I)V

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$2;-><init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->registerActivityPrivacyUpdateRoadblockListener(Lcom/oculus/horizon/legacy/social/SocialManager$ActivityPrivacyUpdateRoadblockListener;)V

    .line 138
    return-void

    .line 105
    :cond_0
    sget v2, Lcom/oculus/horizon/R$string;->roadblock_activity_privacy_update_text:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 109
    :cond_1
    sget v0, Lcom/oculus/horizon/R$string;->common_continue:I

    goto :goto_1
.end method

.method protected reportView()V
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->getCurrentStateString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mOriginalPrivacyStateString:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mOriginalPrivacyStateString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportActivityPrivacyRoadblockView(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method protected reportViewEnd()V
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->ROADBLOCK_ACTIVITY_PRIVACY_UPDATE:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->reportViewEndInternal(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 170
    return-void
.end method

.method public shouldDisableBackButton()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    return v0
.end method
