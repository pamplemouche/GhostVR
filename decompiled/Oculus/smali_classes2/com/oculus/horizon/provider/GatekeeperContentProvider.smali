.class public Lcom/oculus/horizon/provider/GatekeeperContentProvider;
.super Lcom/oculus/content/OculusPublicContentProvider;
.source "GatekeeperContentProvider.java"


# static fields
.field private static final SYSTEM_UTILITIES_REQUIRED_MIN_VERSIONS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mCallerUtils:Lcom/oculus/horizon/service/CallerUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEnableBadDischargeStats:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_batterystats_bad_sleep"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEnableChromecasting:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_horizon_chromecasting"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEnableFlailLockout:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_enable_flail_lockout"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEnableGuardianOnScreenCapture:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_enable_guardian_on_screen_capture"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEnableLocationService:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_coremobileservices_location"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEnableMultiUser:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_mobile_multi_user_enabled"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEnableVrBugReporter:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_vrbugreporter_enabled"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEnableZramSwap:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_mobile_zram_swap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mHomeShortPressLogging:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_home_shortpress_logging"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsAPOverlaysEnabled:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_abuse_prevention_overlays"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsDTXEnabled:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_enable_p2p_dtx"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsLivestreamingEnabled:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_livestreaming"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsOSUpdaterTestModeEnabled:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_osupdater_enable_test_mode"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsSATranscribeEnabled:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_sa_transcribe_enabled"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsSystemUtilitiesAnytimeUIEnabled:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_vrshell_enable_system_utilities_anytimeui"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsSystemUtilitiesEnabled:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_vrshell_enable_system_utilities"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsSystemUtilitiesExtraCommandsEnabled:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_vrshell_enable_system_utilities_extra_cmds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMobileBreakpad:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_mobile_breakpad"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPackagesCache:Lcom/oculus/common/packagescache/PackagesCache;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mQuestPassthroughPlus:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_quest_passthrough_plus"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/provider/GatekeeperContentProvider;)V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/provider/GatekeeperContentProvider;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/provider/GatekeeperContentProvider;)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-static {p0}, Lcom/oculus/common/packagescache/PackagesCache;->$ul_$xXXcom_oculus_common_packagescache_PackagesCache$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/common/packagescache/PackagesCache;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mPackagesCache:Lcom/oculus/common/packagescache/PackagesCache;

    invoke-static {p0}, Lcom/oculus/horizon/service/CallerUtils;->$ul_$xXXcom_oculus_horizon_service_CallerUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mCallerUtils:Lcom/oculus/horizon/service/CallerUtils;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fabuse$x5Fprevention$x5Foverlays$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsAPOverlaysEnabled:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Flivestreaming$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsLivestreamingEnabled:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fvrshell$x5Fenable$x5Fsystem$x5Futilities$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsSystemUtilitiesEnabled:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fvrshell$x5Fenable$x5Fsystem$x5Futilities$x5Fextra$x5Fcmds$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsSystemUtilitiesExtraCommandsEnabled:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fvrshell$x5Fenable$x5Fsystem$x5Futilities$x5Fanytimeui$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsSystemUtilitiesAnytimeUIEnabled:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fenable$x5Fp2p$x5Fdtx$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsDTXEnabled:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fsa$x5Ftranscribe$x5Fenabled$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsSATranscribeEnabled:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fosupdater$x5Fenable$x5Ftest$x5Fmode$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsOSUpdaterTestModeEnabled:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fmobile$x5Fbreakpad$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mMobileBreakpad:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fbatterystats$x5Fbad$x5Fsleep$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableBadDischargeStats:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fcoremobileservices$x5Flocation$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableLocationService:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fvrbugreporter$x5Fenabled$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableVrBugReporter:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fmobile$x5Fzram$x5Fswap$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableZramSwap:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fmobile$x5Fmulti$x5Fuser$x5Fenabled$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableMultiUser:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Fchromecasting$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableChromecasting:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fenable$x5Fguardian$x5Fon$x5Fscreen$x5Fcapture$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableGuardianOnScreenCapture:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fenable$x5Fflail$x5Flockout$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableFlailLockout:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhome$x5Fshortpress$x5Flogging$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mHomeShortPressLogging:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fquest$x5Fpassthrough$x5Fplus$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mQuestPassthroughPlus:Ljavax/inject/Provider;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/oculus/horizon/provider/GatekeeperContentProvider$1;

    invoke-direct {v0}, Lcom/oculus/horizon/provider/GatekeeperContentProvider$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->SYSTEM_UTILITIES_REQUIRED_MIN_VERSIONS:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/oculus/content/OculusPublicContentProvider;-><init>()V

    return-void
