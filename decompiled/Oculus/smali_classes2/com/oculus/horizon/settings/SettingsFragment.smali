.class public Lcom/oculus/horizon/settings/SettingsFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/mainnavigation/TopLevelFragment;
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnCancelListener;
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnClickListener;


# static fields
.field static final SETTINGS_ACTIVITIES_MAP:Ljava/util/Map;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field static final SETTINGS_FRAGMENTS_MAP:Ljava/util/Map;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mDebugMode:Lcom/oculus/debug/DebugMode;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mIsMyOrdersEnabled:Ljavax/inject/Provider;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_horizon_my_orders"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleProvider:Ljavax/inject/Provider;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mPerformanceLogger:Lcom/oculus/perflogs/OculusPerformanceLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mSettingsMethods:Lcom/oculus/horizon/settings/api/SettingsMethods;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mSocialExperiments:Lcom/oculus/horizon/legacy/social/SocialExperiments;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mUserRoadblockHSWShowChecker:Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWShowChecker;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/SettingsFragment;)V
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/SettingsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/SettingsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/SettingsFragment;)V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/settings/SettingsFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/debug/DebugMode;->$ul_$xXXcom_oculus_debug_DebugMode$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/debug/DebugMode;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/SettingsFragment;->mDebugMode:Lcom/oculus/debug/DebugMode;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/SettingsFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {p0}, Lcom/oculus/mobileconfig/init/MobileConfigInitModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/SettingsFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    invoke-static {p0}, Lcom/oculus/horizon/settings/api/SettingsMethods;->$ul_$xXXcom_oculus_horizon_settings_api_SettingsMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/settings/api/SettingsMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/SettingsFragment;->mSettingsMethods:Lcom/oculus/horizon/settings/api/SettingsMethods;

    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/SettingsFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-static {p0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->$ul_$xXXcom_oculus_horizon_fbconnect_FBConnectHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/SettingsFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/SettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-static {p0}, Lcom/oculus/locale/LocaleModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_util_Locale$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/SettingsFragment;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/SocialExperiments;->$ul_$xXXcom_oculus_horizon_legacy_social_SocialExperiments$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/SocialExperiments;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/SettingsFragment;->mSocialExperiments:Lcom/oculus/horizon/legacy/social/SocialExperiments;

    invoke-static {p0}, Lcom/oculus/horizon/settings/SettingsModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Fmy$x5Forders$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/SettingsFragment;->mIsMyOrdersEnabled:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWShowChecker;->$ul_$xXXcom_oculus_horizon_roadblock_ui_UserRoadblockHSWShowChecker$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWShowChecker;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/SettingsFragment;->mUserRoadblockHSWShowChecker:Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWShowChecker;

    invoke-static {p0}, Lcom/oculus/perflogs/impl/fbquicklog/FbQuicklogPerformanceLoggerModule;->$ul_$xXXcom_oculus_perflogs_OculusPerformanceLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/perflogs/OculusPerformanceLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/SettingsFragment;->mPerformanceLogger:Lcom/oculus/perflogs/OculusPerformanceLogger;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/SettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->redeem_code:I

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/settings/RedeemCodeFragment;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->payment_method:I

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->party_call_settings:I

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->linked_accounts_settings:I

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->help:I

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/help/HelpFragment;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->legal:I

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/settings/LegalNoticesFragment;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->notifications_settings:I

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->internal_settings:I

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->hsw_settings:I

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/SettingsFragment;->SETTINGS_FRAGMENTS_MAP:Ljava/util/Map;

    .line 88
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->oculus_pin:I

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/settings/PINSettingsActivity;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/SettingsFragment;->SETTINGS_ACTIVITIES_MAP:Ljava/util/Map;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/SettingsFragment;)Lcom/facebook/mobileconfig/factory/MobileConfig;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/SettingsFragment;)Lcom/facebook/inject/InjectionContext;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oculus/horizon/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SettingsFragment;->onSetPasswordEmailSentSuccess()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oculus/horizon/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SettingsFragment;->onSetPasswordEmailSentError()V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/settings/SettingsFragment;)Lcom/oculus/perflogs/OculusPerformanceLogger;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment;->mPerformanceLogger:Lcom/oculus/perflogs/OculusPerformanceLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/settings/SettingsFragment;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment;->mIsMyOrdersEnabled:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/settings/SettingsFragment;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment;->mLocaleProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/settings/SettingsFragment;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SettingsFragment;->showSetPasswordConfirmationDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/horizon/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SettingsFragment;->showResetPINPasswordRequiredDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/oculus/horizon/settings/SettingsFragment;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SettingsFragment;->showLogoutModal()V

    return-void
