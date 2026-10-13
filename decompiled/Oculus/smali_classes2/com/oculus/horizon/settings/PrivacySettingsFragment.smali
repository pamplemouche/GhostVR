.class public Lcom/oculus/horizon/settings/PrivacySettingsFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "PrivacySettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;


# instance fields
.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mPerformanceLogger:Lcom/oculus/perflogs/OculusPerformanceLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/PrivacySettingsFragment;)V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/PrivacySettingsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/PrivacySettingsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/PrivacySettingsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/PrivacySettingsFragment;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/PrivacySettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/perflogs/impl/fbquicklog/FbQuicklogPerformanceLoggerModule;->$ul_$xXXcom_oculus_perflogs_OculusPerformanceLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/perflogs/OculusPerformanceLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/PrivacySettingsFragment;->mPerformanceLogger:Lcom/oculus/perflogs/OculusPerformanceLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/oculus/horizon/R$string;->settings_privacy:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_PRIVACY_LANDING_PAGE:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/PrivacySettingsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/PrivacySettingsFragment;)V

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 41
    sget v0, Lcom/oculus/horizon/R$layout;->settings_privacy_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 76
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsFragment;->updateTitleBarText()V

    .line 77
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->content_frame:I

    new-instance v2, Lcom/oculus/horizon/settings/NamePrivacyFragment;

    invoke-direct {v2}, Lcom/oculus/horizon/settings/NamePrivacyFragment;-><init>()V

    .line 50
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->content_frame:I

    new-instance v2, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    invoke-direct {v2}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;-><init>()V

    .line 51
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->content_frame:I

    new-instance v2, Lcom/oculus/horizon/settings/FriendsListPrivacyFragment;

    invoke-direct {v2}, Lcom/oculus/horizon/settings/FriendsListPrivacyFragment;-><init>()V

    .line 52
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 55
    :cond_1
    sget v0, Lcom/oculus/horizon/R$id;->blocked_users:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/oculus/horizon/settings/PrivacySettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/PrivacySettingsFragment$1;-><init>(Lcom/oculus/horizon/settings/PrivacySettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportPrivacyScreenOpened()V

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsFragment;->mPerformanceLogger:Lcom/oculus/perflogs/OculusPerformanceLogger;

    const v1, 0xeb0002

    const/16 v2, 0x2d

    invoke-interface {v0, v1, v2}, Lcom/oculus/perflogs/OculusPerformanceLogger;->markerEnd(IS)V

    .line 66
    return-void
.end method
