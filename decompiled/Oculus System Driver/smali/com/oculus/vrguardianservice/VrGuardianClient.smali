.class public Lcom/oculus/vrguardianservice/VrGuardianClient;
.super Ljava/lang/Object;
.source "VrGuardianClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;,
        Lcom/oculus/vrguardianservice/VrGuardianClient$LinkDeathHandler;,
        Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianClientHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VrGuardianClient"


# instance fields
.field private cachedContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private clientHandler:Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianClientHandler;

.field private clientToken:Landroid/os/IBinder;

.field private guardianServiceConnection:Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private linkDeathHandler:Lcom/oculus/vrguardianservice/VrGuardianClient$LinkDeathHandler;

.field private vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

.field private vrGuardianService:Lcom/oculus/vrguardianservice/IVrGuardianService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->cachedContext:Ljava/lang/ref/WeakReference;

    .line 25
    iput-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->guardianServiceConnection:Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;

    .line 26
    iput-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianService:Lcom/oculus/vrguardianservice/IVrGuardianService;

    .line 27
    iput-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    .line 28
    new-instance v1, Lcom/oculus/vrguardianservice/VrGuardianClient$LinkDeathHandler;

    invoke-direct {v1, p0, v0}, Lcom/oculus/vrguardianservice/VrGuardianClient$LinkDeathHandler;-><init>(Lcom/oculus/vrguardianservice/VrGuardianClient;Lcom/oculus/vrguardianservice/VrGuardianClient$1;)V

    iput-object v1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->linkDeathHandler:Lcom/oculus/vrguardianservice/VrGuardianClient$LinkDeathHandler;

    .line 29
    iput-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->clientHandler:Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianClientHandler;

    .line 30
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->clientToken:Landroid/os/IBinder;

    .line 31
    iput-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->handlerThread:Landroid/os/HandlerThread;

    .line 32
    iput-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->handler:Landroid/os/Handler;

    return-void
.end method

.method private CreateGuardianServiceIntent()Landroid/content/Intent;
    .locals 4

    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.systemdriver"

    const-string v3, "com.oculus.vrguardianservice.VrGuardianService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/vrguardianservice/VrGuardianClient;)Lcom/oculus/vrguardianservice/IVrGuardianService;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianService:Lcom/oculus/vrguardianservice/IVrGuardianService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oculus/vrguardianservice/VrGuardianClient;Lcom/oculus/vrguardianservice/IVrGuardianService;)Lcom/oculus/vrguardianservice/IVrGuardianService;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianService:Lcom/oculus/vrguardianservice/IVrGuardianService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oculus/vrguardianservice/VrGuardianClient;)Lcom/oculus/vrguardianservice/IVrGuardianClient;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    return-object p0
.end method

.method static synthetic access$202(Lcom/oculus/vrguardianservice/VrGuardianClient;Lcom/oculus/vrguardianservice/IVrGuardianClient;)Lcom/oculus/vrguardianservice/IVrGuardianClient;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oculus/vrguardianservice/VrGuardianClient;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->doDisconnect()V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/vrguardianservice/VrGuardianClient;)Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->guardianServiceConnection:Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oculus/vrguardianservice/VrGuardianClient;)Lcom/oculus/vrguardianservice/VrGuardianClient$LinkDeathHandler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->linkDeathHandler:Lcom/oculus/vrguardianservice/VrGuardianClient$LinkDeathHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oculus/vrguardianservice/VrGuardianClient;)Landroid/os/IBinder;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->clientToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oculus/vrguardianservice/VrGuardianClient;)Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianClientHandler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->clientHandler:Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianClientHandler;

    return-object p0
.end method

