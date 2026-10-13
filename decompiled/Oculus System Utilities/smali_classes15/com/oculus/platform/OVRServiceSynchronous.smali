.class public Lcom/oculus/platform/OVRServiceSynchronous;
.super Ljava/lang/Object;
.source "OVRServiceSynchronous.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;,
        Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;,
        Lcom/oculus/platform/OVRServiceSynchronous$AidlService;,
        Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;
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
    .line 49
    const-class v0, Lcom/oculus/platform/OVRServiceSynchronous;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Lcom/oculus/platform/OVRServiceSynchronous$AidlService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "servicePackage"    # Ljava/lang/String;
    .param p3, "serviceComponent"    # Ljava/lang/String;
    .param p4, "threadPool"    # Ljava/util/concurrent/ExecutorService;
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
    .line 66
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous;, "Lcom/oculus/platform/OVRServiceSynchronous<TT;>;"
    .local p5, "aidlService":Lcom/oculus/platform/OVRServiceSynchronous$AidlService;, "Lcom/oculus/platform/OVRServiceSynchronous$AidlService<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    iput-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mConnectionStatus:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mContext:Landroid/content/Context;

    .line 68
    iput-object p4, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 69
    iput-object p2, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mPackage:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mComponent:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mAidlService:Lcom/oculus/platform/OVRServiceSynchronous$AidlService;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/platform/OVRServiceSynchronous;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oculus/platform/OVRServiceSynchronous;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->connect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oculus/platform/OVRServiceSynchronous;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0
    .param p0, "x0"    # Lcom/oculus/platform/OVRServiceSynchronous;
    .param p1, "x1"    # Landroid/os/IInterface;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceInterface:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic access$302(Lcom/oculus/platform/OVRServiceSynchronous;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/oculus/platform/OVRServiceSynchronous;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oculus/platform/OVRServiceSynchronous;Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/platform/OVRServiceSynchronous;
    .param p1, "x1"    # Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/oculus/platform/OVRServiceSynchronous;->setConnectionStatus(Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V

    return-void
.end method

