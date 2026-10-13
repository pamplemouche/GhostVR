.class public Lcom/oculus/common/init/AppInitLock;
.super Ljava/lang/Object;
.source "AppInitLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/common/init/AppInitLock$Listener;
    }
.end annotation


# instance fields
.field private initialized:Z

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/common/init/AppInitLock$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/common/init/AppInitLock;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/common/init/AppInitLock;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/oculus/common/init/AppInitLock;->notifyListenersOnUiThread()V

    return-void
.end method

.method private notifyListeners()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/oculus/common/init/AppInitLock$1;

    invoke-direct {v0, p0}, Lcom/oculus/common/init/AppInitLock$1;-><init>(Lcom/oculus/common/init/AppInitLock;)V

    invoke-static {v0}, Lcom/oculus/util/thread/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method private notifyListenersOnUiThread()V
    .locals 2

    .prologue
    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/oculus/common/init/AppInitLock;->listeners:Ljava/util/ArrayList;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oculus/common/init/AppInitLock;->listeners:Ljava/util/ArrayList;

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/common/init/AppInitLock$Listener;

    .line 89
    invoke-virtual {v0}, Lcom/oculus/common/init/AppInitLock$Listener;->onInitialized()V

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyAppInitializationComplete()V
    .locals 1

    .prologue
    .line 30
    monitor-enter p0

    .line 31
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/oculus/common/init/AppInitLock;->initialized:Z

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-direct {p0}, Lcom/oculus/common/init/AppInitLock;->notifyListeners()V

    .line 35
    return-void

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized waitForInitialization()V
    .locals 2

    .prologue
    .line 42
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/oculus/common/init/AppInitLock;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 44
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 49
    :cond_0
    monitor-exit p0

    return-void
.end method
