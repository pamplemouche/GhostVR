.class Lcom/oculus/vrapi/VrRuntimeClient;
.super Ljava/lang/Object;
.source "VrRuntimeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;,
        Lcom/oculus/vrapi/VrRuntimeClient$LinkDeathHandler;,
        Lcom/oculus/vrapi/VrRuntimeClient$GuardianClientHandler;
    }
.end annotation


# static fields
.field public static final INTENT_KEY_DATA:Ljava/lang/String; = "intent_data"

.field public static final INTENT_KEY_FROM_PKG:Ljava/lang/String; = "intent_pkg"

.field private static final MODE_RETURN_3DOF_PLATFORM:I = 0x3

.field private static final MODE_RETURN_ALLOW_6DOF:I = 0x1

.field private static final MODE_RETURN_REQUIRES_3DOF:I = 0x0

.field private static final MODE_RETURN_REQUIRES_6DOF:I = 0x2

.field private static final PLATFORM_TYPE_3DOF:Ljava/lang/String; = "ANDROID"

.field private static final TAG:Ljava/lang/String; = "VrRuntimeClient"

.field private static final TRACKING_MODE_ALLOW_6DOF:Ljava/lang/String; = "ALLOW_6DOF"

.field private static final TRACKING_MODE_REQUIRES_3DOF:Ljava/lang/String; = "REQUIRE_3DOF"

.field private static final TRACKING_MODE_REQUIRES_6DOF:Ljava/lang/String; = "REQUIRE_6DOF"

.field private static final TRACKING_MODE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static cachedContext:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static clientToken:Landroid/os/IBinder; = null

.field private static guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient; = null

.field private static guardianClientHandler:Lcom/oculus/vrapi/VrRuntimeClient$GuardianClientHandler; = null

.field private static handler:Landroid/os/Handler; = null

.field private static handlerThread:Landroid/os/HandlerThread; = null

.field private static isOverlayClient:Z = false

.field private static linkDeathHandler:Lcom/oculus/vrapi/VrRuntimeClient$LinkDeathHandler;

.field private static serviceConnection:Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;

.field private static vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

