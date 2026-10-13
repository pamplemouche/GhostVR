.class public Lcom/oculus/vrshell/panels/UiThreadExecutor;
.super Ljava/lang/Object;
.source "UiThreadExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static sInstance:Lcom/oculus/vrshell/panels/UiThreadExecutor;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oculus/vrshell/panels/UiThreadExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/oculus/vrshell/panels/UiThreadExecutor;
    .locals 2

    const-class v0, Lcom/oculus/vrshell/panels/UiThreadExecutor;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/oculus/vrshell/panels/UiThreadExecutor;->sInstance:Lcom/oculus/vrshell/panels/UiThreadExecutor;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/oculus/vrshell/panels/UiThreadExecutor;

    invoke-direct {v1}, Lcom/oculus/vrshell/panels/UiThreadExecutor;-><init>()V

    sput-object v1, Lcom/oculus/vrshell/panels/UiThreadExecutor;->sInstance:Lcom/oculus/vrshell/panels/UiThreadExecutor;

    .line 27
    :cond_0
    sget-object v1, Lcom/oculus/vrshell/panels/UiThreadExecutor;->sInstance:Lcom/oculus/vrshell/panels/UiThreadExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setInstance(Lcom/oculus/vrshell/panels/UiThreadExecutor;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 47
    sput-object p0, Lcom/oculus/vrshell/panels/UiThreadExecutor;->sInstance:Lcom/oculus/vrshell/panels/UiThreadExecutor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/oculus/vrshell/panels/UiThreadExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 39
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/UiThreadExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
