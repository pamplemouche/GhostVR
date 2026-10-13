.class public Lcom/oculus/vrapi/TrackingServiceConnectionGear;
.super Ljava/lang/Object;
.source "TrackingServiceConnectionGear.java"

# interfaces
.implements Lcom/oculus/vrapi/ITrackingServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;
    }
.end annotation


# static fields
.field private static final DRIVER_TRACKING_SERVICE_CLASS:Ljava/lang/String; = "com.oculus.vrapi.TrackingService"

.field private static final DRIVER_TRACKING_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.systemdriver"

.field private static final TAG:Ljava/lang/String; = "TrackingServiceConnectionGear"

.field private static final TRACKING_SERVICE_CONNECTION_TIMEOUT_SEC:I = 0x5


# instance fields
.field private mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

.field private mContext:Landroid/content/Context;

.field private mDisconnectCallback:Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mShouldUnbindFromTrackingService:Z

.field private mTrackingService:Lcom/oculus/vrapi/ITrackingService;

.field private mTrackingServiceConnection:Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;Lcom/oculus/vrapi/ITrackingServiceClient;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mTrackingService:Lcom/oculus/vrapi/ITrackingService;

    .line 26
    iput-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mTrackingServiceConnection:Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mShouldUnbindFromTrackingService:Z

    .line 28
    iput-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mHandlerThread:Landroid/os/HandlerThread;

    .line 29
    iput-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mDisconnectCallback:Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;

    .line 89
    iput-object p3, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    .line 92
    :try_start_0
    invoke-static {}, Lcom/oculus/vrapi/BindServiceWrapper;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "TrackingServiceConnectionGear"

    const-string v0, "Failed to initialize BindServiceWrapper "

    .line 96
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    :goto_0
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "trackingServiceConnectionThread"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mHandlerThread:Landroid/os/HandlerThread;

    .line 102
    iget-object p2, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 103
    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mHandler:Landroid/os/Handler;

    .line 107
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_0

    .line 109
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->createTrackingServiceIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 113
    :cond_0
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->createTrackingServiceIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrapi/TrackingServiceConnectionGear;)Lcom/oculus/vrapi/ITrackingService;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mTrackingService:Lcom/oculus/vrapi/ITrackingService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/oculus/vrapi/TrackingServiceConnectionGear;Lcom/oculus/vrapi/ITrackingService;)Lcom/oculus/vrapi/ITrackingService;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mTrackingService:Lcom/oculus/vrapi/ITrackingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oculus/vrapi/TrackingServiceConnectionGear;)Lcom/oculus/vrapi/ITrackingServiceClient;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/vrapi/TrackingServiceConnectionGear;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->doDisconnect()V

    return-void
.end method

.method private static createTrackingServiceIntent()Landroid/content/Intent;
    .locals 3

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oculus.systemdriver"

    const-string v2, "com.oculus.vrapi.TrackingService"

    .line 221
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private doDisconnect()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mDisconnectCallback:Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;

    invoke-interface {v0}, Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;->onDisconnect()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 215
    invoke-static {v0, v1}, Lcom/oculus/vrapi/TrackingServiceClient;->nativeSetTrackingServiceInterface(Lcom/oculus/vrapi/ITrackingService;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 200
    iput-object v1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mHandlerThread:Landroid/os/HandlerThread;

    .line 203
    :cond_0
    iput-object v1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public getTrackingSocketFd()I
    .locals 2

    const-string v0, "TrackingServiceConnectionGear"

    const-string v1, "not implemented"

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public onClientConnect()Z
    .locals 7

    const-string v0, "TrackingServiceConnectionGear"

    const-string v1, "onClientConnect"

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->createTrackingServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 126
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 128
    iget-object v1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 136
    :goto_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 138
    new-instance v3, Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;

    invoke-direct {v3, p0, v1}, Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;-><init>(Lcom/oculus/vrapi/TrackingServiceConnectionGear;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v3, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mTrackingServiceConnection:Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;

    const/4 v3, 0x0

    .line 144
    :try_start_0
    iget-object v4, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mTrackingServiceConnection:Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;

    iget-object v6, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v0, v5, v3, v6}, Lcom/oculus/vrapi/BindServiceWrapper;->bindServiceWithHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mShouldUnbindFromTrackingService:Z

    const-string v0, "TrackingServiceConnectionGear"

    const-string v4, "Waiting on connection"

    .line 147
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x5

    .line 148
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    const-string v0, "TrackingServiceConnectionGear"

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TrackingService client: bindService returned "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mShouldUnbindFromTrackingService:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    const-string v1, "TrackingServiceConnectionGear"

    const-string v2, "Failed to bind to TrackingService"

    .line 161
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "TrackingServiceConnectionGear"

    const-string v2, "Timed out connecting to tracking service"

    .line 156
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return v3
.end method

.method public onClientDisconnect()V
    .locals 4

    .line 171
    iget-boolean v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mShouldUnbindFromTrackingService:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mTrackingService:Lcom/oculus/vrapi/ITrackingService;

    if-eqz v0, :cond_0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mTrackingService:Lcom/oculus/vrapi/ITrackingService;

    iget-object v1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    invoke-interface {v0, v1}, Lcom/oculus/vrapi/ITrackingService;->unregisterClient(Lcom/oculus/vrapi/ITrackingServiceClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TrackingServiceConnectionGear"

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister TrackingService client callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v0, "TrackingServiceConnectionGear"

    const-string v1, "unbinding trackingServiceConnection"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mTrackingServiceConnection:Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 187
    invoke-direct {p0}, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->doDisconnect()V

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mTrackingServiceConnection:Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->mShouldUnbindFromTrackingService:Z

    :cond_1
    return-void
.end method
