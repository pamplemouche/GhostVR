.class Lcom/facebook/inject/LazyFutures$ListBuilder$3;
.super Lcom/facebook/inject/LazyFuture;
.source "LazyFutures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/inject/LazyFutures$ListBuilder;->build()Lcom/facebook/inject/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/LazyFuture",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/inject/LazyFutures$ListBuilder;

.field final synthetic val$lazies:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/facebook/inject/LazyFutures$ListBuilder;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/inject/LazyFutures$ListBuilder;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/facebook/inject/LazyFutures$ListBuilder$3;->this$0:Lcom/facebook/inject/LazyFutures$ListBuilder;

    iput-object p2, p0, Lcom/facebook/inject/LazyFutures$ListBuilder$3;->val$lazies:Lcom/google/common/collect/ImmutableList;

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
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v1, p0, Lcom/facebook/inject/LazyFutures$ListBuilder$3;->val$lazies:Lcom/google/common/collect/ImmutableList;

    new-instance v2, Lcom/facebook/inject/LazyFutures$ListBuilder$3$1;

    invoke-direct {v2, p0}, Lcom/facebook/inject/LazyFutures$ListBuilder$3$1;-><init>(Lcom/facebook/inject/LazyFutures$ListBuilder$3;)V

    .line 163
    invoke-static {v1, v2}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    .line 172
    .local v0, "futures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Object;>;>;"
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->allAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method