.method private doDisconnect()V
    .locals 6

    .line 212
    const-class v0, Lcom/oculus/vrguardianservice/VrGuardianClient;

    monitor-enter v0

    :try_start_0
    const-string v1, "VrGuardianClient"

    const-string v2, "VrGuardianClient: Performing disconnect"

    .line 214
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianService:Lcom/oculus/vrguardianservice/IVrGuardianService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 220
    :try_start_1
    iget-object v1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    invoke-interface {v1}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "VrGuardianClient"

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VrGuardianClient: destroyClient: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianService:Lcom/oculus/vrguardianservice/IVrGuardianService;

    invoke-interface {v1}, Lcom/oculus/vrguardianservice/IVrGuardianService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->linkDeathHandler:Lcom/oculus/vrguardianservice/VrGuardianClient$LinkDeathHandler;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string v3, "VrGuardianClient"

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VrGuardianClient: unlinkToDeath: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_1
    iput-object v2, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianService:Lcom/oculus/vrguardianservice/IVrGuardianService;

    .line 236
    iput-object v2, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->guardianServiceConnection:Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;

    if-eqz v1, :cond_2

    .line 241
    invoke-direct {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->getContext()Landroid/content/Context;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    .line 247
    :try_start_5
    iget-object v3, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->guardianServiceConnection:Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_6
    const-string v3, "VrGuardianClient"

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VrGuardianClient: unbindService: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_1
    :goto_2
    iput-object v2, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->guardianServiceConnection:Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->clientHandler:Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianClientHandler;

    if-eqz v1, :cond_3

    .line 260
    iget-object v1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->clientHandler:Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianClientHandler;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianClientHandler;->connected(I)V

    .line 262
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->cachedContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->cachedContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->cachedContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ensureConnection()Z
    .locals 8

    .line 267
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianService:Lcom/oculus/vrguardianservice/IVrGuardianService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->guardianServiceConnection:Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "VrGuardianClient"

    const-string v1, "VrGuardianClient: serviceConnection is valid but vrGuardianService is not!"

    .line 274
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string v0, "VrGuardianClient"

    const-string v3, "VrGuardianClient: creating new service"

    .line 278
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "VrGuardianClient"

    const-string v1, "VrGuardianClient: No context."

    .line 284
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 288
    :cond_2
    invoke-direct {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->CreateGuardianServiceIntent()Landroid/content/Intent;

    move-result-object v3

    .line 292
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "VrGuardianClient"

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VrGuardianClient:EnsureRuntimeService: guardian startService exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_0
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 300
    new-instance v5, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;

    invoke-direct {v5, p0, v4}, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;-><init>(Lcom/oculus/vrguardianservice/VrGuardianClient;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v5, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->guardianServiceConnection:Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;

    const/4 v5, 0x0

    .line 304
    :try_start_1
    iget-object v6, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->guardianServiceConnection:Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;

    iget-object v7, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->handler:Landroid/os/Handler;

    invoke-static {v0, v3, v6, v2, v7}, Lcom/oculus/vrapi/BindServiceWrapper;->bindServiceWithHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "VrGuardianClient"

    const-string v3, "VrGuardianClient: Waiting on guardian connection..."

    .line 307
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x5

    .line 308
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    const-string v3, "VrGuardianClient"

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VrGuardianClient: guardian connectionIsReady: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v0, "VrGuardianClient"

    const-string v3, "VrGuardianClient: guardian bindServiceWithHandler failed."

    .line 313
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iput-object v5, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->guardianServiceConnection:Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;

    .line 315
    iput-object v5, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianService:Lcom/oculus/vrguardianservice/IVrGuardianService;

    .line 316
    iput-object v5, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "VrGuardianClient"

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VrGuardianClient: guardian EnsureRuntimeService. bindServiceWithHandler exception:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iput-object v5, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->guardianServiceConnection:Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;

    .line 323
    iput-object v5, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianService:Lcom/oculus/vrguardianservice/IVrGuardianService;

    .line 324
    iput-object v5, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    .line 327
    :goto_1
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianService:Lcom/oculus/vrguardianservice/IVrGuardianService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    if-eqz v0, :cond_4

    .line 338
    :try_start_2
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    invoke-interface {v0}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->fullStartup()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v2, "VrGuardianClient"

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VrGuardianClient: fullStartup exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v0, "VrGuardianClient"

    const-string v2, "VrGuardianClient: guardian context.bindService SUCCESS"

    .line 345
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const-string v0, "VrGuardianClient"

    const-string v1, "VrGuardianClient: guardian context.bindService FAILURE."

    .line 350
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public exportGuardianJson(Ljava/lang/String;)[B
    .locals 4

    .line 511
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->ensureConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "VrGuardianClient"

    const-string v0, "VrGuardianClient: exportGuardianJson: ensureConnection failed"

    .line 513
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 519
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    invoke-interface {v0, p1}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->exportGuardianJson(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "VrGuardianClient"

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrGuardianClient: exportGuardianJson: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public forceGuardianSetup()V
    .locals 4

    .line 490
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->ensureConnection()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VrGuardianClient"

    const-string v1, "VrGuardianClient: forceGuardianSetup: ensureConnection failed"

    .line 492
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 498
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    invoke-interface {v0}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->forceGuardianSetup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VrGuardianClient"

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrGuardianClient: forceGuardianSetup: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public forceGuardianVisible(ZDZ)V
    .locals 1

    .line 423
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->ensureConnection()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "VrGuardianClient"

    const-string p2, "VrGuardianClient: forceGuardianVisible: ensureConnection failed"

    .line 425
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 431
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->forceGuardianVisible(ZDZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "VrGuardianClient"

    .line 438
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "VrGuardianClient: forceGuardianVisible: Exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getSharedMemoryFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 5

    .line 358
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->ensureConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "VrGuardianClient"

    const-string v2, "VrGuardianClient: getSharedMemoryFileDescriptor: ensureConnection failed"

    .line 360
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 366
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    invoke-interface {v0}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->getSharedMemoryFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "VrGuardianClient"

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VrGuardianClient: getSharedMemoryFileDescriptor: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public guardianCmd(I)I
    .locals 4

    .line 444
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->ensureConnection()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p1, "VrGuardianClient"

    const-string v0, "VrGuardianClient: guardianCmd: ensureConnection failed"

    .line 446
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 452
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    invoke-interface {v0, p1}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->guardianCmd(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "VrGuardianClient"

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrGuardianClient: guardianCmd: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public guardianCmdWithParms(IIF)I
    .locals 2

    .line 467
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->ensureConnection()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p1, "VrGuardianClient"

    const-string p2, "VrGuardianClient: guardianCmdWithParms: ensureConnection failed"

    .line 469
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 475
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->guardianCmdWithParms(IIF)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "VrGuardianClient"

    .line 482
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VrGuardianClient: guardianCmdWithParms: Exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public importGuardianJson([BZ)Z
    .locals 3

    .line 534
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->ensureConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "VrGuardianClient"

    const-string p2, "VrGuardianClient: importGuardianJson: ensureConnection failed"

    .line 536
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 542
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    invoke-interface {v0, p1, p2}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->importGuardianJson([BZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "VrGuardianClient"

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrGuardianClient: importGuardianJson: Exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public initialize(Landroid/content/Context;Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianClientHandler;)V
    .locals 3

    .line 162
    iput-object p2, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->clientHandler:Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianClientHandler;

    .line 163
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->cachedContext:Ljava/lang/ref/WeakReference;

    .line 167
    :try_start_0
    invoke-static {}, Lcom/oculus/vrapi/BindServiceWrapper;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "VrGuardianClient"

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrGuardianClient: BindServiceWrapper.Init exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p2, "VrGuardianClient"

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VrGuardianClient: initialize. inContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "VrGuardianClientConnectionThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->handlerThread:Landroid/os/HandlerThread;

    .line 178
    iget-object p1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 179
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->handler:Landroid/os/Handler;

    .line 181
    invoke-direct {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 187
    :try_start_1
    invoke-direct {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->CreateGuardianServiceIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "VrGuardianClient"

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VrGuardianClient:initialize: startService exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void
.end method

.method public onDestroyActiveClient(Ljava/lang/String;)V
    .locals 3

    .line 641
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->ensureConnection()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "VrGuardianClient"

    const-string v0, "VrGuardianClient: onDestroyActiveClient: ensureConnection failed"

    .line 643
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 649
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    invoke-interface {v0, p1}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->onDestroyActiveClient(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "VrGuardianClient"

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrGuardianClient: onDestroyActiveClient: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setClientMgrState(ZZZ)V
    .locals 1

    .line 620
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->ensureConnection()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "VrGuardianClient"

    const-string p2, "VrGuardianClient: setClientMgrState: ensureConnection failed"

    .line 622
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 628
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->setClientMgrState(ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "VrGuardianClient"

    .line 635
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VrGuardianClient: setClientMgrState: Exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setGobbOrientation(I)V
    .locals 3

    .line 402
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->ensureConnection()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "VrGuardianClient"

    const-string v0, "VrGuardianClient: setGobbOrientation: ensureConnection failed"

    .line 404
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 410
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    invoke-interface {v0, p1}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->setGobbOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "VrGuardianClient"

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrGuardianClient: setGobbOrientation: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 3

    .line 578
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->ensureConnection()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "VrGuardianClient"

    const-string v0, "VrGuardianClient: setPackageName: ensureConnection failed"

    .line 580
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 586
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    invoke-interface {v0, p1}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->setPackageName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "VrGuardianClient"

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrGuardianClient: setPackageName: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public shutdown()V
    .locals 2

    const-string v0, "VrGuardianClient"

    const-string v1, "VrGuardianClient: shutdown."

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->doDisconnect()V

    .line 202
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->handlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 205
    iput-object v1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->handlerThread:Landroid/os/HandlerThread;

    .line 207
    :cond_0
    iput-object v1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->handler:Landroid/os/Handler;

    return-void
.end method

.method public suspendResume(Z)V
    .locals 3

    .line 557
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->ensureConnection()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "VrGuardianClient"

    const-string v0, "VrGuardianClient: suspendResume: ensureConnection failed"

    .line 559
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 565
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    invoke-interface {v0, p1}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->suspendResume(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "VrGuardianClient"

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrGuardianClient: suspendResume: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateAfterMountInBlackRelocDuration(Z)V
    .locals 3

    .line 599
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->ensureConnection()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "VrGuardianClient"

    const-string v0, "VrGuardianClient: updateAfterMountInBlackRelocDuration: ensureConnection failed"

    .line 601
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 607
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    invoke-interface {v0, p1}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->updateAfterMountInBlackRelocDuration(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "VrGuardianClient"

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrGuardianClient: updateAfterMountInBlackRelocDuration: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateLocalSpace(IFFFFFFF)V
    .locals 11

    move-object v1, p0

    .line 381
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->ensureConnection()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VrGuardianClient"

    const-string v2, "VrGuardianClient: updateLocalSpace: ensureConnection failed"

    .line 383
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 389
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    if-eqz v0, :cond_1

    .line 391
    iget-object v2, v1, Lcom/oculus/vrguardianservice/VrGuardianClient;->vrGuardianClient:Lcom/oculus/vrguardianservice/IVrGuardianClient;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->updateLocalSpace(IFFFFFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "VrGuardianClient"

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VrGuardianClient: updateLocalSpace: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
