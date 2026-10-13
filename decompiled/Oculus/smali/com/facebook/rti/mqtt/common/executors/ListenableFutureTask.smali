.class public Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "ListenableFutureTask.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Lcom/facebook/rti/mqtt/common/executors/ListenableFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final executionList:Lcom/facebook/rti/mqtt/common/executors/ExecutionList;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 40
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->executionList:Lcom/facebook/rti/mqtt/common/executors/ExecutionList;

    .line 73
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 40
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->executionList:Lcom/facebook/rti/mqtt/common/executors/ExecutionList;

    .line 69
    return-void
.end method

.method public static create(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    invoke-direct {v0, p0, p1}, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static create(Ljava/util/concurrent/Callable;)Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method protected done()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->executionList:Lcom/facebook/rti/mqtt/common/executors/ExecutionList;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;->execute()V

    .line 84
    return-void
.end method
