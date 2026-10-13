.class Lcom/facebook/inject/LazyFutures$ListBuilder$3$1;
.super Ljava/lang/Object;
.source "LazyFutures.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/inject/LazyFutures$ListBuilder$3;->createFuture()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/facebook/inject/Lazy",
        "<",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/inject/LazyFutures$ListBuilder$3;


# direct methods
.method constructor <init>(Lcom/facebook/inject/LazyFutures$ListBuilder$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/facebook/inject/LazyFutures$ListBuilder$3;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/facebook/inject/LazyFutures$ListBuilder$3$1;->this$1:Lcom/facebook/inject/LazyFutures$ListBuilder$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/facebook/inject/Lazy;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "input":Lcom/facebook/inject/Lazy;, "Lcom/facebook/inject/Lazy<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Object;>;>;"
    invoke-interface {p1}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    check-cast p1, Lcom/facebook/inject/Lazy;

    invoke-virtual {p0, p1}, Lcom/facebook/inject/LazyFutures$ListBuilder$3$1;->apply(Lcom/facebook/inject/Lazy;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
