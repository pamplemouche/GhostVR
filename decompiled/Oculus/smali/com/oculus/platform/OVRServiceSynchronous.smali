.class public Lcom/oculus/platform/OVRServiceSynchronous;
.super Ljava/lang/Object;
.source "OVRServiceSynchronous.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;,
        Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;,
        Lcom/oculus/platform/OVRServiceSynchronous$AidlService;,
        Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;,
        Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatusListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final SERVICE_CONNECTION_TIMEOUT_MILLIS:J = 0x7530L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAidlService:Lcom/oculus/platform/OVRServiceSynchronous$AidlService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/platform/OVRServiceSynchronous$AidlService",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mComponent:Ljava/lang/String;

.field private mConnectionStatus:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

.field private mConnectionStatusListener:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatusListener;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mMessenger:Landroid/os/Messenger;

.field private mPackage:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceInterface:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/oculus/platform/OVRServiceSynchronous;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Lcom/oculus/platform/OVRServiceSynchronous$AidlService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/oculus/platform/OVRServiceSynchronous$AidlService",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    iput-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mConnectionStatus:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mContext:Landroid/content/Context;

    .line 85
    iput-object p4, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 86
    iput-object p2, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mPackage:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mComponent:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mAidlService:Lcom/oculus/platform/OVRServiceSynchronous$AidlService;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/platform/OVRServiceSynchronous;)Lcom/oculus/platform/util/OVRError;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->connect()Lcom/oculus/platform/util/OVRError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oculus/platform/OVRServiceSynchronous;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceInterface:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic access$302(Lcom/oculus/platform/OVRServiceSynchronous;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oculus/platform/OVRServiceSynchronous;Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/oculus/platform/OVRServiceSynchronous;->setConnectionStatus(Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V

    return-void
.end method

.method private connect()Lcom/oculus/platform/util/OVRError;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->getConnectionStatus()Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    move-result-object v2

    .line 174
    sget-object v3, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTING:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    if-ne v2, v3, :cond_2

    .line 176
    :cond_0
    monitor-exit v1

    .line 214
    :cond_1
    :goto_0
    return-object v0

    .line 179
    :cond_2
    iget-object v2, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oculus/platform/OVRServiceSynchronous;->getServiceAvailability(Landroid/content/pm/PackageManager;)Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    move-result-object v2

    .line 180
    sget-object v3, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->SIGNATURE_VERIFIED:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    if-eq v2, v3, :cond_3

    .line 181
    sget-object v0, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    monitor-exit v1

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 184
    :cond_3
    :try_start_1
    sget-object v2, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTING:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    invoke-direct {p0, v2}, Lcom/oculus/platform/OVRServiceSynchronous;->setConnectionStatus(Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V

    .line 185
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    new-instance v1, Lcom/oculus/platform/OVRServiceSynchronous$2;

    invoke-direct {v1, p0}, Lcom/oculus/platform/OVRServiceSynchronous$2;-><init>(Lcom/oculus/platform/OVRServiceSynchronous;)V

    iput-object v1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 204
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mContext:Landroid/content/Context;

    .line 205
    invoke-direct {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->getServiceIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 204
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    sget-object v1, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    const-string v2, "Service connection failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iput-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 210
    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    invoke-direct {p0, v0}, Lcom/oculus/platform/OVRServiceSynchronous;->setConnectionStatus(Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V

    .line 212
    sget-object v0, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    goto :goto_0
.end method

.method private getServiceIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mComponent:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 140
    return-object v0
.end method

.method private setConnectionStatus(Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mConnectionStatus:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    if-eq v0, p1, :cond_3

    const/4 v0, 0x1

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mConnectionStatus:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    .line 107
    sget-object v2, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    if-ne p1, v2, :cond_1

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 111
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mConnectionStatusListener:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatusListener;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mConnectionStatusListener:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatusListener;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mConnectionStatus:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    invoke-interface {v0, v1}, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatusListener;->onConnectionStatusChanged(Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V

    .line 116
    :cond_2
    return-void

    .line 102
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private waitForConnectHelper(Z)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/oculus/platform/OVRServiceSynchronous",
            "<TT;>.ServiceBindResult;"
        }
    .end annotation

    .prologue
    .line 239
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 240
    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    const-string v1, "This call will fail if the service unbinds."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You cannot bind to services on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->connect()Lcom/oculus/platform/util/OVRError;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_1

    .line 246
    new-instance v1, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    invoke-direct {v1, p0}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;-><init>(Lcom/oculus/platform/OVRServiceSynchronous;)V

    invoke-virtual {v1, v0}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->error(Lcom/oculus/platform/util/OVRError;)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->getConnectionStatus()Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    move-result-object v0

    sget-object v2, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTING:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_2

    .line 252
    :try_start_1
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->getConnectionStatus()Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    move-result-object v0

    sget-object v2, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    if-eq v0, v2, :cond_3

    .line 258
    new-instance v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    invoke-direct {v0, p0}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;-><init>(Lcom/oculus/platform/OVRServiceSynchronous;)V

    sget-object v2, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    invoke-virtual {v0, v2}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->error(Lcom/oculus/platform/util/OVRError;)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    :try_start_3
    sget-object v2, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    const-string v3, "There was an error connecting to the service."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 261
    :cond_3
    new-instance v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    invoke-direct {v0, p0}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;-><init>(Lcom/oculus/platform/OVRServiceSynchronous;)V

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceInterface:Landroid/os/IInterface;

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v2, v3}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->success(Landroid/os/IInterface;Landroid/os/Messenger;)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public connectInBackground()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceSynchronous$1;

    invoke-direct {v1, p0}, Lcom/oculus/platform/OVRServiceSynchronous$1;-><init>(Lcom/oculus/platform/OVRServiceSynchronous;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 225
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 226
    return-void
.end method

.method public getConnectionStatus()Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mConnectionStatus:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getServiceAvailability(Landroid/content/pm/PackageManager;)Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;
    .locals 4

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->getServiceIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isServiceAvailable matched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mPackage:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oculus/platform/OVRPackageUtils;->validateServiceSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->SIGNATURE_VERIFIED:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    .line 167
    :goto_0
    return-object v0

    .line 159
    :cond_0
    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->SIGNATURE_INVALID:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    sget-object v1, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impossible error, package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->NOT_FOUND:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    goto :goto_0

    .line 167
    :cond_1
    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->NOT_FOUND:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    goto :goto_0
.end method

.method public setConnectionStatusListener(Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatusListener;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mConnectionStatusListener:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatusListener;

    .line 93
    return-void
.end method

.method public waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oculus/platform/OVRServiceSynchronous",
            "<TT;>.ServiceBindResult;"
        }
    .end annotation

    .prologue
    .line 229
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnectHelper(Z)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    return-object v0
.end method

.method public waitForConnectPossiblyMainthread_DO_NOT_USE_OR_YOU_WILL_BE_FIRED()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oculus/platform/OVRServiceSynchronous",
            "<TT;>.ServiceBindResult;"
        }
    .end annotation

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnectHelper(Z)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    return-object v0
.end method