.method private connect()Z
    .locals 7

    .prologue
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous;, "Lcom/oculus/platform/OVRServiceSynchronous<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 145
    iget-object v4, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->getConnectionStatus()Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    move-result-object v0

    .line 147
    .local v0, "connectionStatus":Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;
    sget-object v5, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTING:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    if-eq v0, v5, :cond_0

    sget-object v5, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    if-ne v0, v5, :cond_1

    .line 149
    :cond_0
    monitor-exit v4

    move v2, v3

    .line 187
    :goto_0
    return v2

    .line 152
    :cond_1
    iget-object v5, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/oculus/platform/OVRServiceSynchronous;->getServiceAvailability(Landroid/content/pm/PackageManager;)Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    move-result-object v1

    .line 153
    .local v1, "serviceState":Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;
    sget-object v5, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->SIGNATURE_VERIFIED:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    if-eq v1, v5, :cond_2

    .line 154
    sget-object v3, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    const-string v5, "serviceState not verified"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    monitor-exit v4

    goto :goto_0

    .line 159
    .end local v0    # "connectionStatus":Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;
    .end local v1    # "serviceState":Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 158
    .restart local v0    # "connectionStatus":Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;
    .restart local v1    # "serviceState":Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;
    :cond_2
    :try_start_1
    sget-object v5, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTING:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    invoke-direct {p0, v5}, Lcom/oculus/platform/OVRServiceSynchronous;->setConnectionStatus(Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V

    .line 159
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    new-instance v4, Lcom/oculus/platform/OVRServiceSynchronous$2;

    invoke-direct {v4, p0}, Lcom/oculus/platform/OVRServiceSynchronous$2;-><init>(Lcom/oculus/platform/OVRServiceSynchronous;)V

    iput-object v4, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 178
    iget-object v4, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mContext:Landroid/content/Context;

    .line 179
    invoke-direct {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->getServiceIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 178
    invoke-virtual {v4, v5, v6, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 182
    sget-object v3, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    const-string v4, "Service connection failed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 184
    sget-object v3, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    invoke-direct {p0, v3}, Lcom/oculus/platform/OVRServiceSynchronous;->setConnectionStatus(Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 187
    goto :goto_0
.end method

.method private getConnectionStatus()Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;
    .locals 2

    .prologue
    .line 75
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous;, "Lcom/oculus/platform/OVRServiceSynchronous<TT;>;"
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mConnectionStatus:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getServiceIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 110
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous;, "Lcom/oculus/platform/OVRServiceSynchronous<TT;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, "serviceIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mComponent:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 113
    return-object v0
.end method

.method private setConnectionStatus(Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V
    .locals 2
    .param p1, "newConnectionStatus"    # Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    .prologue
    .line 81
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous;, "Lcom/oculus/platform/OVRServiceSynchronous<TT;>;"
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mConnectionStatus:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    .line 84
    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    if-ne p1, v0, :cond_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 88
    :cond_1
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private waitForConnectHelper(Z)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;
    .locals 6
    .param p1, "checkMainThread"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/oculus/platform/OVRServiceSynchronous",
            "<TT;>.ServiceBindResult;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous;, "Lcom/oculus/platform/OVRServiceSynchronous<TT;>;"
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 213
    sget-object v2, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    const-string v3, "This call will fail if the service unbinds."

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "You cannot bind to services on the main thread"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->connect()Z

    move-result v1

    .line 218
    .local v1, "success":Z
    if-nez v1, :cond_1

    .line 219
    new-instance v2, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    invoke-direct {v2, p0}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;-><init>(Lcom/oculus/platform/OVRServiceSynchronous;)V

    invoke-virtual {v2}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->error()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v2

    .line 234
    :goto_0
    return-object v2

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 223
    :try_start_0
    invoke-direct {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->getConnectionStatus()Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    move-result-object v2

    sget-object v4, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTING:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v4, :cond_2

    .line 225
    :try_start_1
    iget-object v2, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :cond_2
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->getConnectionStatus()Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    move-result-object v2

    sget-object v4, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    if-eq v2, v4, :cond_3

    .line 231
    new-instance v2, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    invoke-direct {v2, p0}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;-><init>(Lcom/oculus/platform/OVRServiceSynchronous;)V

    invoke-virtual {v2}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->error()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "exception":Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v2, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    const-string v4, "There was an error connecting to the service."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 234
    .end local v0    # "exception":Ljava/lang/InterruptedException;
    :cond_3
    new-instance v2, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    invoke-direct {v2, p0}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;-><init>(Lcom/oculus/platform/OVRServiceSynchronous;)V

    iget-object v4, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceInterface:Landroid/os/IInterface;

    iget-object v5, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v4, v5}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->success(Landroid/os/IInterface;Landroid/os/Messenger;)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public connectInBackground()V
    .locals 2

    .prologue
    .line 92
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous;, "Lcom/oculus/platform/OVRServiceSynchronous<TT;>;"
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceSynchronous$1;

    invoke-direct {v1, p0}, Lcom/oculus/platform/OVRServiceSynchronous$1;-><init>(Lcom/oculus/platform/OVRServiceSynchronous;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 194
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous;, "Lcom/oculus/platform/OVRServiceSynchronous<TT;>;"
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 198
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 199
    return-void
.end method

.method public getServiceAvailability(Landroid/content/pm/PackageManager;)Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;
    .locals 5
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 126
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous;, "Lcom/oculus/platform/OVRServiceSynchronous<TT;>;"
    invoke-direct {p0}, Lcom/oculus/platform/OVRServiceSynchronous;->getServiceIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 128
    .local v1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v2, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceAvailable matched: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mPackage:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/oculus/platform/OVRPackageUtils;->validateServiceSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->SIGNATURE_VERIFIED:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    .line 140
    :goto_0
    return-object v2

    .line 132
    :cond_0
    sget-object v2, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->SIGNATURE_INVALID:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/oculus/platform/OVRServiceSynchronous;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Impossible error, package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/platform/OVRServiceSynchronous;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    sget-object v2, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->NOT_FOUND:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    goto :goto_0

    .line 140
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    sget-object v2, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->NOT_FOUND:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    goto :goto_0
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
    .line 202
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous;, "Lcom/oculus/platform/OVRServiceSynchronous<TT;>;"
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
    .line 206
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous;, "Lcom/oculus/platform/OVRServiceSynchronous<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnectHelper(Z)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    return-object v0
.end method
