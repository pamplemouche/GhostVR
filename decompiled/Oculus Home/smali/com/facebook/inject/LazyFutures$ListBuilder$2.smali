.class Lcom/facebook/inject/LazyFutures$ListBuilder$2;
.super Ljava/lang/Object;
.source "LazyFutures.java"

# interfaces
.implements Lcom/facebook/inject/Lazy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/inject/LazyFutures$ListBuilder;->add(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/facebook/inject/LazyFutures$ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/inject/Lazy",
        "<",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/inject/LazyFutures$ListBuilder;

.field final synthetic val$future:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/facebook/inject/LazyFutures$ListBuilder;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/inject/LazyFutures$ListBuilder;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/facebook/inject/LazyFutures$ListBuilder$2;->this$0:Lcom/facebook/inject/LazyFutures$ListBuilder;

    iput-object p2, p0, Lcom/facebook/inject/LazyFutures$ListBuilder$2;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/inject/LazyFutures$ListBuilder$2;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/facebook/inject/LazyFutures$ListBuilder$2;->get()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
