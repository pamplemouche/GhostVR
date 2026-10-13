.class public abstract Lcom/facebook/inject/LazyFuture;
.super Ljava/lang/Object;
.source "LazyFuture.java"

# interfaces
.implements Lcom/facebook/inject/Lazy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/inject/Lazy",
        "<",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Lcom/facebook/inject/LazyFuture;, "Lcom/facebook/inject/LazyFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/inject/LazyFuture;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method protected abstract createFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation
.end method

.method public declared-synchronized get()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/facebook/inject/LazyFuture;, "Lcom/facebook/inject/LazyFuture<TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/inject/LazyFuture;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/facebook/inject/LazyFuture;->createFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/LazyFuture;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/LazyFuture;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Lcom/facebook/inject/LazyFuture;, "Lcom/facebook/inject/LazyFuture<TV;>;"
    invoke-virtual {p0}, Lcom/facebook/inject/LazyFuture;->get()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
