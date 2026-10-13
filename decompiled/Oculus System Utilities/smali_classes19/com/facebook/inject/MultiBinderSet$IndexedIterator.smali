.class Lcom/facebook/inject/MultiBinderSet$IndexedIterator;
.super Ljava/lang/Object;
.source "MultiBinderSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/inject/MultiBinderSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndexedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/facebook/inject/MultiBinderSet;


# direct methods
.method private constructor <init>(Lcom/facebook/inject/MultiBinderSet;)V
    .locals 2

    .prologue
    .line 81
    .local p0, "this":Lcom/facebook/inject/MultiBinderSet$IndexedIterator;, "Lcom/facebook/inject/MultiBinderSet<TT;>.IndexedIterator;"
    iput-object p1, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->mIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/inject/MultiBinderSet;Lcom/facebook/inject/MultiBinderSet$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/inject/MultiBinderSet;
    .param p2, "x1"    # Lcom/facebook/inject/MultiBinderSet$1;

    .prologue
    .line 81
    .local p0, "this":Lcom/facebook/inject/MultiBinderSet$IndexedIterator;, "Lcom/facebook/inject/MultiBinderSet<TT;>.IndexedIterator;"
    invoke-direct {p0, p1}, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;-><init>(Lcom/facebook/inject/MultiBinderSet;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 87
    .local p0, "this":Lcom/facebook/inject/MultiBinderSet$IndexedIterator;, "Lcom/facebook/inject/MultiBinderSet<TT;>.IndexedIterator;"
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->mIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-virtual {v1}, Lcom/facebook/inject/MultiBinderSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/facebook/inject/MultiBinderSet$IndexedIterator;, "Lcom/facebook/inject/MultiBinderSet<TT;>.IndexedIterator;"
    iget-object v3, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->mIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 94
    .local v1, "idx":I
    iget-object v3, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-virtual {v3}, Lcom/facebook/inject/MultiBinderSet;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 95
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 98
    :cond_0
    const/4 v2, 0x0

    .line 102
    .local v2, "item":Ljava/lang/Object;
    iget-object v3, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v3}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 103
    :try_start_0
    iget-object v3, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v3}, Lcom/facebook/inject/MultiBinderSet;->access$200(Lcom/facebook/inject/MultiBinderSet;)I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 104
    .end local v2    # "item":Ljava/lang/Object;
    :goto_0
    iget-object v3, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v3}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v2, v3, v1

    .restart local v2    # "item":Ljava/lang/Object;
    invoke-static {}, Lcom/facebook/inject/MultiBinderSet;->access$300()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 107
    :try_start_1
    iget-object v3, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v3}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 110
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 120
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "item":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 113
    .restart local v2    # "item":Ljava/lang/Object;
    :cond_1
    :try_start_3
    monitor-exit v4

    .line 136
    :goto_1
    return-object v2

    .line 117
    :cond_2
    iget-object v3, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v3}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lcom/facebook/inject/MultiBinderSet;->access$300()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v1

    .line 118
    iget-object v3, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v3}, Lcom/facebook/inject/MultiBinderSet;->access$204(Lcom/facebook/inject/MultiBinderSet;)I

    .line 120
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    :try_start_4
    iget-object v3, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v3}, Lcom/facebook/inject/MultiBinderSet;->access$500(Lcom/facebook/inject/MultiBinderSet;)Lcom/facebook/inject/MultiBindIndexedProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v4}, Lcom/facebook/inject/MultiBinderSet;->access$400(Lcom/facebook/inject/MultiBinderSet;)Lcom/facebook/inject/Injector;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/facebook/inject/MultiBindIndexedProvider;->provide(Lcom/facebook/inject/Injector;I)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v3}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 128
    :try_start_5
    iget-object v3, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v3}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v3

    aput-object v2, v3, v1

    .line 129
    iget-object v3, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v3}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 130
    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 127
    :catchall_2
    move-exception v3

    iget-object v4, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v4}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 128
    :try_start_6
    iget-object v5, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v5}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v5

    aput-object v2, v5, v1

    .line 129
    iget-object v5, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v5}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 130
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3

    :catchall_3
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v3
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lcom/facebook/inject/MultiBinderSet$IndexedIterator;, "Lcom/facebook/inject/MultiBinderSet<TT;>.IndexedIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
