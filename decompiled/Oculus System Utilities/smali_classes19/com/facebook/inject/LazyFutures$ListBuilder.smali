.class public Lcom/facebook/inject/LazyFutures$ListBuilder;
.super Ljava/lang/Object;
.source "LazyFutures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/inject/LazyFutures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBuilder"
.end annotation


# instance fields
.field private final mLazies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/LazyFutures$ListBuilder;->mLazies:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/facebook/inject/Lazy;)Lcom/facebook/inject/LazyFutures$ListBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/Lazy",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;>;)",
            "Lcom/facebook/inject/LazyFutures$ListBuilder;"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "lazyFuture":Lcom/facebook/inject/Lazy;, "Lcom/facebook/inject/Lazy<+Lcom/google/common/util/concurrent/ListenableFuture<*>;>;"
    iget-object v0, p0, Lcom/facebook/inject/LazyFutures$ListBuilder;->mLazies:Ljava/util/List;

    new-instance v1, Lcom/facebook/inject/LazyFutures$ListBuilder$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/inject/LazyFutures$ListBuilder$1;-><init>(Lcom/facebook/inject/LazyFutures$ListBuilder;Lcom/facebook/inject/Lazy;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-object p0
.end method

.method public add(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/facebook/inject/LazyFutures$ListBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;)",
            "Lcom/facebook/inject/LazyFutures$ListBuilder;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    iget-object v0, p0, Lcom/facebook/inject/LazyFutures$ListBuilder;->mLazies:Ljava/util/List;

    new-instance v1, Lcom/facebook/inject/LazyFutures$ListBuilder$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/inject/LazyFutures$ListBuilder$2;-><init>(Lcom/facebook/inject/LazyFutures$ListBuilder;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-object p0
.end method

.method public build()Lcom/facebook/inject/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v1, p0, Lcom/facebook/inject/LazyFutures$ListBuilder;->mLazies:Ljava/util/List;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 159
    .local v0, "lazies":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/inject/Lazy<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Object;>;>;>;"
    new-instance v1, Lcom/facebook/inject/LazyFutures$ListBuilder$3;

    invoke-direct {v1, p0, v0}, Lcom/facebook/inject/LazyFutures$ListBuilder$3;-><init>(Lcom/facebook/inject/LazyFutures$ListBuilder;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public buildAndTransform(Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/facebook/inject/Lazy;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<Ljava/util/List<Ljava/lang/Object;>;TT;>;"
    invoke-virtual {p0}, Lcom/facebook/inject/LazyFutures$ListBuilder;->build()Lcom/facebook/inject/Lazy;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/facebook/inject/LazyFutures;->transform(Lcom/facebook/inject/Lazy;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public buildAndTransform(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/facebook/inject/Lazy;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "function":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<Ljava/util/List<Ljava/lang/Object;>;TT;>;"
    invoke-virtual {p0}, Lcom/facebook/inject/LazyFutures$ListBuilder;->build()Lcom/facebook/inject/Lazy;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/facebook/inject/LazyFutures;->transform(Lcom/facebook/inject/Lazy;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    return-object v0
.end method
