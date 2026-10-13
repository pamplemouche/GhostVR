.class public Lcom/oculus/platform/OVRServiceSynchronous;
.super Ljava/lang/Object;
.source "OVRServiceSynchronous.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;,
        Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;,
        Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;
    }
.end annotation


# static fields
.field private static final SERVICE_CONNECTION_TIMEOUT_MILLIS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "OVRServiceSynchronous"


# instance fields
.field private mComponent:Ljava/lang/String;

.field private mConnectionStatus:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mMessenger:Landroid/os/Messenger;

.field private mPackage:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    iput-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mConnectionStatus:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mContext:Landroid/content/Context;

    .line 62
    iput-object p4, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 63
    iput-object p2, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mPackage:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mComponent:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/platform/OVRServiceSynchronous;)I
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->connect()I

    move-result p0

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oculus/platform/OVRServiceSynchronous;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oculus/platform/OVRServiceSynchronous;Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/oculus/platform/OVRServiceSynchronous;->setConnectionStatus(Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V

    return-void
.end method

.method private connect()I
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    invoke-direct {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->getConnectionStatus()Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    move-result-object v1

    .line 113
    sget-object v2, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTING:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    sget-object v1, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTING:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    invoke-direct {p0, v1}, Lcom/oculus/platform/OVRServiceSynchronous;->setConnectionStatus(Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V

    .line 119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    new-instance v0, Lcom/oculus/platform/OVRServiceSynchronous$2;

    invoke-direct {v0, p0}, Lcom/oculus/platform/OVRServiceSynchronous$2;-><init>(Lcom/oculus/platform/OVRServiceSynchronous;)V

    iput-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 137
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mContext:Landroid/content/Context;

    .line 138
    invoke-direct {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->getServiceIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 137
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    const-string v1, "Service connection failed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 143
    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    invoke-direct {p0, v0}, Lcom/oculus/platform/OVRServiceSynchronous;->setConnectionStatus(Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V

    return v4

    :cond_1
    return v3

    .line 115
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    .line 119
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getConnectionStatus()Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mConnectionStatus:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getServiceIntent()Landroid/content/Intent;
    .locals 4

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mComponent:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private setConnectionStatus(Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mConnectionStatus:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    .line 77
    sget-object v1, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    if-ne p1, v1, :cond_1

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 81
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private waitForConnectHelper(Z)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;
    .locals 3

    if-eqz p1, :cond_1

    .line 171
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    sget-object p1, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "This call will fail if the service unbinds."

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You cannot bind to services on the main thread"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->connect()I

    move-result p1

    if-eqz p1, :cond_2

    .line 178
    new-instance v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    invoke-direct {v0, p0}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;-><init>(Lcom/oculus/platform/OVRServiceSynchronous;)V

    invoke-virtual {v0, p1}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->error(I)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object p1

    return-object p1

    .line 181
    :cond_2
    iget-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 182
    :try_start_0
    invoke-direct {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->getConnectionStatus()Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    move-result-object v0

    sget-object v1, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTING:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_3

    .line 184
    :try_start_1
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 186
    :try_start_2
    sget-object v1, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    const-string v2, "There was an error connecting to the service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->getConnectionStatus()Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    move-result-object v0

    sget-object v1, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    if-eq v0, v1, :cond_4

    .line 190
    new-instance v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    invoke-direct {v0, p0}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;-><init>(Lcom/oculus/platform/OVRServiceSynchronous;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->error(I)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 193
    :cond_4
    new-instance v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    invoke-direct {v0, p0}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;-><init>(Lcom/oculus/platform/OVRServiceSynchronous;)V

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->success(Landroid/os/Messenger;)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 195
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public connectInBackground()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceSynchronous$1;

    invoke-direct {v1, p0}, Lcom/oculus/platform/OVRServiceSynchronous$1;-><init>(Lcom/oculus/platform/OVRServiceSynchronous;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;
    .locals 1

    const/4 v0, 0x1

    .line 161
    invoke-direct {p0, v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnectHelper(Z)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    return-object v0
.end method

.method public waitForConnectPossiblyMainthread_DO_NOT_USE_OR_YOU_WILL_BE_FIRED()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnectHelper(Z)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    return-object v0
.end method
