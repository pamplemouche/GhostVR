.class public Lcom/facebook/inject/LazyFutures;
.super Ljava/lang/Object;
.source "LazyFutures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/inject/LazyFutures$ListBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static listBuilder()Lcom/facebook/inject/LazyFutures$ListBuilder;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/facebook/inject/LazyFutures$ListBuilder;

    invoke-direct {v0}, Lcom/facebook/inject/LazyFutures$ListBuilder;-><init>()V

    return-object v0
.end method

.method public static transform(Lcom/facebook/inject/Lazy;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/facebook/inject/Lazy;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/inject/Lazy",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TE;>;>;",
            "Lcom/google/common/base/Function",
            "<TE;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "fromLazyFuture":Lcom/facebook/inject/Lazy;, "Lcom/facebook/inject/Lazy<+Lcom/google/common/util/concurrent/ListenableFuture<TE;>;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<TE;TT;>;"
    new-instance v0, Lcom/facebook/inject/LazyFutures$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/inject/LazyFutures$2;-><init>(Lcom/facebook/inject/Lazy;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static transform(Lcom/facebook/inject/Lazy;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/facebook/inject/Lazy;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/inject/Lazy",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TE;>;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<TE;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "fromLazyFuture":Lcom/facebook/inject/Lazy;, "Lcom/facebook/inject/Lazy<+Lcom/google/common/util/concurrent/ListenableFuture<TE;>;>;"
    .local p1, "function":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<TE;TT;>;"
    new-instance v0, Lcom/facebook/inject/LazyFutures$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/inject/LazyFutures$3;-><init>(Lcom/facebook/inject/Lazy;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/facebook/inject/Lazy;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TE;>;",
            "Lcom/google/common/base/Function",
            "<TE;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "fromFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TE;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<TE;TT;>;"
    invoke-static {p0}, Lcom/facebook/inject/LazyFutures;->wrap(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/facebook/inject/LazyFutures;->transform(Lcom/facebook/inject/Lazy;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/facebook/inject/Lazy;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TE;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<TE;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "fromFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TE;>;"
    .local p1, "function":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<TE;TT;>;"
    invoke-static {p0}, Lcom/facebook/inject/LazyFutures;->wrap(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/facebook/inject/LazyFutures;->transform(Lcom/facebook/inject/Lazy;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/facebook/inject/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;)",
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT;>;"
    new-instance v0, Lcom/facebook/inject/LazyFutures$1;

    invoke-direct {v0, p0}, Lcom/facebook/inject/LazyFutures$1;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method
