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


# static fields
.field private static final TAG:Ljava/lang/String; = "BatchLockState"


# instance fields
.field protected final mLockedBatches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lcom/facebook/analytics2/logger/BatchLockState<",
            "TT;>.Batch",
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

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState;->mLockedBatches:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/analytics2/logger/BatchLockState;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/BatchLockState;->release(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V

    return-void
.end method

.method public static getInstance(Z)Lcom/facebook/analytics2/logger/BatchLockState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/facebook/analytics2/logger/BatchLockState<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 25
    invoke-static {}, Lcom/facebook/analytics2/logger/CrossProcessBatchLockState;->getInstance()Lcom/facebook/analytics2/logger/BatchLockState;

    move-result-object p0

    return-object p0

    .line 27
    :cond_0
    invoke-static {}, Lcom/facebook/analytics2/logger/InProcessBatchLockState;->getInstance()Lcom/facebook/analytics2/logger/BatchLockState;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized release(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/analytics2/logger/BatchLockState<",
            "TT;>.Batch",
            "Lock;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 49
    :try_start_0
    invoke-static {p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->access$010(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)I

    .line 50
    invoke-static {p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->access$000(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 53
    invoke-static {p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->access$000(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)I

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->doRelease()V

    .line 55
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState;->mLockedBatches:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit p0

    return-void

    .line 51
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unbalance calls to acquire/release"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized acquire(Ljava/lang/Object;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/facebook/analytics2/logger/BatchLockState<",
            "TT;>.Batch",
            "Lock;"
        }
    .end annotation

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState;->mLockedBatches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/BatchLockState;->newBatchLock(Ljava/lang/Object;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/facebook/analytics2/logger/BatchLockState;->mLockedBatches:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    invoke-static {v0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->access$008(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract newBatchLock(Ljava/lang/Object;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/facebook/analytics2/logger/BatchLockState<",
            "TT;>.Batch",
            "Lock;"
        }
    .end annotation
.end method

.method declared-synchronized toStringForDebug()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 61
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 62
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "{"

    .line 64
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/facebook/analytics2/logger/BatchLockState;->mLockedBatches:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    const-string v4, "  "

    .line 66
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v3}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "}"

    .line 69
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
