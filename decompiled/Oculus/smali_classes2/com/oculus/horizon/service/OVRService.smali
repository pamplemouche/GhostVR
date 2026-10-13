.class public Lcom/oculus/horizon/service/OVRService;
.super Lcom/oculus/security/basecomponent/OculusPublicService;
.source "OVRService.java"

# interfaces
.implements Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CatchGeneralException"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/service/OVRService$PermissionDeniedForJson;,
        Lcom/oculus/horizon/service/OVRService$ErrorForJson;,
        Lcom/oculus/horizon/service/OVRService$ResponseForJson;,
        Lcom/oculus/horizon/service/OVRService$RequestForJson;,
        Lcom/oculus/horizon/service/OVRService$BaseForJson;,
        Lcom/oculus/horizon/service/OVRService$AmbiguousCallingPackageException;,
        Lcom/oculus/horizon/service/OVRService$CallerNotSignedException;,
        Lcom/oculus/horizon/service/OVRService$UserNotLoggedInException;
    }
.end annotation


# static fields
.field private static final BLACKLISTED_LOGGING_KEYS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_UTILITIES_INVITE_FRIENDS_REQUIRED_MIN_VERSIONS:Ljava/util/HashMap;
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

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sGson:Lcom/google/gson/Gson;

.field private static final sSecureContextHelper:Lcom/facebook/secure/context/SecureContextHelper;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private final mBinder:Lcom/oculus/aidl/OVRServiceInterface$Stub;

.field private final mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

.field private final mCachedPackageMicPermission:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/core/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCallerUtils:Lcom/oculus/horizon/service/CallerUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCredentialsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/oculus/auth/credentials/Credentials;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInstallerUtil:Lcom/oculus/installer/InstallerUtil;
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

