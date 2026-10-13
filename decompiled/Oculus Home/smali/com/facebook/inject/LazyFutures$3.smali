.class final Lcom/facebook/inject/LazyFutures$3;
.super Lcom/facebook/inject/LazyFuture;
.source "LazyFutures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/inject/LazyFutures;->transform(Lcom/facebook/inject/Lazy;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/facebook/inject/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/LazyFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$fromLazyFuture:Lcom/facebook/inject/Lazy;

.field final synthetic val$function:Lcom/google/common/util/concurrent/AsyncFunction;


# direct methods
.method constructor <init>(Lcom/facebook/inject/Lazy;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/facebook/inject/LazyFutures$3;->val$fromLazyFuture:Lcom/facebook/inject/Lazy;

    iput-object p2, p0, Lcom/facebook/inject/LazyFutures$3;->val$function:Lcom/google/common/util/concurrent/AsyncFunction;

    iput-object p3, p0, Lcom/facebook/inject/LazyFutures$3;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Lcom/facebook/inject/LazyFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected createFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/inject/LazyFutures$3;->val$fromLazyFuture:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/facebook/inject/LazyFutures$3;->val$function:Lcom/google/common/util/concurrent/AsyncFunction;

    iget-object v2, p0, Lcom/facebook/inject/LazyFutures$3;->val$executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