.field private static vrRuntimeService:Lcom/oculus/vrruntimeservice/IVrRuntimeService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lcom/oculus/vrapi/VrRuntimeClient$LinkDeathHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oculus/vrapi/VrRuntimeClient$LinkDeathHandler;-><init>(Lcom/oculus/vrapi/VrRuntimeClient$1;)V

    sput-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->linkDeathHandler:Lcom/oculus/vrapi/VrRuntimeClient$LinkDeathHandler;

    .line 76
    sput-object v1, Lcom/oculus/vrapi/VrRuntimeClient;->handlerThread:Landroid/os/HandlerThread;

    .line 77
    sput-object v1, Lcom/oculus/vrapi/VrRuntimeClient;->handler:Landroid/os/Handler;

    .line 79
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->clientToken:Landroid/os/IBinder;

    .line 80
    sput-object v1, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CreateServiceIntent()Landroid/content/Intent;
    .locals 4

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.systemdriver"

    const-string v3, "com.oculus.vrruntimeservice.VrRuntimeService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private static EnsureRuntimeService()Z
    .locals 9

    .line 363
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeService:Lcom/oculus/vrruntimeservice/IVrRuntimeService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 368
    :cond_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->serviceConnection:Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "VrRuntimeClient"

    const-string v1, "VrRuntimeClient: serviceConnection is valid but vrRuntimeService is not!"

    .line 370
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string v0, "VrRuntimeClient"

    const-string v3, "VrRuntimeClient: creating new service"

    .line 374
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "VrRuntimeClient"

    const-string v1, "VrRuntimeClient: No context."

    .line 380
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 384
    :cond_2
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 386
    new-instance v4, Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;

    invoke-direct {v4, v3}, Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    sput-object v4, Lcom/oculus/vrapi/VrRuntimeClient;->serviceConnection:Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;

    .line 388
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->CreateServiceIntent()Landroid/content/Intent;

    move-result-object v4

    .line 392
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "VrRuntimeClient"

    .line 396
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VrRuntimeClient:EnsureRuntimeService: startService exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v5, 0x0

    .line 401
    :try_start_1
    sget-object v6, Lcom/oculus/vrapi/VrRuntimeClient;->serviceConnection:Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;

    sget-object v7, Lcom/oculus/vrapi/VrRuntimeClient;->handler:Landroid/os/Handler;

    invoke-static {v0, v4, v6, v2, v7}, Lcom/oculus/vrapi/BindServiceWrapper;->bindServiceWithHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "VrRuntimeClient"

    const-string v6, "VrRuntimeClient: Waiting on connection..."

    .line 404
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x5

    .line 405
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    const-string v4, "VrRuntimeClient"

    .line 406
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VrRuntimeClient: connectionIsReady: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v3, "VrRuntimeClient"

    const-string v4, "VrRuntimeClient: bindServiceWithHandler failed."

    .line 410
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sput-object v5, Lcom/oculus/vrapi/VrRuntimeClient;->serviceConnection:Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;

    .line 412
    sput-object v5, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeService:Lcom/oculus/vrruntimeservice/IVrRuntimeService;

    .line 413
    sput-object v5, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    .line 416
    :goto_1
    sget-object v3, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v3}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->ensureGuardianConnection()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 418
    new-instance v3, Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-direct {v3}, Lcom/oculus/vrguardianservice/VrGuardianClient;-><init>()V

    sput-object v3, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    .line 419
    new-instance v3, Lcom/oculus/vrapi/VrRuntimeClient$GuardianClientHandler;

    invoke-direct {v3, v5}, Lcom/oculus/vrapi/VrRuntimeClient$GuardianClientHandler;-><init>(Lcom/oculus/vrapi/VrRuntimeClient$1;)V

    sput-object v3, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClientHandler:Lcom/oculus/vrapi/VrRuntimeClient$GuardianClientHandler;

    .line 421
    sget-object v3, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    sget-object v4, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClientHandler:Lcom/oculus/vrapi/VrRuntimeClient$GuardianClientHandler;

    invoke-virtual {v3, v0, v4}, Lcom/oculus/vrguardianservice/VrGuardianClient;->initialize(Landroid/content/Context;Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianClientHandler;)V

    .line 422
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-virtual {v0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->ensureConnection()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v3, "VrRuntimeClient"

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VrRuntimeClient: EnsureRuntimeService. bindServiceWithHandler exception:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sput-object v5, Lcom/oculus/vrapi/VrRuntimeClient;->serviceConnection:Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;

    .line 429
    sput-object v5, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeService:Lcom/oculus/vrruntimeservice/IVrRuntimeService;

    .line 430
    sput-object v5, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    .line 433
    :cond_4
    :goto_2
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeService:Lcom/oculus/vrruntimeservice/IVrRuntimeService;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_5

    const-string v0, "VrRuntimeClient"

    const-string v2, "VrRuntimeClient: context.bindService SUCCESS"

    .line 435
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const-string v0, "VrRuntimeClient"

    const-string v1, "VrRuntimeClient: context.bindService FAILURE."

    .line 440
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static synthetic access$100(I)V
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/oculus/vrapi/VrRuntimeClient;->nativeGuardianServiceConnected(I)V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .line 48
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->doDisconnect()V

    return-void
.end method

.method static synthetic access$300()Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;
    .locals 1

    .line 48
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->serviceConnection:Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;

    return-object v0
.end method

.method static synthetic access$400()Lcom/oculus/vrruntimeservice/IVrRuntimeService;
    .locals 1

    .line 48
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeService:Lcom/oculus/vrruntimeservice/IVrRuntimeService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oculus/vrruntimeservice/IVrRuntimeService;)Lcom/oculus/vrruntimeservice/IVrRuntimeService;
    .locals 0

    .line 48
    sput-object p0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeService:Lcom/oculus/vrruntimeservice/IVrRuntimeService;

    return-object p0
.end method

.method static synthetic access$500()Lcom/oculus/vrapi/VrRuntimeClient$LinkDeathHandler;
    .locals 1

    .line 48
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->linkDeathHandler:Lcom/oculus/vrapi/VrRuntimeClient$LinkDeathHandler;

    return-object v0
.end method

.method static synthetic access$600()Lcom/oculus/vrruntimeservice/IRuntimeClient;
    .locals 1

    .line 48
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    return-object v0
.end method

.method static synthetic access$602(Lcom/oculus/vrruntimeservice/IRuntimeClient;)Lcom/oculus/vrruntimeservice/IRuntimeClient;
    .locals 0

    .line 48
    sput-object p0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    return-object p0
.end method

