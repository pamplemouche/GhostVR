.class public Lcom/oculus/config/service/GkService;
.super Landroid/app/Service;
.source "GkService.java"


# static fields
.field private static final MAX_TIMEOUT_MS:J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Lcom/oculus/aidl/IGkService$Stub;

.field private mCallerVerifier:Lcom/oculus/config/service/GkServiceCallerVerifier;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mConfigController:Lcom/oculus/config/ConfigController;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mConfigUpdater:Lcom/oculus/config/updater/ConfigUpdater;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mDynamicGatekeeperRegistry:Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mThreadUtils:Lcom/oculus/util/thread/ThreadUtils;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/config/service/GkService;)V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/config/service/GkService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/config/service/GkService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/config/service/GkService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/config/service/GkService;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oculus/util/thread/ThreadUtils;->$ul_$xXXcom_oculus_util_thread_ThreadUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/thread/ThreadUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/config/service/GkService;->mThreadUtils:Lcom/oculus/util/thread/ThreadUtils;

    invoke-static {p0}, Lcom/oculus/config/updater/ConfigUpdater;->$ul_$xXXcom_oculus_config_updater_ConfigUpdater$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/updater/ConfigUpdater;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/config/service/GkService;->mConfigUpdater:Lcom/oculus/config/updater/ConfigUpdater;

    invoke-static {p0}, Lcom/oculus/config/ConfigController;->$ul_$xXXcom_oculus_config_ConfigController$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/ConfigController;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/config/service/GkService;->mConfigController:Lcom/oculus/config/ConfigController;

    invoke-static {p0}, Lcom/oculus/config/ConfigModule;->$ul_$xXXcom_oculus_config_gatekeeper_DynamicGatekeeperRegistry$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/config/service/GkService;->mDynamicGatekeeperRegistry:Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;

    invoke-static {p0}, Lcom/oculus/config/service/GkServiceCallerVerifier;->$ul_$xXXcom_oculus_config_service_GkServiceCallerVerifier$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/service/GkServiceCallerVerifier;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/config/service/GkService;->mCallerVerifier:Lcom/oculus/config/service/GkServiceCallerVerifier;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    const-class v0, Lcom/oculus/config/service/GkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/config/service/GkService;->TAG:Ljava/lang/String;

    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/oculus/config/service/GkService;->MAX_TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    new-instance v0, Lcom/oculus/config/service/GkService$1;

    invoke-direct {v0, p0}, Lcom/oculus/config/service/GkService$1;-><init>(Lcom/oculus/config/service/GkService;)V

    iput-object v0, p0, Lcom/oculus/config/service/GkService;->mBinder:Lcom/oculus/aidl/IGkService$Stub;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/service/GkServiceCallerVerifier;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/config/service/GkService;->mCallerVerifier:Lcom/oculus/config/service/GkServiceCallerVerifier;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/config/service/GkService;->mDynamicGatekeeperRegistry:Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/updater/ConfigUpdater;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/config/service/GkService;->mConfigUpdater:Lcom/oculus/config/updater/ConfigUpdater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/ConfigController;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/config/service/GkService;->mConfigController:Lcom/oculus/config/ConfigController;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/oculus/config/service/GkService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/config/service/GkService;)Lcom/oculus/util/thread/ThreadUtils;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/config/service/GkService;->mThreadUtils:Lcom/oculus/util/thread/ThreadUtils;

    return-object v0
.end method

.method static synthetic access$600()J
    .locals 2

    .prologue
    .line 21
    sget-wide v0, Lcom/oculus/config/service/GkService;->MAX_TIMEOUT_MS:J

    return-wide v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oculus/config/service/GkService;->mBinder:Lcom/oculus/aidl/IGkService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 21
    invoke-static {p0, p0}, Lcom/oculus/config/service/GkService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/config/service/GkService;)V

    .line 38
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x2

    return v0
.end method
