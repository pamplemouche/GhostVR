.class public Lcom/oculus/panellib/ThreadExecutor;
.super Ljava/lang/Object;
.source "ThreadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panellib/ThreadExecutor$UiThreadExecutor;
    }
.end annotation


# static fields
.field private static final MAXIMUM_POOL_SIZE:I = 0x4

.field private static sInstance:Lcom/oculus/panellib/ThreadExecutor;


# instance fields
.field private final mExecutorService:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

.field private final mUiThreadExecutor:Lcom/oculus/panellib/ThreadExecutor$UiThreadExecutor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x4

    .line 34
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panellib/ThreadExecutor;->mExecutorService:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    .line 35
    new-instance v0, Lcom/oculus/panellib/ThreadExecutor$UiThreadExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oculus/panellib/ThreadExecutor$UiThreadExecutor;-><init>(Lcom/oculus/panellib/ThreadExecutor$1;)V

    iput-object v0, p0, Lcom/oculus/panellib/ThreadExecutor;->mUiThreadExecutor:Lcom/oculus/panellib/ThreadExecutor$UiThreadExecutor;

    return-void
.end method

.method public static getInstance()Lcom/oculus/panellib/ThreadExecutor;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/oculus/panellib/ThreadExecutor;->sInstance:Lcom/oculus/panellib/ThreadExecutor;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/oculus/panellib/ThreadExecutor;

    invoke-direct {v0}, Lcom/oculus/panellib/ThreadExecutor;-><init>()V

    sput-object v0, Lcom/oculus/panellib/ThreadExecutor;->sInstance:Lcom/oculus/panellib/ThreadExecutor;

    .line 41
    :cond_0
    sget-object v0, Lcom/oculus/panellib/ThreadExecutor;->sInstance:Lcom/oculus/panellib/ThreadExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableScheduledFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;JLcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public execute(Ljava/util/concurrent/Callable;I)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    .locals 3
    .param p2, "delayMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;I)",
            "Lcom/google/common/util/concurrent/ListenableScheduledFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    int-to-long v0, p2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;JLcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public execute(Ljava/util/concurrent/Callable;JLcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    .locals 4
    .param p2, "delayMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;J",
            "Lcom/google/common/util/concurrent/FutureCallback",
            "<TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableScheduledFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p4, "callback":Lcom/google/common/util/concurrent/FutureCallback;, "Lcom/google/common/util/concurrent/FutureCallback<TT;>;"
    iget-object v1, p0, Lcom/oculus/panellib/ThreadExecutor;->mExecutorService:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object v0

    .line 78
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableScheduledFuture;, "Lcom/google/common/util/concurrent/ListenableScheduledFuture<TT;>;"
    if-eqz p4, :cond_0

    .line 79
    iget-object v1, p0, Lcom/oculus/panellib/ThreadExecutor;->mUiThreadExecutor:Lcom/oculus/panellib/ThreadExecutor$UiThreadExecutor;

    invoke-static {v0, p4, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 81
    :cond_0
    return-object v0
.end method

.method public execute(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lcom/google/common/util/concurrent/FutureCallback",
            "<TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableScheduledFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p2, "callback":Lcom/google/common/util/concurrent/FutureCallback;, "Lcom/google/common/util/concurrent/FutureCallback<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;JLcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object v0

    return-object v0
.end method
