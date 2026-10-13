.class public Lcom/oculus/horizon/service/SDKLoggingService;
.super Lcom/oculus/security/basecomponent/OculusPublicService;
.source "SDKLoggingService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Lcom/oculus/logging/sdk_logging/SDKLoggingInterface$Stub;

.field private mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLogger:Lcom/oculus/horizon/service/ServiceLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/service/SDKLoggingService;)V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/service/SDKLoggingService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/service/SDKLoggingService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/service/SDKLoggingService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/service/SDKLoggingService;)V
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->$ul_$xXXcom_oculus_horizon_service_ExternalPlatformLocal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service/ExternalPlatformLocal;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/SDKLoggingService;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    invoke-static {p0}, Lcom/oculus/horizon/platform/PresenceManager;->$ul_$xXXcom_oculus_horizon_platform_PresenceManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/platform/PresenceManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/SDKLoggingService;->mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;

    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibrary$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/SDKLoggingService;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    invoke-static {p0}, Lcom/oculus/horizon/service/ServiceLogger;->$ul_$xXXcom_oculus_horizon_service_ServiceLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service/ServiceLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/SDKLoggingService;->mLogger:Lcom/oculus/horizon/service/ServiceLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/oculus/horizon/service/SDKLoggingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/service/SDKLoggingService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oculus/security/basecomponent/OculusPublicService;-><init>()V

    .line 45
    new-instance v0, Lcom/oculus/horizon/service/SDKLoggingService$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/service/SDKLoggingService$1;-><init>(Lcom/oculus/horizon/service/SDKLoggingService;)V

    iput-object v0, p0, Lcom/oculus/horizon/service/SDKLoggingService;->mBinder:Lcom/oculus/logging/sdk_logging/SDKLoggingInterface$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/service/SDKLoggingService;)Lcom/oculus/horizon/service/ExternalPlatformLocal;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/service/SDKLoggingService;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/service/SDKLoggingService;)Lcom/oculus/libraryapi/OVRLibrary;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/service/SDKLoggingService;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/oculus/horizon/service/SDKLoggingService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/service/SDKLoggingService;)Lcom/oculus/horizon/service/ServiceLogger;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/service/SDKLoggingService;->mLogger:Lcom/oculus/horizon/service/ServiceLogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/service/SDKLoggingService;)Lcom/oculus/horizon/platform/PresenceManager;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/service/SDKLoggingService;->mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;

    return-object v0
.end method


# virtual methods
.method public doBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/service/SDKLoggingService;->mBinder:Lcom/oculus/logging/sdk_logging/SDKLoggingInterface$Stub;

    return-object v0
.end method

.method public doCreate()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lcom/oculus/security/basecomponent/OculusPublicService;->doCreate()V

    .line 25
    invoke-static {p0, p0}, Lcom/oculus/horizon/service/SDKLoggingService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/service/SDKLoggingService;)V

    .line 38
    return-void
.end method
