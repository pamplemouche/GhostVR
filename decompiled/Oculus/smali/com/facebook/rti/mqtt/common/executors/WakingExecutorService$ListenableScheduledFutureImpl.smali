.class public Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;
.super Lcom/facebook/rti/mqtt/common/executors/HandlerDeadlockAwareForwardingFuture;
.source "WakingExecutorService.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture;
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListenableScheduledFutureImpl"
.end annotation

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
.field private final mListenableFutureTask:Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 353
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;->this$0:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    .line 354
    invoke-static {p1}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->access$100(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/common/executors/HandlerDeadlockAwareForwardingFuture;-><init>(Landroid/os/Handler;)V

    .line 355
    invoke-static {p2, p3}, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->create(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;->mListenableFutureTask:Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    .line 356
    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 348
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;->this$0:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    .line 349
    invoke-static {p1}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->access$100(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/common/executors/HandlerDeadlockAwareForwardingFuture;-><init>(Landroid/os/Handler;)V

    .line 350
    invoke-static {p2}, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;->mListenableFutureTask:Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    .line 351
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;->this$0:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    invoke-static {v0, p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->access$200(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;)V

    .line 386
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;->delegate()Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 342
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 1

    .prologue
    .line 365
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
    .line 370
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;->mListenableFutureTask:Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;->delegate()Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;->delegate()Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    return-object v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 1

    .prologue
    .line 360
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;->delegate()Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->run()V

    .line 381
    return-void
.end method
