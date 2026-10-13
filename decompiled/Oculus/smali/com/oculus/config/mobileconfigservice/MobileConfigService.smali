.class public Lcom/oculus/config/mobileconfigservice/MobileConfigService;
.super Landroid/app/Service;
.source "MobileConfigService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Lcom/oculus/aidl/IMobileConfigService$Stub;

.field private mConfigUpdaterLogger:Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Lcom/facebook/inject/ForAppContext;
    .end annotation

    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mCredentials:Lcom/oculus/auth/credentials/Credentials;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mMobileConfigUpdater:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mThreadUtils:Lcom/oculus/util/thread/ThreadUtils;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/config/mobileconfigservice/MobileConfigService;)V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/config/mobileconfigservice/MobileConfigService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/config/mobileconfigservice/MobileConfigService;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/oculus/util/thread/ThreadUtils;->$ul_$xXXcom_oculus_util_thread_ThreadUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/thread/ThreadUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->mThreadUtils:Lcom/oculus/util/thread/ThreadUtils;

    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;->$ul_$xXXcom_oculus_config_mobileconfigservice_MobileConfigUpdater$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->mMobileConfigUpdater:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

    invoke-static {p0}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->$ul_$xXXcom_oculus_config_updater_logging_ConfigUpdaterLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->mConfigUpdaterLogger:Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    invoke-static {p0}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXcom_oculus_auth_credentials_Credentials$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/auth/credentials/Credentials;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->mCredentials:Lcom/oculus/auth/credentials/Credentials;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 61
    new-instance v0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;

    invoke-direct {v0, p0}, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;-><init>(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)V

    iput-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->mBinder:Lcom/oculus/aidl/IMobileConfigService$Stub;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->mConfigUpdaterLogger:Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/util/thread/ThreadUtils;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->mThreadUtils:Lcom/oculus/util/thread/ThreadUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->mMobileConfigUpdater:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/auth/credentials/Credentials;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->mCredentials:Lcom/oculus/auth/credentials/Credentials;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/facebook/secure/trustedapp/TrustedApp;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->mTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;

    return-object v0
.end method

.method private getAllowedAppSignatures(Landroid/content/Context;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/facebook/secure/trustedapp/AppSignatureHash;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 175
    sget-object v1, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->OCULUS_APPS_SIGNATURE_HASH_RELEASE:Lcom/facebook/secure/trustedapp/AppSignatureHash;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 176
    sget-object v1, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->OCULUS_PROD_SIGNATURE_HASH_RELEASE:Lcom/facebook/secure/trustedapp/AppSignatureHash;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 178
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->mBinder:Lcom/oculus/aidl/IMobileConfigService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    invoke-static {p0, p0}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/config/mobileconfigservice/MobileConfigService;)V

    .line 48
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->getAllowedAppSignatures(Landroid/content/Context;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/secure/trustedapp/TrustedAppHelper;->createTrustedApp(Ljava/util/Set;)Lcom/facebook/secure/trustedapp/TrustedApp;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->mTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;

    .line 49
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x3

    return v0
.end method
