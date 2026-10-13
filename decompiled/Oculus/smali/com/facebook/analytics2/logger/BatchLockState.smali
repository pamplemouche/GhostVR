.class abstract Lcom/facebook/analytics2/logger/BatchLockState;
.super Ljava/lang/Object;
.source "BatchLockState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field protected final mLockedBatches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT;",
            "Lcom/facebook/analytics2/logger/BatchLockState",
            "<TT;>.Batch",
            "Lock;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState;->mLockedBatches:Ljava/util/HashMap;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/analytics2/logger/BatchLockState;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/BatchLockState;->release(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V

    return-void
.end method

.method public static getInstance(Z)Lcom/facebook/analytics2/logger/BatchLockState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/facebook/analytics2/logger/BatchLockState",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    if-eqz p0, :cond_0

    .line 26
    invoke-static {}, Lcom/facebook/analytics2/logger/CrossProcessBatchLockState;->getInstance()Lcom/facebook/analytics2/logger/BatchLockState;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/analytics2/logger/InProcessBatchLockState;->getInstance()Lcom/facebook/analytics2/logger/BatchLockState;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized release(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/analytics2/logger/BatchLockState",
            "<TT;>.Batch",
            "Lock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->access$010(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)I

    .line 51
    invoke-static {p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->access$000(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)I

    move-result v0

    if-gez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalance calls to acquire/release"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 54
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->access$000(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)I

    move-result v0

    if-nez v0, :cond_1

    .line 55
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->doRelease()V

    .line 56
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState;->mLockedBatches:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :cond_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized acquire(Ljava/lang/Object;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/facebook/analytics2/logger/BatchLockState",
            "<TT;>.Batch",
            "Lock;"
        }
    .end annotation

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState;->mLockedBatches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    .line 37
    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/BatchLockState;->newBatchLock(Ljava/lang/Object;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/facebook/analytics2/logger/BatchLockState;->mLockedBatches:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    invoke-static {v0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->access$008(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract newBatchLock(Ljava/lang/Object;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/facebook/analytics2/logger/BatchLockState",
            "<TT;>.Batch",
            "Lock;"
        }
    .end annotation
.end method

.method declared-synchronized toStringForDebug()Ljava/lang/String;
    .locals 5

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 63
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, "{"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState;->mLockedBatches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    .line 67
    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :cond_0
    :try_start_1
    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method
