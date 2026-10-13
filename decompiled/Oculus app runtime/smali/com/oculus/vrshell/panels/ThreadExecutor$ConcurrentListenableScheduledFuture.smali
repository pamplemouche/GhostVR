.class public Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;
.super Ljava/lang/Object;
.source "ThreadExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/panels/ThreadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConcurrentListenableScheduledFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/ScheduledFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mBaseFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mFailure:Ljava/lang/Throwable;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/vrshell/panels/ThreadExecutor$Listener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oculus/vrshell/panels/ThreadExecutor;


# direct methods
.method public constructor <init>(Lcom/oculus/vrshell/panels/ThreadExecutor;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Callable;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J)V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->this$0:Lcom/oculus/vrshell/panels/ThreadExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p2, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mListeners:Ljava/util/List;

    .line 92
    new-instance v0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$1;-><init>(Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;Lcom/oculus/vrshell/panels/ThreadExecutor;Ljava/util/concurrent/Callable;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 93
    invoke-interface {p2, v0, p4, p5, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mBaseFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic access$002(Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mFailure:Ljava/lang/Throwable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;Ljava/lang/Throwable;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;Ljava/lang/Object;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized onFailure(Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;

    .line 158
    invoke-direct {p0, v1, p1}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->runListenerFailure(Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 160
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;

    .line 147
    invoke-direct {p0, v1, p1}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->runListenerSuccess(Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 149
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private runListenerFailure(Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/vrshell/panels/ThreadExecutor$Listener<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$3;-><init>(Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runListenerSuccess(Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/vrshell/panels/ThreadExecutor$Listener<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$2;-><init>(Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mBaseFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 78
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mBaseFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mBaseFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mBaseFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ScheduledFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mBaseFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mBaseFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mBaseFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized listen(Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/vrshell/panels/ThreadExecutor$Listener<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 125
    :try_start_1
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :try_start_2
    iget-object v1, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mFailure:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mFailure:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->runListenerFailure(Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->runListenerSuccess(Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 127
    :try_start_3
    invoke-direct {p0, p1, v0}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->runListenerFailure(Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 137
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 120
    :cond_2
    :try_start_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method