.end method

.method private onSetPasswordEmailCancel()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const-string v1, "set_password_cancel"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginEvent(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method private onSetPasswordEmailSentError()V
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const-string v1, "set_password_email_error"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginEvent(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_error_unknown:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 366
    return-void
.end method

.method private onSetPasswordEmailSentSuccess()V
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const-string v1, "set_password_email_sent"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginEvent(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_set_password_email_sent:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 359
    return-void
.end method

.method private setAppVersionText(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 312
    sget v0, Lcom/oculus/horizon/R$id;->app_version:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 314
    sget v1, Lcom/facebook/common/android/AndroidModule$UL_id;->$ul_$xXXandroid_content_pm_PackageInfo$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/settings/SettingsFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 1
    invoke-static {v1, v2}, Lcom/facebook/inject/FbInjector;->localInstance(ILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 317
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    sget-boolean v2, Lcom/oculus/common/build/BuildConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (DEBUG)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method

.method private showLogoutModal()V
    .locals 3

    .prologue
    .line 327
    new-instance v0, Lcom/oculus/horizon/logout/LogoutFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/logout/LogoutFragment;-><init>()V

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "logout_dialog_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logout/LogoutFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private showResetPINPasswordRequiredDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 331
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 332
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->settings_password_required_dialog_title:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 333
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_reset_pin_password_required_dialog_body:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 334
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 335
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->build()Lcom/oculus/horizon/modal/AlertDialogFragment;

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method private showSetPasswordConfirmationDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 341
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 342
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->settings_set_password_confirmation_title:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 343
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_set_password_confirmation_body:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oculus/horizon/settings/SettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    .line 345
    invoke-virtual {v3}, Lcom/oculus/horizon/profile/UserProfileHelper;->getEmail()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 344
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_set_password_confirmation_button:I

    .line 346
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    .line 347
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->build()Lcom/oculus/horizon/modal/AlertDialogFragment;

    move-result-object v0

    .line 349
    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 350
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 351
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCancel(Lcom/oculus/horizon/modal/AlertDialogFragment;I)V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SettingsFragment;->onSetPasswordEmailCancel()V

    goto :goto_0
.end method

.method public onClick(Lcom/oculus/horizon/modal/AlertDialogFragment;II)V
    .locals 2

    .prologue
    .line 374
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 378
    :cond_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 402
    :pswitch_0
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SettingsFragment;->onSetPasswordEmailCancel()V

    goto :goto_0

    .line 380
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const-string v1, "set_password_confirm"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginEvent(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment;->mSettingsMethods:Lcom/oculus/horizon/settings/api/SettingsMethods;

    new-instance v1, Lcom/oculus/horizon/settings/SettingsFragment$11;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/SettingsFragment$11;-><init>(Lcom/oculus/horizon/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/settings/api/SettingsMethods;->setPassword(Lretrofit/Callback;)V

    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/SettingsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/SettingsFragment;)V

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/SettingsFragment;->setHasOptionsMenu(Z)V

    .line 115
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 125
    sget v0, Lcom/oculus/horizon/R$layout;->settings_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 300
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 302
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/main/MainActivity;

    .line 303
    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->SETTINGS:Lcom/oculus/horizon/mainnavigation/NavItem;

    sget v2, Lcom/oculus/horizon/R$string;->drawer_settings:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/main/MainActivity;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    .line 304
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 130
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 133
    sget-object v0, Lcom/oculus/horizon/settings/SettingsFragment;->SETTINGS_FRAGMENTS_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 136
    new-instance v5, Lcom/oculus/horizon/settings/SettingsFragment$1;

    invoke-direct {v5, p0, v0}, Lcom/oculus/horizon/settings/SettingsFragment$1;-><init>(Lcom/oculus/horizon/settings/SettingsFragment;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 149
    :cond_0
    sget v0, Lcom/oculus/horizon/R$id;->privacy_settings:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/oculus/horizon/settings/SettingsFragment$2;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/settings/SettingsFragment$2;-><init>(Lcom/oculus/horizon/settings/SettingsFragment;)V

    .line 150
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    sget v0, Lcom/oculus/horizon/R$id;->purchase_history_link:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/oculus/horizon/settings/SettingsFragment$3;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/settings/SettingsFragment$3;-><init>(Lcom/oculus/horizon/settings/SettingsFragment;)V

    .line 168
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    sget-object v0, Lcom/oculus/horizon/settings/SettingsFragment;->SETTINGS_ACTIVITIES_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 190
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 192
    new-instance v5, Lcom/oculus/horizon/settings/SettingsFragment$4;

    invoke-direct {v5, p0, v0}, Lcom/oculus/horizon/settings/SettingsFragment$4;-><init>(Lcom/oculus/horizon/settings/SettingsFragment;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->hasSystemCreatedPassword()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    sget v0, Lcom/oculus/horizon/R$id;->password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 204
    sget v3, Lcom/oculus/horizon/R$string;->settings_set_password:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 205
    new-instance v3, Lcom/oculus/horizon/settings/SettingsFragment$5;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/settings/SettingsFragment$5;-><init>(Lcom/oculus/horizon/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    sget v0, Lcom/oculus/horizon/R$id;->oculus_pin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 216
    new-instance v3, Lcom/oculus/horizon/settings/SettingsFragment$6;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/settings/SettingsFragment$6;-><init>(Lcom/oculus/horizon/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    :goto_2
    sget v0, Lcom/oculus/horizon/R$id;->bluetooth:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 247
    new-instance v3, Lcom/oculus/horizon/settings/SettingsFragment$8;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/settings/SettingsFragment$8;-><init>(Lcom/oculus/horizon/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-static {}, Lcom/oculus/util/device/DeviceUtils;->isNote4Device()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 258
    sget v3, Lcom/oculus/horizon/R$id;->settings_device:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :cond_2
    sget v0, Lcom/oculus/horizon/R$id;->advanced_settings:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/oculus/horizon/settings/SettingsFragment$9;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/settings/SettingsFragment$9;-><init>(Lcom/oculus/horizon/settings/SettingsFragment;)V

    .line 264
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    sget v0, Lcom/oculus/horizon/R$id;->logout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 273
    new-instance v3, Lcom/oculus/horizon/settings/SettingsFragment$10;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/settings/SettingsFragment$10;-><init>(Lcom/oculus/horizon/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    sget v0, Lcom/oculus/horizon/R$id;->email:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomSetting;

    .line 282
    iget-object v3, p0, Lcom/oculus/horizon/settings/SettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v3}, Lcom/oculus/horizon/profile/UserProfileHelper;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/CustomSetting;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 284
    invoke-direct {p0, p1}, Lcom/oculus/horizon/settings/SettingsFragment;->setAppVersionText(Landroid/view/View;)V

    .line 287
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment;->mDebugMode:Lcom/oculus/debug/DebugMode;

    invoke-virtual {v0}, Lcom/oculus/debug/DebugMode;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    sget v0, Lcom/oculus/horizon/R$id;->internal_settings:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    :cond_3
    sget v0, Lcom/oculus/horizon/R$id;->hsw_settings:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    sget v0, Lcom/oculus/horizon/R$id;->party_call_settings:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment;->mSocialExperiments:Lcom/oculus/horizon/legacy/social/SocialExperiments;

    .line 295
    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/SocialExperiments;->isProfileTuneInButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 294
    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 296
    return-void

    .line 226
    :cond_4
    sget v0, Lcom/oculus/horizon/R$id;->password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 227
    new-instance v3, Lcom/oculus/horizon/settings/SettingsFragment$7;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/settings/SettingsFragment$7;-><init>(Lcom/oculus/horizon/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 295
    goto :goto_3
.end method

.method protected shouldShowChromecast()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method
