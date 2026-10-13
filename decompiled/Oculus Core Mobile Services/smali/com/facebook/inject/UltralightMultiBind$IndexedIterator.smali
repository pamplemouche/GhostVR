.class Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;
.super Ljava/lang/Object;
.source "UltralightMultiBind.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/inject/UltralightMultiBind;
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

.field final synthetic this$0:Lcom/facebook/inject/UltralightMultiBind;


# direct methods
.method private constructor <init>(Lcom/facebook/inject/UltralightMultiBind;)V
    .locals 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->mIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/inject/UltralightMultiBind;Lcom/facebook/inject/UltralightMultiBind$1;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;-><init>(Lcom/facebook/inject/UltralightMultiBind;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->mIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    invoke-virtual {v1}, Lcom/facebook/inject/UltralightMultiBind;->size()I

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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 96
    const-string v0, "MultiBind_next"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;Ljava/lang/Class;)V

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->mIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 100
    iget-object v0, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    invoke-virtual {v0}, Lcom/facebook/inject/UltralightMultiBind;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 101
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0

    .line 104
    :cond_0
    const/4 v2, 0x0

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    invoke-static {v0}, Lcom/facebook/inject/UltralightMultiBind;->access$100(Lcom/facebook/inject/UltralightMultiBind;)[Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    iget-object v0, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    invoke-static {v0}, Lcom/facebook/inject/UltralightMultiBind;->access$200(Lcom/facebook/inject/UltralightMultiBind;)I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    invoke-static {v0}, Lcom/facebook/inject/UltralightMultiBind;->access$100(Lcom/facebook/inject/UltralightMultiBind;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/facebook/inject/UltralightMultiBind;->access$300()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 113
    :try_start_3
    iget-object v0, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    invoke-static {v0}, Lcom/facebook/inject/UltralightMultiBind;->access$100(Lcom/facebook/inject/UltralightMultiBind;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 116
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 126
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 119
    :cond_1
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 147
    :goto_1
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    .line 123
    :cond_2
    :try_start_7
    iget-object v0, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    invoke-static {v0}, Lcom/facebook/inject/UltralightMultiBind;->access$100(Lcom/facebook/inject/UltralightMultiBind;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/facebook/inject/UltralightMultiBind;->access$300()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    .line 124
    iget-object v0, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    invoke-static {v0}, Lcom/facebook/inject/UltralightMultiBind;->access$204(Lcom/facebook/inject/UltralightMultiBind;)I

    .line 126
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 131
    :try_start_8
    iget-object v0, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    invoke-static {v0}, Lcom/facebook/inject/UltralightMultiBind;->access$400(Lcom/facebook/inject/UltralightMultiBind;)[I

    move-result-object v0

    aget v0, v0, v1

    iget-object v3, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    invoke-static {v3}, Lcom/facebook/inject/UltralightMultiBind;->access$500(Lcom/facebook/inject/UltralightMultiBind;)Lcom/facebook/inject/InjectorLike;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/facebook/ultralight/UL$factorymap;->get(ILcom/facebook/inject/InjectorLike;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v0

    .line 136
    :try_start_9
    iget-object v2, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    invoke-static {v2}, Lcom/facebook/inject/UltralightMultiBind;->access$100(Lcom/facebook/inject/UltralightMultiBind;)[Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 137
    :try_start_a
    iget-object v3, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    invoke-static {v3}, Lcom/facebook/inject/UltralightMultiBind;->access$100(Lcom/facebook/inject/UltralightMultiBind;)[Ljava/lang/Object;

    move-result-object v3

    aput-object v0, v3, v1

    .line 138
    iget-object v1, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    invoke-static {v1}, Lcom/facebook/inject/UltralightMultiBind;->access$100(Lcom/facebook/inject/UltralightMultiBind;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 139
    monitor-exit v2

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 132
    :catch_1
    move-exception v0

    .line 133
    :try_start_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid binding id %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    .line 134
    invoke-static {v7}, Lcom/facebook/inject/UltralightMultiBind;->access$400(Lcom/facebook/inject/UltralightMultiBind;)[I

    move-result-object v7

    aget v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 136
    :catchall_3
    move-exception v0

    :try_start_d
    iget-object v3, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    invoke-static {v3}, Lcom/facebook/inject/UltralightMultiBind;->access$100(Lcom/facebook/inject/UltralightMultiBind;)[Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 137
    :try_start_e
    iget-object v4, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    invoke-static {v4}, Lcom/facebook/inject/UltralightMultiBind;->access$100(Lcom/facebook/inject/UltralightMultiBind;)[Ljava/lang/Object;

    move-result-object v4

    aput-object v2, v4, v1

    .line 138
    iget-object v1, p0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;->this$0:Lcom/facebook/inject/UltralightMultiBind;

    invoke-static {v1}, Lcom/facebook/inject/UltralightMultiBind;->access$100(Lcom/facebook/inject/UltralightMultiBind;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 139
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :catchall_4
    move-exception v0

    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