.field private mLogger:Lcom/oculus/horizon/service/ServiceLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusApiEndpoint:Ljava/lang/String;
    .annotation runtime Lcom/oculus/http/core/annotations/OculusApiEndpoint;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPackagesCache:Lcom/oculus/common/packagescache/PackagesCache;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPlatformContext:Lcom/oculus/horizon/platform/PlatformContext;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mProcessTokenTracker:Lcom/oculus/processtokentracker/ProcessTokenTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mServiceFutures:Lcom/oculus/util/service/ServiceFutures;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/service/OVRService;)V
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/service/OVRService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/service/OVRService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/service/OVRService;)V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/service/OVRService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/http/core/endpoint/EndpointModule;->$ul_$xXXjava_lang_String$xXXcom_oculus_http_core_annotations_OculusApiEndpoint$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/OVRService;->mOculusApiEndpoint:Ljava/lang/String;

    invoke-static {p0}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->$ul_$xXXcom_oculus_horizon_service_ExternalPlatformLocal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service/ExternalPlatformLocal;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/OVRService;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    invoke-static {p0}, Lcom/oculus/common/packagescache/PackagesCache;->$ul_$xXXcom_oculus_common_packagescache_PackagesCache$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/common/packagescache/PackagesCache;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/OVRService;->mPackagesCache:Lcom/oculus/common/packagescache/PackagesCache;

    invoke-static {p0}, Lcom/oculus/horizon/platform/PlatformContext;->$ul_$xXXcom_oculus_horizon_platform_PlatformContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/platform/PlatformContext;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/OVRService;->mPlatformContext:Lcom/oculus/horizon/platform/PlatformContext;

    invoke-static {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginModule;->$ul_$xXXcom_oculus_horizon_platformplugin_PlatformPluginManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/OVRService;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-static {p0}, Lcom/oculus/horizon/service/ServiceLogger;->$ul_$xXXcom_oculus_horizon_service_ServiceLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service/ServiceLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/OVRService;->mLogger:Lcom/oculus/horizon/service/ServiceLogger;

    invoke-static {p0}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_oculus_auth_credentials_Credentials$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/OVRService;->mCredentialsProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/installer/InstallerUtil;->$ul_$xXXcom_oculus_installer_InstallerUtil$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/installer/InstallerUtil;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/OVRService;->mInstallerUtil:Lcom/oculus/installer/InstallerUtil;

    invoke-static {p0}, Lcom/oculus/util/service/ServiceFutures;->$ul_$xXXcom_oculus_util_service_ServiceFutures$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/OVRService;->mServiceFutures:Lcom/oculus/util/service/ServiceFutures;

    invoke-static {p0}, Lcom/oculus/horizon/service/CallerUtils;->$ul_$xXXcom_oculus_horizon_service_CallerUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/OVRService;->mCallerUtils:Lcom/oculus/horizon/service/CallerUtils;

    invoke-static {p0}, Lcom/oculus/processtokentracker/ProcessTokenTracker;->$ul_$xXXcom_oculus_processtokentracker_ProcessTokenTracker$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/processtokentracker/ProcessTokenTracker;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/OVRService;->mProcessTokenTracker:Lcom/oculus/processtokentracker/ProcessTokenTracker;

    invoke-static {p0}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/OVRService;->mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    invoke-static {p0}, Lcom/oculus/horizon/platform/PresenceManager;->$ul_$xXXcom_oculus_horizon_platform_PresenceManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/platform/PresenceManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/OVRService;->mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;

    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fvrshell$x5Fenable$x5Fsystem$x5Futilities$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/OVRService;->mIsSystemUtilitiesEnabled:Ljavax/inject/Provider;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/oculus/horizon/service/OVRService;

    sput-object v0, Lcom/oculus/horizon/service/OVRService;->TAG:Ljava/lang/Class;

    .line 88
    new-instance v0, Lcom/oculus/horizon/service/OVRService$1;

    invoke-direct {v0}, Lcom/oculus/horizon/service/OVRService$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/service/OVRService;->BLACKLISTED_LOGGING_KEYS:Ljava/util/HashSet;

    .line 96
    new-instance v0, Lcom/oculus/horizon/service/OVRService$2;

    invoke-direct {v0}, Lcom/oculus/horizon/service/OVRService$2;-><init>()V

    sput-object v0, Lcom/oculus/horizon/service/OVRService;->SYSTEM_UTILITIES_INVITE_FRIENDS_REQUIRED_MIN_VERSIONS:Ljava/util/HashMap;

    .line 152
    invoke-static {}, Lcom/facebook/secure/context/SecureContextHelper;->get()Lcom/facebook/secure/context/SecureContextHelper;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/service/OVRService;->sSecureContextHelper:Lcom/facebook/secure/context/SecureContextHelper;

    .line 153
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/oculus/horizon/service/OVRService;->sGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/oculus/security/basecomponent/OculusPublicService;-><init>()V

    .line 214
    new-instance v0, Lcom/oculus/horizon/service/OVRService$3;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.samsung.intent.action.HMT_DISCONNECTED"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/service/OVRService$3;-><init>(Lcom/oculus/horizon/service/OVRService;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    .line 228
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mCachedPackageMicPermission:Ljava/util/concurrent/ConcurrentHashMap;

    .line 257
    new-instance v0, Lcom/oculus/horizon/service/OVRService$4;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/service/OVRService$4;-><init>(Lcom/oculus/horizon/service/OVRService;)V

    iput-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mBinder:Lcom/oculus/aidl/OVRServiceInterface$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/service/OVRService;)Lcom/facebook/inject/InjectionContext;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/installer/InstallerUtil;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mInstallerUtil:Lcom/oculus/installer/InstallerUtil;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/facebook/secure/context/SecureContextHelper;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/oculus/horizon/service/OVRService;->sSecureContextHelper:Lcom/facebook/secure/context/SecureContextHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mServiceFutures:Lcom/oculus/util/service/ServiceFutures;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/ServiceLogger;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mLogger:Lcom/oculus/horizon/service/ServiceLogger;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platform/PlatformContext;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mPlatformContext:Lcom/oculus/horizon/platform/PlatformContext;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/oculus/horizon/service/OVRService;->BLACKLISTED_LOGGING_KEYS:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/os/Bundle;Ljava/util/Set;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/oculus/horizon/service/OVRService;->createArgsMap(Landroid/os/Bundle;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/oculus/horizon/service/OVRService;->TAG:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mCallerUtils:Lcom/oculus/horizon/service/CallerUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/service/OVRService;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mIsSystemUtilitiesEnabled:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/service/OVRService;)Z
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/oculus/horizon/service/OVRService;->isSystemUtilitiesInviteFriendsRequiredMinVersionsInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/ExternalPlatformLocal;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/horizon/service/OVRService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mCachedPackageMicPermission:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/service/OVRService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/service/OVRService;->logPermissionDenied(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oculus/horizon/service/OVRService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mOculusApiEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method private static createArgsMap(Landroid/os/Bundle;Ljava/util/Set;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1403
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1405
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1406
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1407
    const/4 v1, 0x0

    .line 1409
    if-eqz v4, :cond_0

    .line 1410
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1413
    :cond_0
    :goto_1
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1410
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1416
    :cond_2
    return-object v2
.end method

.method private getCallingPackageForLogging(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1320
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mCallerUtils:Lcom/oculus/horizon/service/CallerUtils;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/oculus/horizon/service/OVRService$AmbiguousCallingPackageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1325
    :goto_0
    return-object v0

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    sget-object v1, Lcom/oculus/horizon/service/OVRService;->TAG:Ljava/lang/Class;

    const-string v2, "Unable to determine package for calling identity."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1325
    const-string v0, ""

    goto :goto_0
.end method

.method private isSystemUtilitiesInviteFriendsRequiredMinVersionsInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    sget-object v0, Lcom/oculus/horizon/service/OVRService;->SYSTEM_UTILITIES_INVITE_FRIENDS_REQUIRED_MIN_VERSIONS:Ljava/util/HashMap;

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

    .line 108
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService;->mPackagesCache:Lcom/oculus/common/packagescache/PackagesCache;

    invoke-virtual {v1, v0}, Lcom/oculus/common/packagescache/PackagesCache;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 109
    sget-object v1, Lcom/oculus/horizon/service/OVRService;->SYSTEM_UTILITIES_INVITE_FRIENDS_REQUIRED_MIN_VERSIONS:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    if-eqz v5, :cond_1

    if-nez v1, :cond_2

    .line 112
    :cond_1
    sget-object v1, Lcom/oculus/horizon/service/OVRService;->TAG:Ljava/lang/Class;

    const-string v4, "SysUtils package version lookup failed for %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v4, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 122
    :goto_0
    return v0

    .line 116
    :cond_2
    invoke-static {v5, v1}, Lcom/oculus/util/version/VersionUtils;->meetsMinimumVersion(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    sget-object v1, Lcom/oculus/horizon/service/OVRService;->TAG:Ljava/lang/Class;

    const-string v3, "SysUtils package version fails for %s"

    invoke-static {v1, v3, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v2

    .line 118
    goto :goto_0

    :cond_3
    move v0, v3

    .line 122
    goto :goto_0
.end method

.method private logPermissionDenied(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1329
    sget-object v0, Lcom/oculus/horizon/service/OVRService;->TAG:Ljava/lang/Class;

    const-string v1, "Calling package does not have mic permissions: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1330
    new-instance v1, Lcom/oculus/horizon/service/OVRService$PermissionDeniedForJson;

    const-class v0, Lcom/oculus/horizon/service/OVRService;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/oculus/horizon/service/OVRService$PermissionDeniedForJson;-><init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 1332
    const-string v0, "app_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1333
    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService;->mLogger:Lcom/oculus/horizon/service/ServiceLogger;

    if-nez v0, :cond_0

    const-string v0, "0"

    :cond_0
    sget-object v3, Lcom/oculus/horizon/service/OVRService;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, p2, v1}, Lcom/oculus/horizon/service/ServiceLogger;->reportPlatformSDKLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    return-void
.end method

.method private throwIfCallerNotSigned()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/horizon/service/OVRService$CallerNotSignedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1280
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/horizon/service/OVRService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/service/SignatureChecker;->throwIfCallerNotSigned(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    return-void

    .line 1281
    :catch_0
    move-exception v0

    .line 1282
    new-instance v1, Lcom/oculus/horizon/service/OVRService$CallerNotSignedException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/oculus/horizon/service/OVRService$CallerNotSignedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private throwIfNotLoggedIn()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/horizon/service/OVRService$UserNotLoggedInException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mCredentialsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1266
    new-instance v0, Lcom/oculus/horizon/service/OVRService$UserNotLoggedInException;

    const-string v1, "Oculus user login is required."

    invoke-direct {v0, v1}, Lcom/oculus/horizon/service/OVRService$UserNotLoggedInException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1268
    :cond_0
    return-void
.end method


# virtual methods
.method public doBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/oculus/horizon/service/SignatureChecker;->clear()V

    .line 254
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mBinder:Lcom/oculus/aidl/OVRServiceInterface$Stub;

    return-object v0
.end method

.method public doCreate()V
    .locals 3

    .prologue
    .line 233
    invoke-super {p0}, Lcom/oculus/security/basecomponent/OculusPublicService;->doCreate()V

    .line 75
    invoke-static {p0, p0}, Lcom/oculus/horizon/service/OVRService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/service/OVRService;)V

    .line 236
    invoke-virtual {p0}, Lcom/oculus/horizon/service/OVRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    .line 237
    invoke-virtual {v2}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mProcessTokenTracker:Lcom/oculus/processtokentracker/ProcessTokenTracker;

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService;->mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    invoke-virtual {v0, v1}, Lcom/oculus/processtokentracker/ProcessTokenTracker;->addProcessListener(Lcom/oculus/processtokentracker/ProcessTokenTracker$ProcessListener;)V

    .line 241
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mProcessTokenTracker:Lcom/oculus/processtokentracker/ProcessTokenTracker;

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService;->mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;

    invoke-virtual {v0, v1}, Lcom/oculus/processtokentracker/ProcessTokenTracker;->addProcessListener(Lcom/oculus/processtokentracker/ProcessTokenTracker$ProcessListener;)V

    .line 242
    return-void
.end method

.method public doDestroy()V
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/oculus/horizon/service/OVRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService;->mProcessTokenTracker:Lcom/oculus/processtokentracker/ProcessTokenTracker;

    invoke-virtual {v0}, Lcom/oculus/processtokentracker/ProcessTokenTracker;->clear()V

    .line 248
    return-void
.end method

.method public logErrorBundle(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)V
    .locals 5

    .prologue
    .line 1311
    const-string v0, "app_id"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1312
    invoke-direct {p0, p1}, Lcom/oculus/horizon/service/OVRService;->getCallingPackageForLogging(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 1314
    new-instance v2, Lcom/oculus/horizon/service/OVRService$ErrorForJson;

    invoke-direct {v2, p1, p2, p3}, Lcom/oculus/horizon/service/OVRService$ErrorForJson;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 1315
    iget-object v3, p0, Lcom/oculus/horizon/service/OVRService;->mLogger:Lcom/oculus/horizon/service/ServiceLogger;

    sget-object v4, Lcom/oculus/horizon/service/OVRService;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v1, v2}, Lcom/oculus/horizon/service/ServiceLogger;->reportPlatformSDKLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    return-void
.end method

.method public logRequestBundle(Landroid/os/Bundle;Ljava/lang/Class;)V
    .locals 5

    .prologue
    .line 1287
    const-string v0, "app_id"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1288
    invoke-direct {p0, p1}, Lcom/oculus/horizon/service/OVRService;->getCallingPackageForLogging(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 1290
    new-instance v2, Lcom/oculus/horizon/service/OVRService$RequestForJson;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/oculus/horizon/service/OVRService$RequestForJson;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Lcom/oculus/horizon/service/OVRService$1;)V

    .line 1291
    iget-object v3, p0, Lcom/oculus/horizon/service/OVRService;->mLogger:Lcom/oculus/horizon/service/ServiceLogger;

    sget-object v4, Lcom/oculus/horizon/service/OVRService;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v1, v2}, Lcom/oculus/horizon/service/ServiceLogger;->reportPlatformSDKLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    return-void
.end method

.method public logResponseBundle(Landroid/os/Bundle;Landroid/os/Bundle;JLjava/lang/Class;)V
    .locals 9

    .prologue
    .line 1296
    const-string v0, "app_id"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1297
    invoke-direct {p0, p1}, Lcom/oculus/horizon/service/OVRService;->getCallingPackageForLogging(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v8

    .line 1299
    new-instance v1, Lcom/oculus/horizon/service/OVRService$ResponseForJson;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/oculus/horizon/service/OVRService$ResponseForJson;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;JLjava/lang/Class;Lcom/oculus/horizon/service/OVRService$1;)V

    .line 1300
    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService;->mLogger:Lcom/oculus/horizon/service/ServiceLogger;

    sget-object v3, Lcom/oculus/horizon/service/OVRService;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v8, v1}, Lcom/oculus/horizon/service/ServiceLogger;->reportPlatformSDKLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    return-void
.end method

.method public maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1233
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService;->mCallerUtils:Lcom/oculus/horizon/service/CallerUtils;

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/oculus/horizon/service/OVRService$AmbiguousCallingPackageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService;->mCredentialsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1240
    const-string v1, "user not logged in"

    sget-object v2, Lcom/oculus/platform/util/OVRError;->AUTHENTICATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 1243
    :cond_0
    :goto_0
    return-object v0

    .line 1234
    :catch_0
    move-exception v0

    .line 1235
    const-string v1, "unable to determine calling package"

    sget-object v2, Lcom/oculus/platform/util/OVRError;->PERMISSIONS_FAILURE:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public showPartyChatResume()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public showPartyChatSuspend()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public throwIfCallNotAllowed()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/horizon/service/OVRService$UserNotLoggedInException;,
            Lcom/oculus/horizon/service/OVRService$CallerNotSignedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1254
    invoke-direct {p0}, Lcom/oculus/horizon/service/OVRService;->throwIfNotLoggedIn()V

    .line 1255
    invoke-direct {p0}, Lcom/oculus/horizon/service/OVRService;->throwIfCallerNotSigned()V

    .line 1256
    return-void
.end method
