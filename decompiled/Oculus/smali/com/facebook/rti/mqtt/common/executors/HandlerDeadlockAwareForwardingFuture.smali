.class public abstract Lcom/facebook/rti/mqtt/common/executors/HandlerDeadlockAwareForwardingFuture;
.super Lcom/facebook/rti/mqtt/common/executors/ForwardingFuture;
.source "HandlerDeadlockAwareForwardingFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/rti/mqtt/common/executors/ForwardingFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/ForwardingFuture;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/executors/HandlerDeadlockAwareForwardingFuture;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method private checkDeadlock()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/executors/HandlerDeadlockAwareForwardingFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const-string v0, "Must not call get() function from this Handler thread. Will deadlock!"

    .line 51
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    return-void
.end method

.method private isOnHandlerThread()Z
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/HandlerDeadlockAwareForwardingFuture;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/HandlerDeadlockAwareForwardingFuture;->isOnHandlerThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/HandlerDeadlockAwareForwardingFuture;->checkDeadlock()V

    .line 60
    :cond_0
    invoke-super {p0}, Lcom/facebook/rti/mqtt/common/executors/ForwardingFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/HandlerDeadlockAwareForwardingFuture;->isOnHandlerThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/HandlerDeadlockAwareForwardingFuture;->checkDeadlock()V

    .line 69
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/common/executors/ForwardingFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
