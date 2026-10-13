.class public Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "NuxPreferencesSettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBrowserPrompt:Lcom/oculus/horizon/widget/SwitchButtonSetting;

.field private mClientPreferencesMethods:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mConfirmQuit:Lcom/oculus/horizon/widget/SwitchButtonSetting;

.field private mConfirmQuitNotif:Lcom/oculus/horizon/widget/SwitchButtonSetting;

.field private mFocus:Lcom/oculus/horizon/widget/SwitchButtonSetting;

.field private mHSWLong:Lcom/oculus/horizon/widget/SwitchButtonSetting;

.field private mHSWOptOut:Lcom/oculus/horizon/widget/SwitchButtonSetting;

.field private mMalibuRecenterOptOut:Lcom/oculus/horizon/widget/SwitchButtonSetting;

.field private mNux:Lcom/oculus/horizon/widget/SwitchButtonSetting;

.field private mPartyCalls:Lcom/oculus/horizon/widget/SwitchButtonSetting;

.field private mSavedPrompt:Lcom/oculus/horizon/widget/SwitchButtonSetting;

.field private mTutorial:Lcom/oculus/horizon/widget/SwitchButtonSetting;

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;->$ul_$xXXcom_oculus_horizon_client$x5Fpreferences_api_ClientPreferencesMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mClientPreferencesMethods:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;

    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)Lcom/oculus/horizon/widget/SwitchButtonSetting;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mHSWOptOut:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)Lcom/oculus/horizon/widget/SwitchButtonSetting;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mFocus:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)Lcom/oculus/horizon/widget/SwitchButtonSetting;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mPartyCalls:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)Lcom/oculus/horizon/widget/SwitchButtonSetting;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mNux:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mutateNuxPreference(Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)Lcom/oculus/horizon/widget/SwitchButtonSetting;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mMalibuRecenterOptOut:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)Lcom/oculus/horizon/widget/SwitchButtonSetting;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mSavedPrompt:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)Lcom/oculus/horizon/widget/SwitchButtonSetting;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mBrowserPrompt:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)Lcom/oculus/horizon/widget/SwitchButtonSetting;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mHSWLong:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)Lcom/oculus/horizon/widget/SwitchButtonSetting;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mTutorial:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)Lcom/oculus/horizon/widget/SwitchButtonSetting;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mConfirmQuit:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)Lcom/oculus/horizon/widget/SwitchButtonSetting;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mConfirmQuitNotif:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    return-object v0
.end method

.method private mutateNuxPreference(Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;Z)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mClientPreferencesMethods:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;

    new-instance v1, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$12;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$12;-><init>(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;->mutatePreference(Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;ZLretrofit/Callback;)V

    .line 228
    return-void
.end method


# virtual methods
.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 248
    sget v0, Lcom/oculus/horizon/R$string;->nux_preferences_settings:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_NUX_PREFERENCES:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 58
    sget v0, Lcom/oculus/horizon/R$layout;->settings_nux_preferences:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    sget v0, Lcom/oculus/horizon/R$id;->hsw_opt_out:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iput-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mHSWOptOut:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mHSWOptOut:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    new-instance v2, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$1;-><init>(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mHSWOptOut:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iget-object v2, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v2}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasOptedOutHSW()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setChecked(Z)V

    .line 73
    sget v0, Lcom/oculus/horizon/R$id;->malibu_recenter_opt_out:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iput-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mMalibuRecenterOptOut:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mMalibuRecenterOptOut:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    new-instance v2, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$2;-><init>(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mMalibuRecenterOptOut:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iget-object v2, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v2}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasOptedOutOfMalibuRecenter()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setChecked(Z)V

    .line 90
    sget v0, Lcom/oculus/horizon/R$id;->saved_prompt_seen:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iput-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mSavedPrompt:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mSavedPrompt:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    new-instance v2, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$3;-><init>(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mSavedPrompt:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iget-object v2, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v2}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenSavedPrompt()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setChecked(Z)V

    .line 103
    sget v0, Lcom/oculus/horizon/R$id;->browser_prompt_seen:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iput-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mBrowserPrompt:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mBrowserPrompt:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    new-instance v2, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$4;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$4;-><init>(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mBrowserPrompt:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iget-object v2, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v2}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenInternetBrowserPrompt()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setChecked(Z)V

    .line 119
    sget v0, Lcom/oculus/horizon/R$id;->hsw_long_seen:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iput-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mHSWLong:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mHSWLong:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    new-instance v2, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$5;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$5;-><init>(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mHSWLong:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iget-object v2, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v2}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenLongHSW()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setChecked(Z)V

    .line 131
    sget v0, Lcom/oculus/horizon/R$id;->tutorial_prompt_seen:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iput-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mTutorial:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mTutorial:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    new-instance v2, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$6;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$6;-><init>(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mTutorial:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iget-object v2, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v2}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenTutorialPrompt()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setChecked(Z)V

    .line 144
    sget v0, Lcom/oculus/horizon/R$id;->confirm_quit_seen:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iput-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mConfirmQuit:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mConfirmQuit:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    new-instance v2, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$7;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$7;-><init>(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mConfirmQuit:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iget-object v2, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v2}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenConfirmQuit()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setChecked(Z)V

    .line 157
    sget v0, Lcom/oculus/horizon/R$id;->confirm_quit_notif_seen:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iput-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mConfirmQuitNotif:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    .line 158
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mConfirmQuitNotif:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    new-instance v2, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$8;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$8;-><init>(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mConfirmQuitNotif:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iget-object v2, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v2}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenConfirmQuitNotif()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setChecked(Z)V

    .line 173
    sget v0, Lcom/oculus/horizon/R$id;->focus_screen_seen:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iput-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mFocus:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mFocus:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    new-instance v2, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$9;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$9;-><init>(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mFocus:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iget-object v2, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v2}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenFocus()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setChecked(Z)V

    .line 185
    sget v0, Lcom/oculus/horizon/R$id;->party_calls_seen:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iput-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mPartyCalls:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    .line 186
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mPartyCalls:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    new-instance v2, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$10;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$10;-><init>(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mPartyCalls:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iget-object v2, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v2}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenPartyCallsNUX()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setChecked(Z)V

    .line 198
    sget v0, Lcom/oculus/horizon/R$id;->nux_finished:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iput-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mNux:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    .line 199
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mNux:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    new-instance v2, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$11;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$11;-><init>(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mNux:Lcom/oculus/horizon/widget/SwitchButtonSetting;

    iget-object v2, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v2}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasFinishedNux()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setChecked(Z)V

    .line 211
    return-object v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 238
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->updateTitleBarText()V

    .line 239
    return-void
.end method
