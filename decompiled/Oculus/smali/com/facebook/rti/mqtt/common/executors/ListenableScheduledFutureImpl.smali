.class public Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;
.super Lcom/facebook/rti/mqtt/common/executors/HandlerDeadlockAwareForwardingFuture;
.source "ListenableScheduledFutureImpl.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/rti/mqtt/common/executors/HandlerDeadlockAwareForwardingFuture",
        "<TV;>;",
        "Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture",
        "<TV;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mListenableFuture:Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/common/executors/HandlerDeadlockAwareForwardingFuture;-><init>(Landroid/os/Handler;)V

    .line 28
    invoke-static {p2, p3}, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->create(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;->mListenableFuture:Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/common/executors/HandlerDeadlockAwareForwardingFuture;-><init>(Landroid/os/Handler;)V

    .line 23
    invoke-static {p2}, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;->mListenableFuture:Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    .line 24
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 16
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected delegate()Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;->mListenableFuture:Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;->delegate()Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;->delegate()Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    return-object v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;->delegate()Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->run()V

    .line 54
    return-void
.end method
