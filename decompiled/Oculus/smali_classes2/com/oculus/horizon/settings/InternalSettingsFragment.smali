.class public Lcom/oculus/horizon/settings/InternalSettingsFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "InternalSettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPromotionSharedPreferencesHelper:Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserRoadblockHSWShowChecker:Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWShowChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/InternalSettingsFragment;)V
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/InternalSettingsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/InternalSettingsFragment;)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/settings/InternalSettingsFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/horizon/social/SocialMethods;->$ul_$xXXcom_oculus_horizon_social_SocialMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/social/SocialMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/InternalSettingsFragment;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    invoke-static {p0}, Lcom/oculus/horizon/debug/DebugErrorToaster;->$ul_$xXXcom_oculus_horizon_debug_DebugErrorToaster$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/InternalSettingsFragment;->mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;

    invoke-static {p0}, Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;->$ul_$xXXcom_oculus_horizon_promotion_PromotionSharedPreferencesHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/InternalSettingsFragment;->mPromotionSharedPreferencesHelper:Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;

    invoke-static {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWShowChecker;->$ul_$xXXcom_oculus_horizon_roadblock_ui_UserRoadblockHSWShowChecker$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWShowChecker;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/InternalSettingsFragment;->mUserRoadblockHSWShowChecker:Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWShowChecker;

    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/InternalSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-static {p0}, Lcom/oculus/mobileconfig/init/MobileConfigInitModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/InternalSettingsFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/InternalSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/facebook/mobileconfig/factory/MobileConfig;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/facebook/inject/InjectionContext;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/oculus/horizon/debug/DebugErrorToaster;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment;->mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/oculus/horizon/settings/InternalSettingsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/oculus/horizon/social/SocialMethods;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment;->mPromotionSharedPreferencesHelper:Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWShowChecker;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment;->mUserRoadblockHSWShowChecker:Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWShowChecker;

    return-object v0
.end method

.method private setupSettingsItems(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    sget v0, Lcom/oculus/horizon/R$id;->gatekeepers:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment$1;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget v0, Lcom/oculus/horizon/R$id;->platform_endpoint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment$2;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget v0, Lcom/oculus/horizon/R$id;->settings_check_app_versions_roadblock:I

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomSetting;

    .line 121
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment$3;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;Lcom/oculus/horizon/widget/CustomSetting;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    .line 139
    invoke-virtual {v1}, Lcom/oculus/horizon/profile/UserProfileHelper;->getShouldCheckForAppVersionRoadblock()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/oculus/horizon/R$string;->setting_enabled:I

    .line 138
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomSetting;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 143
    sget v0, Lcom/oculus/horizon/R$id;->events_always_joinable_setting:I

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomSetting;

    .line 146
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$4;

    invoke-direct {v1, p0, v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment$4;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;Lcom/oculus/horizon/widget/CustomSetting;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "events_preferences"

    .line 170
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_make_events_always_joinable"

    .line 171
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 173
    if-eqz v1, :cond_1

    sget v1, Lcom/oculus/horizon/R$string;->setting_enabled:I

    :goto_1
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomSetting;->setSubtitle(I)V

    .line 176
    sget v0, Lcom/oculus/horizon/R$id;->store_overrides:I

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomSetting;

    .line 179
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$5;

    invoke-direct {v1, p0, v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment$5;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;Lcom/oculus/horizon/widget/CustomSetting;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    .line 203
    invoke-virtual {v1}, Lcom/oculus/horizon/profile/UserProfileHelper;->isUseTestStores()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/oculus/horizon/R$string;->setting_enabled:I

    .line 202
    :goto_2
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomSetting;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 209
    sget v0, Lcom/oculus/horizon/R$id;->fresco_debug:I

    .line 210
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomSetting;

    .line 211
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$6;

    invoke-direct {v1, p0, v2, v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment$6;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;Landroid/content/Context;Lcom/oculus/horizon/widget/CustomSetting;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-static {v2}, Lcom/oculus/horizon/util/errors/FrescoDebugOverlayHelper;->isDebugOverlayEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/oculus/horizon/R$string;->setting_enabled:I

    .line 223
    :goto_3
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomSetting;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 228
    sget v0, Lcom/oculus/horizon/R$id;->reset_social_nux:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$7;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment$7;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    sget v0, Lcom/oculus/horizon/R$id;->reset_activity_privacy_update_roadblock:I

    .line 251
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 252
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$8;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment$8;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    sget v0, Lcom/oculus/horizon/R$id;->reset_payments_nux:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 281
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$9;

    invoke-direct {v1, p0, v2}, Lcom/oculus/horizon/settings/InternalSettingsFragment$9;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    sget v0, Lcom/oculus/horizon/R$id;->quick_promotions:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 295
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$10;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment$10;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    sget v0, Lcom/oculus/horizon/R$id;->fb_login:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 304
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$11;

    invoke-direct {v1, p0, v2}, Lcom/oculus/horizon/settings/InternalSettingsFragment$11;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    sget v0, Lcom/oculus/horizon/R$id;->quit_horizon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 314
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$12;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment$12;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    sget v0, Lcom/oculus/horizon/R$id;->crash_horizon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 323
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$13;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment$13;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    sget v0, Lcom/oculus/horizon/R$id;->save_internal_data:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 332
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$14;

    invoke-direct {v1, p0, v2}, Lcom/oculus/horizon/settings/InternalSettingsFragment$14;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    sget v0, Lcom/oculus/horizon/R$id;->reset_controller_nux:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 341
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$15;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment$15;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    sget v0, Lcom/oculus/horizon/R$id;->nux_preferences:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 354
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$16;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment$16;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    sget v0, Lcom/oculus/horizon/R$id;->themes_preference:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 363
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$17;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment$17;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    sget v0, Lcom/oculus/horizon/R$id;->react_native_preference:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 372
    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$18;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment$18;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    return-void

    .line 139
    :cond_0
    sget v1, Lcom/oculus/horizon/R$string;->setting_disabled:I

    goto/16 :goto_0

    .line 173
    :cond_1
    sget v1, Lcom/oculus/horizon/R$string;->setting_disabled:I

    goto/16 :goto_1

    .line 203
    :cond_2
    sget v1, Lcom/oculus/horizon/R$string;->setting_disabled:I

    goto/16 :goto_2

    .line 224
    :cond_3
    sget v1, Lcom/oculus/horizon/R$string;->setting_disabled:I

    goto/16 :goto_3
.end method


# virtual methods
.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lcom/oculus/horizon/R$string;->settings_internal:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_INTERNAL:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/InternalSettingsFragment;)V

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 72
    sget v0, Lcom/oculus/horizon/R$layout;->settings_internal_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 73
    invoke-direct {p0, v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->setupSettingsItems(Landroid/view/View;)V

    .line 75
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 86
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->updateTitleBarText()V

    .line 87
    return-void
.end method
