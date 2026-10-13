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

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;-><init>(Lcom/facebook/inject/MultiBinderSet;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 87
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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->mIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 94
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-virtual {v0}, Lcom/facebook/inject/MultiBinderSet;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 98
    :cond_0
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v0}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v0}, Lcom/facebook/inject/MultiBinderSet;->access$200(Lcom/facebook/inject/MultiBinderSet;)I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v0}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/facebook/inject/MultiBinderSet;->access$300()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 107
    :try_start_1
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v0}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 110
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 113
    :cond_1
    :try_start_3
    monitor-exit v3

    .line 136
    :goto_1
    return-object v0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v0}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/facebook/inject/MultiBinderSet;->access$300()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    .line 118
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v0}, Lcom/facebook/inject/MultiBinderSet;->access$204(Lcom/facebook/inject/MultiBinderSet;)I

    .line 120
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    :try_start_4
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v0}, Lcom/facebook/inject/MultiBinderSet;->access$500(Lcom/facebook/inject/MultiBinderSet;)Lcom/facebook/inject/MultiBindIndexedProvider;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v3}, Lcom/facebook/inject/MultiBinderSet;->access$400(Lcom/facebook/inject/MultiBinderSet;)Lcom/facebook/inject/Injector;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Lcom/facebook/inject/MultiBindIndexedProvider;->provide(Lcom/facebook/inject/Injector;I)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    .line 127
    iget-object v2, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v2}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 128
    :try_start_5
    iget-object v3, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v3}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v3

    aput-object v0, v3, v1

    .line 129
    iget-object v1, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v1}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 130
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 127
    :catchall_2
    move-exception v0

    iget-object v3, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v3}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 128
    :try_start_6
    iget-object v4, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v4}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v4

    aput-object v2, v4, v1

    .line 129
    iget-object v1, p0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;->this$0:Lcom/facebook/inject/MultiBinderSet;

    invoke-static {v1}, Lcom/facebook/inject/MultiBinderSet;->access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 130
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
