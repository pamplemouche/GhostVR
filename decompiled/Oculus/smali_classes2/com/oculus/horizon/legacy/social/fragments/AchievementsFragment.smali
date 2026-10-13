.class public Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;
.super Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;
.source "AchievementsFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;)V
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;)V
    .locals 1

    .prologue
    .line 18
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;->$ul_$xXXcom_oculus_horizon_legacy_social_adapters_AchievementsFragmentAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->TAG:Ljava/lang/String;

    const-string v1, "getTrackingView was called when it shouldn\'t be due to overridden reportView"

    invoke-static {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;)V

    .line 28
    invoke-super {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 31
    const-string v1, "extra_user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    const-string v2, "extra_application_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    const-string v3, "extra_application_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    invoke-virtual {v3, v1, v2, v0}, Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onResume()V

    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;->refresh()V

    .line 60
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "extra_application_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method protected reportView()V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    .line 48
    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    invoke-virtual {v2}, Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    invoke-virtual {v3}, Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;->getApplicationName()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportSocialAchievementsView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method protected reportViewEnd()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_ACHIEVEMENTS:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/legacy/social/fragments/AchievementsFragment;->reportViewEndInternal(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 54
    return-void
.end method