.end method

.method private isSystemUtilitiesRequiredMinVersionsInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    sget-object v0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->SYSTEM_UTILITIES_REQUIRED_MIN_VERSIONS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mPackagesCache:Lcom/oculus/common/packagescache/PackagesCache;

    invoke-virtual {v1, v0}, Lcom/oculus/common/packagescache/PackagesCache;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 129
    sget-object v1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->SYSTEM_UTILITIES_REQUIRED_MIN_VERSIONS:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    if-eqz v5, :cond_1

    if-nez v1, :cond_2

    .line 132
    :cond_1
    sget-object v1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->TAG:Ljava/lang/String;

    const-string v4, "SysUtils package version lookup failed for %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v4, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 142
    :goto_0
    return v0

    .line 136
    :cond_2
    invoke-static {v5, v1}, Lcom/oculus/util/version/VersionUtils;->meetsMinimumVersion(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    sget-object v1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "SysUtils package version fails for %s"

    invoke-static {v1, v3, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v2

    .line 138
    goto :goto_0

    :cond_3
    move v0, v3

    .line 142
    goto :goto_0
.end method


# virtual methods
.method public doDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public doGetType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 384
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doInitialization()V
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/provider/GatekeeperContentProvider;)V

    .line 148
    return-void
.end method

.method public doInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 390
    const/4 v0, 0x0

    return-object v0
.end method

.method public doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/oculus/provider/OculusContent$Gatekeeper;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 158
    :cond_0
    sget-object v1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "Unsupported uri"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_0
    return-object v0

    .line 162
    :cond_1
    iget-object v3, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v3}, Lcom/oculus/horizon/profile/UserProfileHelper;->isUserLoggedIn()Z

    move-result v3

    if-nez v3, :cond_2

    .line 163
    sget-object v1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "User is not signed in"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->getContext()Landroid/content/Context;

    .line 169
    const-string v3, "name"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 376
    sget-object v1, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported GK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :sswitch_0
    const-string v5, "oculus_abuse_prevention_overlays"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v2

    goto :goto_1

    :sswitch_1
    const-string v5, "oculus_livestreaming"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v1

    goto :goto_1

    :sswitch_2
    const-string v5, "oculus_vrshell_enable_system_utilities"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "oculus_vrshell_enable_system_utilities_extra_cmds"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v5, "oculus_vrshell_enable_system_utilities_anytimeui"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string v5, "oculus_enable_p2p_dtx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string v5, "oculus_sa_transcribe_enabled"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_7
    const-string v5, "oculus_osupdater_enable_test_mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_8
    const-string v5, "oculus_mobile_breakpad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_9
    const-string v5, "oculus_batterystats_bad_sleep"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string v5, "oculus_coremobileservices_location"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v5, "oculus_vrbugreporter_enabled"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v5, "oculus_mobile_zram_swap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v5, "oculus_mobile_multi_user_enabled"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v5, "oculus_horizon_chromecasting"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v5, "oculus_enable_guardian_on_screen_capture"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v5, "oculus_enable_flail_lockout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v5, "oculus_home_shortpress_logging"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v5, "oculus_quest_passthrough_plus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v3, 0x12

    goto/16 :goto_1

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsAPOverlaysEnabled:Ljavax/inject/Provider;

    .line 175
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsAPOverlaysEnabled:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 177
    :goto_2
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 179
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_5

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 181
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 175
    goto :goto_2

    :cond_5
    move v1, v2

    .line 179
    goto :goto_3

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsLivestreamingEnabled:Ljavax/inject/Provider;

    .line 186
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsLivestreamingEnabled:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 188
    :goto_4
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 190
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_7

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 192
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 186
    goto :goto_4

    :cond_7
    move v1, v2

    .line 190
    goto :goto_5

    .line 196
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsSystemUtilitiesEnabled:Ljavax/inject/Provider;

    .line 197
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsSystemUtilitiesEnabled:Ljavax/inject/Provider;

    .line 198
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 199
    invoke-direct {p0}, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->isSystemUtilitiesRequiredMinVersionsInstalled()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 201
    :goto_6
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 203
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_9

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 205
    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 199
    goto :goto_6

    :cond_9
    move v1, v2

    .line 203
    goto :goto_7

    .line 209
    :pswitch_3
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsSystemUtilitiesExtraCommandsEnabled:Ljavax/inject/Provider;

    .line 210
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsSystemUtilitiesExtraCommandsEnabled:Ljavax/inject/Provider;

    .line 211
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 213
    :goto_8
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 215
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_b

    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 217
    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 211
    goto :goto_8

    :cond_b
    move v1, v2

    .line 215
    goto :goto_9

    .line 221
    :pswitch_4
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsSystemUtilitiesAnytimeUIEnabled:Ljavax/inject/Provider;

    .line 222
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsSystemUtilitiesAnytimeUIEnabled:Ljavax/inject/Provider;

    .line 223
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    .line 225
    :goto_a
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 227
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_d

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 229
    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 223
    goto :goto_a

    :cond_d
    move v1, v2

    .line 227
    goto :goto_b

    .line 233
    :pswitch_5
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsDTXEnabled:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsDTXEnabled:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    .line 235
    :goto_c
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 237
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_f

    :goto_d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 239
    goto/16 :goto_0

    :cond_e
    move v0, v2

    .line 233
    goto :goto_c

    :cond_f
    move v1, v2

    .line 237
    goto :goto_d

    .line 243
    :pswitch_6
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsSATranscribeEnabled:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsSATranscribeEnabled:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    .line 245
    :goto_e
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 247
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_11

    :goto_f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 249
    goto/16 :goto_0

    :cond_10
    move v0, v2

    .line 243
    goto :goto_e

    :cond_11
    move v1, v2

    .line 247
    goto :goto_f

    .line 253
    :pswitch_7
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsOSUpdaterTestModeEnabled:Ljavax/inject/Provider;

    .line 254
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mIsOSUpdaterTestModeEnabled:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    .line 256
    :goto_10
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 258
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_13

    :goto_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 260
    goto/16 :goto_0

    :cond_12
    move v0, v2

    .line 254
    goto :goto_10

    :cond_13
    move v1, v2

    .line 258
    goto :goto_11

    .line 264
    :pswitch_8
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mMobileBreakpad:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mMobileBreakpad:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    .line 266
    :goto_12
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 268
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_15

    :goto_13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 270
    goto/16 :goto_0

    :cond_14
    move v0, v2

    .line 264
    goto :goto_12

    :cond_15
    move v1, v2

    .line 268
    goto :goto_13

    .line 274
    :pswitch_9
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableBadDischargeStats:Ljavax/inject/Provider;

    .line 275
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableBadDischargeStats:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    .line 277
    :goto_14
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 279
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_17

    :goto_15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 281
    goto/16 :goto_0

    :cond_16
    move v0, v2

    .line 275
    goto :goto_14

    :cond_17
    move v1, v2

    .line 279
    goto :goto_15

    .line 285
    :pswitch_a
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableLocationService:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableLocationService:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    .line 287
    :goto_16
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 289
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_19

    :goto_17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 291
    goto/16 :goto_0

    :cond_18
    move v0, v2

    .line 285
    goto :goto_16

    :cond_19
    move v1, v2

    .line 289
    goto :goto_17

    .line 295
    :pswitch_b
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableVrBugReporter:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableVrBugReporter:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    .line 297
    :goto_18
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 299
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_1b

    :goto_19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 301
    goto/16 :goto_0

    :cond_1a
    move v0, v2

    .line 295
    goto :goto_18

    :cond_1b
    move v1, v2

    .line 299
    goto :goto_19

    .line 305
    :pswitch_c
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableZramSwap:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableZramSwap:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    .line 307
    :goto_1a
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 309
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_1d

    :goto_1b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 311
    goto/16 :goto_0

    :cond_1c
    move v0, v2

    .line 305
    goto :goto_1a

    :cond_1d
    move v1, v2

    .line 309
    goto :goto_1b

    .line 315
    :pswitch_d
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableMultiUser:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableMultiUser:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    .line 317
    :goto_1c
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 319
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_1f

    :goto_1d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 321
    goto/16 :goto_0

    :cond_1e
    move v0, v2

    .line 315
    goto :goto_1c

    :cond_1f
    move v1, v2

    .line 319
    goto :goto_1d

    .line 325
    :pswitch_e
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableChromecasting:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableChromecasting:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v1

    .line 327
    :goto_1e
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 329
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_21

    :goto_1f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 331
    goto/16 :goto_0

    :cond_20
    move v0, v2

    .line 325
    goto :goto_1e

    :cond_21
    move v1, v2

    .line 329
    goto :goto_1f

    .line 335
    :pswitch_f
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableGuardianOnScreenCapture:Ljavax/inject/Provider;

    .line 336
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableGuardianOnScreenCapture:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v1

    .line 338
    :goto_20
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 340
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_23

    :goto_21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 342
    goto/16 :goto_0

    :cond_22
    move v0, v2

    .line 336
    goto :goto_20

    :cond_23
    move v1, v2

    .line 340
    goto :goto_21

    .line 346
    :pswitch_10
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableFlailLockout:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mEnableFlailLockout:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v1

    .line 348
    :goto_22
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 350
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_25

    :goto_23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 352
    goto/16 :goto_0

    :cond_24
    move v0, v2

    .line 346
    goto :goto_22

    :cond_25
    move v1, v2

    .line 350
    goto :goto_23

    .line 356
    :pswitch_11
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mHomeShortPressLogging:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mHomeShortPressLogging:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v1

    .line 358
    :goto_24
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 360
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_27

    :goto_25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 362
    goto/16 :goto_0

    :cond_26
    move v0, v2

    .line 356
    goto :goto_24

    :cond_27
    move v1, v2

    .line 360
    goto :goto_25

    .line 366
    :pswitch_12
    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mQuestPassthroughPlus:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/oculus/horizon/provider/GatekeeperContentProvider;->mQuestPassthroughPlus:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    .line 368
    :goto_26
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gk_enabled"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 370
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_29

    :goto_27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 372
    goto/16 :goto_0

    :cond_28
    move v0, v2

    .line 366
    goto :goto_26

    :cond_29
    move v1, v2

    .line 370
    goto :goto_27

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a36d72f -> :sswitch_11
        -0x73471599 -> :sswitch_c
        -0x618031ef -> :sswitch_5
        -0x4a86f195 -> :sswitch_f
        -0x4445fbbd -> :sswitch_4
        -0x3399430b -> :sswitch_2
        -0x2e3147ee -> :sswitch_6
        -0x2c599980 -> :sswitch_1
        -0x2846cd2e -> :sswitch_3
        -0x1d4ad391 -> :sswitch_e
        -0x1cd4c461 -> :sswitch_a
        -0x173ee71d -> :sswitch_0
        -0x124040c4 -> :sswitch_10
        -0xd78af28 -> :sswitch_12
        -0x7e2253c -> :sswitch_7
        0x1723d15a -> :sswitch_d
        0x344ae7a5 -> :sswitch_b
        0x3b81b686 -> :sswitch_9
        0x7f29f53b -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public doUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    return v0
.end method