.method static synthetic access$700()Landroid/os/IBinder;
    .locals 1

    .line 48
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->clientToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 48
    sget-boolean v0, Lcom/oculus/vrapi/VrRuntimeClient;->isOverlayClient:Z

    return v0
.end method

.method static synthetic access$900(IIIII)V
    .locals 0

    .line 48
    invoke-static {p0, p1, p2, p3, p4}, Lcom/oculus/vrapi/VrRuntimeClient;->nativeRuntimeServiceConnected(IIIII)V

    return-void
.end method

.method public static connectToService()Z
    .locals 2

    const-string v0, "VrRuntimeClient"

    const-string v1, "connectToService"

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    return v0
.end method

.method public static createAndroidSurfaceSwapChain(ILcom/oculus/vrruntimeservice/SwapChainCreateInfo;)Lcom/oculus/vrruntimeservice/SwapChainImportInfo;
    .locals 3

    .line 747
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "VrRuntimeClient"

    const-string p1, "VrRuntimeClient: createAndroidSurfaceSwapChain: EnsureRuntimeService failed"

    .line 749
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 755
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_1

    .line 757
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0, p0, p1}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->createAndroidSurfaceSwapChain(ILcom/oculus/vrruntimeservice/SwapChainCreateInfo;)Lcom/oculus/vrruntimeservice/SwapChainImportInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "VrRuntimeClient"

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrRuntimeClient: createAndroidSurfaceSwapChain: Exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public static createTextureSwapChain(ILcom/oculus/vrruntimeservice/SwapChainCreateInfo;)Lcom/oculus/vrruntimeservice/SwapChainImportInfo;
    .locals 3

    .line 723
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "VrRuntimeClient"

    const-string p1, "VrRuntimeClient: createTextureSwapChain: EnsureRuntimeService failed"

    .line 725
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 731
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_1

    .line 733
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0, p0, p1}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->createTextureSwapChain(ILcom/oculus/vrruntimeservice/SwapChainCreateInfo;)Lcom/oculus/vrruntimeservice/SwapChainImportInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "VrRuntimeClient"

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrRuntimeClient: createTextureSwapChain: Exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public static destroyTextureSwapChain(IZ)V
    .locals 2

    .line 792
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "VrRuntimeClient"

    const-string p1, "VrRuntimeClient: destroyTextureSwapChain: EnsureRuntimeService failed"

    .line 794
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 800
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_1

    .line 802
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0, p0, p1}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->destroyTextureSwapChain(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VrRuntimeClient"

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VrRuntimeClient: destroyTextureSwapChain: Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static doDisconnect()V
    .locals 6

    .line 448
    const-class v0, Lcom/oculus/vrapi/VrRuntimeClient;

    monitor-enter v0

    :try_start_0
    const-string v1, "VrRuntimeClient"

    const-string v2, "VrRuntimeClient: Performing disconnect"

    .line 450
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    sget-object v1, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeService:Lcom/oculus/vrruntimeservice/IVrRuntimeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 456
    :try_start_1
    sget-object v1, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v1}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "VrRuntimeClient"

    .line 460
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VrRuntimeClient: destroyClient: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    :goto_0
    :try_start_3
    sget-object v1, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeService:Lcom/oculus/vrruntimeservice/IVrRuntimeService;

    invoke-interface {v1}, Lcom/oculus/vrruntimeservice/IVrRuntimeService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v3, Lcom/oculus/vrapi/VrRuntimeClient;->linkDeathHandler:Lcom/oculus/vrapi/VrRuntimeClient$LinkDeathHandler;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string v3, "VrRuntimeClient"

    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VrRuntimeClient: unlinkToDeath: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :goto_1
    sput-object v2, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeService:Lcom/oculus/vrruntimeservice/IVrRuntimeService;

    .line 472
    sput-object v2, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    .line 475
    :cond_0
    sget-object v1, Lcom/oculus/vrapi/VrRuntimeClient;->serviceConnection:Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;

    if-eqz v1, :cond_2

    .line 477
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->getContext()Landroid/content/Context;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    .line 483
    :try_start_5
    sget-object v3, Lcom/oculus/vrapi/VrRuntimeClient;->serviceConnection:Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_6
    const-string v3, "VrRuntimeClient"

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VrRuntimeClient: unbindService: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_1
    :goto_2
    sput-object v2, Lcom/oculus/vrapi/VrRuntimeClient;->serviceConnection:Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;

    :cond_2
    const/4 v1, -0x1

    .line 494
    invoke-static {v1, v1, v1, v1, v1}, Lcom/oculus/vrapi/VrRuntimeClient;->nativeRuntimeServiceConnected(IIIII)V

    .line 495
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public static enableRendering(ZLandroid/content/Context;)Z
    .locals 5

    .line 1047
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "VrRuntimeClient"

    const-string p1, "VrRuntimeClient: enableRendering: EnsureRuntimeService failed"

    .line 1049
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 1056
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->getContext()Landroid/content/Context;

    move-result-object p1

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_7

    .line 1064
    sget-boolean v0, Lcom/oculus/vrapi/VrRuntimeClient;->isOverlayClient:Z

    if-nez v0, :cond_7

    sget v0, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/4 v3, 0x4

    if-lt v0, v3, :cond_7

    if-eqz p1, :cond_3

    .line 1069
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    const-string v0, "VrRuntimeClient"

    const-string v3, "VrRuntimeClient: enableRendering: activity client"

    .line 1071
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    goto :goto_0

    .line 1074
    :cond_2
    instance-of v0, p1, Lcom/oculus/os/DialogContext;

    if-eqz v0, :cond_4

    const-string v0, "VrRuntimeClient"

    const-string v3, "VrRuntimeClient: enableRendering: dialog client"

    .line 1076
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    check-cast p1, Lcom/oculus/os/DialogContext;

    invoke-virtual {p1}, Lcom/oculus/os/DialogContext;->getWindow()Landroid/view/Window;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "VrRuntimeClient"

    const-string v0, "VrRuntimeClient: enableRendering: null Context"

    .line 1082
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_5

    .line 1088
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-string p1, "VrRuntimeClient"

    const-string v0, "VrRuntimeClient: enableRendering: null Window"

    .line 1092
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_6

    .line 1099
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getTarget"

    .line 1100
    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1101
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "VrRuntimeClient"

    .line 1102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrRuntimeClient: enableRendering: Using clientWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, p1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, p1

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    const-string p1, "VrRuntimeClient"

    .line 1106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VrRuntimeClient: enableRendering: unable to get clientWindow token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const-string p1, "VrRuntimeClient"

    const-string v0, "VrRuntimeClient: enableRendering: null WindowId"

    .line 1111
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_7
    :goto_3
    :try_start_2
    sget-object p1, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {p1, v2, p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->enableRendering(Landroid/os/IBinder;Z)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    const-string p1, "VrRuntimeClient"

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrRuntimeClient: enableRendering: Exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_4
    return p0
.end method

.method public static exportGuardianJson(Ljava/lang/String;)[B
    .locals 4

    .line 667
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    if-eqz v0, :cond_0

    .line 669
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-virtual {v0, p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->exportGuardianJson(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 672
    :cond_0
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string p0, "VrRuntimeClient"

    const-string v0, "VrRuntimeClient: exportGuardianJson: EnsureRuntimeService failed"

    .line 674
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 680
    :cond_1
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_2

    .line 682
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0, p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->exportGuardianJson(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "VrRuntimeClient"

    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrRuntimeClient: exportGuardianJson: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method public static finishClient()V
    .locals 3

    .line 1026
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1029
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    const-string v1, "VrRuntimeClient"

    const-string v2, "VrRuntimeClient: finishing client Activity"

    .line 1031
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_0

    .line 1034
    :cond_0
    instance-of v0, v0, Lcom/oculus/os/DialogContext;

    if-eqz v0, :cond_2

    const-string v0, "VrRuntimeClient"

    const-string v1, "VrRuntimeClient: system dialog not closed"

    .line 1036
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "VrRuntimeClient"

    const-string v1, "VrRuntimeClient: client not finished"

    .line 1041
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static forceGuardianSetup()V
    .locals 4

    .line 640
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    if-eqz v0, :cond_0

    .line 642
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-virtual {v0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->forceGuardianSetup()V

    return-void

    .line 646
    :cond_0
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VrRuntimeClient"

    const-string v1, "VrRuntimeClient: forceGuardianSetup: EnsureRuntimeService failed"

    .line 648
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 654
    :cond_1
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_2

    .line 656
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->forceGuardianSetup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VrRuntimeClient"

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  forceGuardianSetup : Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static forceGuardianVisible(ZDZ)V
    .locals 1

    .line 560
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    if-eqz v0, :cond_0

    .line 562
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oculus/vrguardianservice/VrGuardianClient;->forceGuardianVisible(ZDZ)V

    return-void

    .line 566
    :cond_0
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "VrRuntimeClient"

    const-string p1, "VrRuntimeClient: forceGuardianVisible: EnsureRuntimeService failed"

    .line 568
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 574
    :cond_1
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->forceGuardianVisible(ZDZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VrRuntimeClient"

    .line 578
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VrRuntimeClient: forceGuardianVisible: Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getClient6dofEntitlementMode(Ljava/lang/String;)I
    .locals 10

    const-string v0, "VrRuntimeClient"

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClient6dofEntitlementMode for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eqz p0, :cond_11

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 193
    :try_start_0
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.oculus.ocms.publiclibrary/apps/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 194
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 193
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_d

    .line 200
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "platform"

    .line 206
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 207
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "ANDROID"

    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    if-eqz p0, :cond_2

    .line 250
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0

    :cond_3
    :try_start_2
    const-string v1, "head_tracking"

    .line 217
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 218
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_5

    if-eqz p0, :cond_4

    .line 250
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return v0

    :cond_5
    :try_start_3
    const-string v2, "REQUIRE_3DOF"

    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_7

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 250
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    return v0

    :cond_7
    :try_start_4
    const-string v2, "ALLOW_6DOF"

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_9

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    .line 250
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_8
    return v0

    :cond_9
    :try_start_5
    const-string v2, "REQUIRE_6DOF"

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_b

    const/4 v0, 0x2

    if-eqz p0, :cond_a

    .line 250
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_a
    return v0

    :cond_b
    if-eqz p0, :cond_c

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_c
    return v0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_d
    :goto_0
    if-eqz p0, :cond_e

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_e
    return v0

    :catchall_0
    move-exception v0

    move-object p0, v1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v9, v1

    move-object v1, p0

    move-object p0, v9

    :goto_1
    :try_start_6
    const-string v2, "VrRuntimeClient"

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed getClient6dofEntitlement "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p0, :cond_f

    .line 250
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_f
    return v0

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz p0, :cond_10

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v0

    :cond_11
    :goto_3
    return v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .line 112
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->cachedContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->cachedContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->cachedContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static guardianCmd(I)I
    .locals 4

    .line 584
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    if-eqz v0, :cond_0

    .line 586
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-virtual {v0, p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->guardianCmd(I)I

    move-result p0

    return p0

    .line 589
    :cond_0
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    const-string p0, "VrRuntimeClient"

    const-string v0, "VrRuntimeClient: guardianCmd: EnsureRuntimeService failed"

    .line 591
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 597
    :cond_1
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_2

    .line 599
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0, p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->guardianCmd(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "VrRuntimeClient"

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrRuntimeClient: guardianCmd: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method public static guardianCmdWithParms(IIF)I
    .locals 2

    .line 612
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    if-eqz v0, :cond_0

    .line 614
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oculus/vrguardianservice/VrGuardianClient;->guardianCmdWithParms(IIF)I

    move-result p0

    return p0

    .line 617
    :cond_0
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    const-string p0, "VrRuntimeClient"

    const-string p1, "VrRuntimeClient: guardianCmdWithParms: EnsureRuntimeService failed"

    .line 619
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 625
    :cond_1
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_2

    .line 627
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0, p0, p1, p2}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->guardianCmdWithParms(IIF)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "VrRuntimeClient"

    .line 632
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VrRuntimeClient: guardianCmdWithParms: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method static hideSystemDialog_GazeTimer()V
    .locals 4

    .line 921
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VrRuntimeClient"

    const-string v1, "VrRuntimeClient: hideSystemDialog_GazeTimer: EnsureRuntimeService failed"

    .line 923
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 929
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_1

    .line 931
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->hideSystemDialog_GazeTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VrRuntimeClient"

    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrRuntimeClient: hideSystemDialog_GazeTimer: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static hideSystemDialog_MessageDialog(I)V
    .locals 3

    .line 963
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "VrRuntimeClient"

    const-string v0, "VrRuntimeClient: hideSystemDialog_MessageDialog: EnsureRuntimeService failed"

    .line 965
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 971
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_1

    .line 973
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0, p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->hideSystemDialog_MessageDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "VrRuntimeClient"

    .line 978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrRuntimeClient: hideSystemDialog_MessageDialog: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static hideSystemDialog_RecenterTimer()V
    .locals 4

    .line 879
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VrRuntimeClient"

    const-string v1, "VrRuntimeClient: hideSystemDialog_RecenterTimer: EnsureRuntimeService failed"

    .line 881
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 887
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_1

    .line 889
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->hideSystemDialog_RecenterTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VrRuntimeClient"

    .line 894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrRuntimeClient: hideSystemDialog_RecenterTimer: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static importGuardianJson([BZ)Z
    .locals 3

    .line 695
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    if-eqz v0, :cond_0

    .line 697
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-virtual {v0, p0, p1}, Lcom/oculus/vrguardianservice/VrGuardianClient;->importGuardianJson([BZ)Z

    move-result p0

    return p0

    .line 700
    :cond_0
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string p0, "VrRuntimeClient"

    const-string p1, "VrRuntimeClient: importGuardianJson: EnsureRuntimeService failed"

    .line 702
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 708
    :cond_1
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_2

    .line 710
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0, p0, p1}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->importGuardianJson([BZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "VrRuntimeClient"

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrRuntimeClient: importGuardianJson: Exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method public static initialize(Landroid/content/Context;Z)V
    .locals 4

    .line 132
    :try_start_0
    invoke-static {}, Lcom/oculus/vrapi/BindServiceWrapper;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VrRuntimeClient"

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrRuntimeClient: BindServiceWrapper.Init exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->cachedContext:Ljava/lang/ref/WeakReference;

    .line 140
    sput-boolean p1, Lcom/oculus/vrapi/VrRuntimeClient;->isOverlayClient:Z

    const-string p1, "VrRuntimeClient"

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VrRuntimeClient: initialize. inContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance p0, Landroid/os/HandlerThread;

    const-string p1, "VrRuntimeClientConnectionThread"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/oculus/vrapi/VrRuntimeClient;->handlerThread:Landroid/os/HandlerThread;

    .line 146
    sget-object p0, Lcom/oculus/vrapi/VrRuntimeClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 147
    new-instance p0, Landroid/os/Handler;

    sget-object p1, Lcom/oculus/vrapi/VrRuntimeClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/oculus/vrapi/VrRuntimeClient;->handler:Landroid/os/Handler;

    .line 149
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 155
    :try_start_1
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->CreateServiceIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "VrRuntimeClient"

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VrRuntimeClient:initialize: startService exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void
.end method

.method static isSystemDialogActive()Z
    .locals 5

    .line 834
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "VrRuntimeClient"

    const-string v2, "VrRuntimeClient: isSystemDialogActive: EnsureRuntimeService failed"

    .line 836
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 843
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_1

    .line 845
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->isSystemDialogActive()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "VrRuntimeClient"

    .line 850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VrRuntimeClient: isSystemDialogActive: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method private static native nativeGuardianServiceConnected(I)V
.end method

.method private static native nativeRuntimeServiceConnected(IIIII)V
.end method

.method public static sendBroadcastIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "VrRuntimeClient"

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastIntent - action: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' data: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " intent_pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1133
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "intent_data"

    .line 1135
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    .line 1138
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "intent_pkg"

    .line 1140
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/high16 p0, 0x10000

    .line 1143
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1144
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setAndroidSurfaceParameters(IIIZ)V
    .locals 1

    .line 771
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "VrRuntimeClient"

    const-string p1, "VrRuntimeClient: setAndroidSurfaceParameters: EnsureRuntimeService failed"

    .line 773
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 779
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_1

    .line 781
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->setAndroidSurfaceParameters(IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VrRuntimeClient"

    .line 786
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VrRuntimeClient: setAndroidSurfaceParameters: Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static setGobbOrientation(I)Z
    .locals 4

    .line 533
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 535
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-virtual {v0, p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->setGobbOrientation(I)V

    return v1

    .line 539
    :cond_0
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string p0, "VrRuntimeClient"

    const-string v0, "VrRuntimeClient: setGobbOrientation: EnsureRuntimeService failed"

    .line 541
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 548
    :cond_1
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0, p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->setGobbOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "VrRuntimeClient"

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrRuntimeClient: setGobbOrientation: Exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static setScreenCaptureInhibit(Z)V
    .locals 3

    .line 984
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "VrRuntimeClient"

    const-string v0, "VrRuntimeClient: setScreenCaptureInhibit: EnsureRuntimeService failed"

    .line 986
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 992
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_1

    .line 994
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0, p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->setScreenCaptureInhibit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "VrRuntimeClient"

    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrRuntimeClient: setScreenCaptureInhibit: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static setSwapChainSamplerState(ILcom/oculus/vrruntimeservice/SwapChainSamplerState;)V
    .locals 2

    .line 813
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "VrRuntimeClient"

    const-string p1, "VrRuntimeClient: setSwapChainSamplerState: EnsureRuntimeService failed"

    .line 815
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 821
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_1

    .line 823
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0, p0, p1}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->setSwapChainSamplerState(ILcom/oculus/vrruntimeservice/SwapChainSamplerState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VrRuntimeClient"

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VrRuntimeClient: setSwapChainSamplerState: Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static showSystemDialog_GazeTimer(FF)V
    .locals 2

    .line 900
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "VrRuntimeClient"

    const-string p1, "VrRuntimeClient: showSystemDialog_GazeTimer: EnsureRuntimeService failed"

    .line 902
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 908
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_1

    .line 910
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0, p0, p1}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->showSystemDialog_GazeTimer(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VrRuntimeClient"

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VrRuntimeClient: showSystemDialog_GazeTimer: Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static showSystemDialog_MessageDialog(IDLjava/lang/String;)V
    .locals 1

    .line 942
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "VrRuntimeClient"

    const-string p1, "VrRuntimeClient: showSystemDialog_MessageDialog: EnsureRuntimeService failed"

    .line 944
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 950
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_1

    .line 952
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->showSystemDialog_MessageDialog(IDLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VrRuntimeClient"

    .line 957
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VrRuntimeClient: showSystemDialog_MessageDialog: Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static showSystemDialog_RecenterTimer(FFZ)V
    .locals 1

    .line 858
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "VrRuntimeClient"

    const-string p1, "VrRuntimeClient: showSystemDialog_RecenterTimer: EnsureRuntimeService failed"

    .line 860
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 866
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_1

    .line 868
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0, p0, p1, p2}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->showSystemDialog_RecenterTimer(FFZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VrRuntimeClient"

    .line 873
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VrRuntimeClient: showSystemDialog_RecenterTimer: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static shutdown()V
    .locals 2

    const-string v0, "VrRuntimeClient"

    const-string v1, "VrRuntimeClient: shutdown."

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->doDisconnect()V

    .line 170
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->handlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 173
    sput-object v1, Lcom/oculus/vrapi/VrRuntimeClient;->handlerThread:Landroid/os/HandlerThread;

    .line 175
    :cond_0
    sput-object v1, Lcom/oculus/vrapi/VrRuntimeClient;->handler:Landroid/os/Handler;

    .line 177
    sput-object v1, Lcom/oculus/vrapi/VrRuntimeClient;->cachedContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static stopScreenCapture()V
    .locals 4

    .line 1005
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VrRuntimeClient"

    const-string v1, "VrRuntimeClient: stopScreenCapture: EnsureRuntimeService failed"

    .line 1007
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1013
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v0, :cond_1

    .line 1015
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    invoke-interface {v0}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->stopScreenCapture()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VrRuntimeClient"

    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrRuntimeClient: stopScreenCapture: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static updateLocalSpace(IFFFFFFF)Z
    .locals 12

    .line 506
    sget-object v0, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 508
    sget-object v2, Lcom/oculus/vrapi/VrRuntimeClient;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/oculus/vrguardianservice/VrGuardianClient;->updateLocalSpace(IFFFFFFF)V

    return v1

    .line 512
    :cond_0
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->EnsureRuntimeService()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "VrRuntimeClient"

    const-string v1, "VrRuntimeClient: updateLocalSpace: EnsureRuntimeService failed"

    .line 514
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 521
    :cond_1
    :try_start_0
    sget-object v3, Lcom/oculus/vrapi/VrRuntimeClient;->vrRuntimeClient:Lcom/oculus/vrruntimeservice/IRuntimeClient;

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-interface/range {v3 .. v11}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->updateLocalSpace(IFFFFFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VrRuntimeClient"

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VrRuntimeClient: updateLocalSpace: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1
.end method
