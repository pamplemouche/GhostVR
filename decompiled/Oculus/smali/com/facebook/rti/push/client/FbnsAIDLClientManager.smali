.class public Lcom/facebook/rti/push/client/FbnsAIDLClientManager;
.super Ljava/lang/Object;
.source "FbnsAIDLClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mFbnsAIDLService:Lcom/facebook/push/fbns/ipc/IFbnsAIDLService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mState:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mUseCount:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mFbnsAIDLService:Lcom/facebook/push/fbns/ipc/IFbnsAIDLService;

    .line 64
    sget-object v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;->UNBOUND:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mState:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mUseCount:I

    .line 72
    new-instance v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$1;

    invoke-direct {v0, p0}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$1;-><init>(Lcom/facebook/rti/push/client/FbnsAIDLClientManager;)V

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mConnection:Landroid/content/ServiceConnection;

    .line 100
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 101
    iput-object p1, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/rti/push/client/FbnsAIDLClientManager;Lcom/facebook/push/fbns/ipc/IFbnsAIDLService;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->onConnected(Lcom/facebook/push/fbns/ipc/IFbnsAIDLService;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/rti/push/client/FbnsAIDLClientManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->onDisconnected()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/rti/push/client/FbnsAIDLClientManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->waitUntilBound()V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/rti/push/client/FbnsAIDLClientManager;Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->callInternal(Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/rti/push/client/FbnsAIDLClientManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->close()V

    return-void
.end method

.method private callInternal(Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;
    .locals 6

    .prologue
    .line 142
    new-instance v0, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;-><init>(Landroid/os/Bundle;)V

    .line 144
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->ensureService()Lcom/facebook/push/fbns/ipc/IFbnsAIDLService;

    move-result-object v1

    .line 146
    iget v2, p1, Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;->mOperationType:I

    invoke-static {v2}, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->fromOperationType(I)Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->hasReturn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    sget-object v2, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->TAG:Ljava/lang/String;

    const-string v3, "Sending getRequest: requestType: %d Inside Bundle: %s"

    iget v4, p1, Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;->mOperationType:I

    .line 150
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 151
    invoke-virtual {p1}, Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-static {v2, v3, v4, v5}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    invoke-interface {v1, p1}, Lcom/facebook/push/fbns/ipc/IFbnsAIDLService;->query(Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 154
    :cond_0
    sget-object v2, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->TAG:Ljava/lang/String;

    const-string v3, "Sending setRequest: requestType: %d Inside Bundle: %s"

    iget v4, p1, Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;->mOperationType:I

    .line 157
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 158
    invoke-virtual {p1}, Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-static {v2, v3, v4, v5}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    invoke-interface {v1, p1}, Lcom/facebook/push/fbns/ipc/IFbnsAIDLService;->update(Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    sget-object v2, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->TAG:Ljava/lang/String;

    const-string v3, "Fbns AIDL request got DeadObjectException"

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 163
    :catch_1
    move-exception v1

    .line 164
    sget-object v2, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->TAG:Ljava/lang/String;

    const-string v3, "Fbns AIDL request got RemoteException"

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private close()V
    .locals 6

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 261
    monitor-enter p0

    .line 262
    :try_start_0
    iget v1, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mUseCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mUseCount:I

    .line 263
    if-nez v1, :cond_0

    .line 264
    const/4 v0, 0x1

    .line 265
    invoke-direct {p0}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->onDisconnected()V

    .line 266
    iget-object v2, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 268
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    if-eqz v0, :cond_1

    .line 271
    sget-object v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->TAG:Ljava/lang/String;

    const-string v2, "Do unbindService: useCount %d threadId %d"

    .line 274
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 275
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 271
    invoke-static {v0, v2, v1, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 280
    :goto_0
    return-void

    .line 268
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 277
    :cond_1
    sget-object v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "still in use: useCount %d threadId %d"

    .line 278
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 277
    invoke-static {v0, v2, v1, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private declared-synchronized ensureService()Lcom/facebook/push/fbns/ipc/IFbnsAIDLService;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "AIDLService is not bound"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 250
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mFbnsAIDLService:Lcom/facebook/push/fbns/ipc/IFbnsAIDLService;

    .line 251
    if-nez v0, :cond_1

    .line 252
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "AIDLService is null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :cond_1
    monitor-exit p0

    return-object v0
.end method

.method private declared-synchronized isServiceBinding()Z
    .locals 2

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mState:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    sget-object v1, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;->BINDING:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isServiceBound()Z
    .locals 2

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mState:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    sget-object v1, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;->BOUND:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onConnected(Lcom/facebook/push/fbns/ipc/IFbnsAIDLService;)V
    .locals 1

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mFbnsAIDLService:Lcom/facebook/push/fbns/ipc/IFbnsAIDLService;

    .line 292
    sget-object v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;->BOUND:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mState:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onConnecting(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 304
    monitor-enter p0

    const/4 v0, 0x0

    .line 307
    :try_start_0
    iget-object v2, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    sget-object v2, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;->BINDING:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    iput-object v2, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mState:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    .line 309
    sget-object v2, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->TAG:Ljava/lang/String;

    const-string v3, "open success: moved to BINDING state"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :goto_0
    monitor-exit p0

    return v0

    .line 311
    :cond_0
    :try_start_1
    sget-object v2, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->TAG:Ljava/lang/String;

    const-string v3, "open failed: bindService failure, do unbind to let service shutdown"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    :try_start_2
    sget-object v2, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->TAG:Ljava/lang/String;

    const-string v3, "open failed: bindService throw SecurityException"

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 316
    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onDisconnected()V
    .locals 1

    .prologue
    .line 322
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mFbnsAIDLService:Lcom/facebook/push/fbns/ipc/IFbnsAIDLService;

    .line 323
    sget-object v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;->UNBOUND:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mState:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private open()Z
    .locals 6

    .prologue
    .line 216
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 217
    sget-object v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->TAG:Ljava/lang/String;

    const-string v1, "This operation can\'t be run on UI thread"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    .line 221
    :cond_0
    sget-object v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->TAG:Ljava/lang/String;

    const-string v1, "Trying to move to BINDING state threadId: %d time: %d"

    .line 224
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 221
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->getLeaderPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Landroid/content/ComponentName;

    .line 229
    invoke-static {v0}, Lcom/facebook/rti/push/service/FbnsService;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/push/fbns/ipc/IFbnsAIDLService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 232
    new-instance v1, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    iget-object v2, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->appendAuthBundleToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 233
    invoke-direct {p0, v0}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->onConnecting(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized waitUntilBound()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 174
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mUseCount:I

    .line 178
    const-wide/16 v0, 0xc8

    .line 179
    :goto_0
    invoke-direct {p0}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->isServiceBound()Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    .line 181
    sget-object v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->TAG:Ljava/lang/String;

    const-string v1, "Max Try reached for binding to FbnsAIDLService, threadId %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 184
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 181
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_0
    monitor-exit p0

    return-void

    .line 187
    :cond_1
    :try_start_1
    sget-object v3, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->TAG:Ljava/lang/String;

    const-string v4, "Trying to bind to FbnsAIDLService, the %d try, threadId: %d, time: %d"

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 191
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 187
    invoke-static {v3, v4, v5, v6, v7}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    invoke-direct {p0}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->isServiceBinding()Z

    move-result v3

    if-nez v3, :cond_2

    .line 197
    invoke-direct {p0}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->open()Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    const-wide/16 v4, 0x2

    mul-long/2addr v0, v4

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public callAsync(Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$2;-><init>(Lcom/facebook/rti/push/client/FbnsAIDLClientManager;Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)V

    .line 112
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 126
    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 328
    sget-object v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->TAG:Ljava/lang/String;

    const-string v1, "finalize: shutting down threadpool"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 330
    return-void
.end method

.method varargs runAsync([Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)V
    .locals 3

    .prologue
    .line 136
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 137
    invoke-virtual {p0, v2}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->callAsync(Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)Ljava/util/concurrent/Future;

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method
