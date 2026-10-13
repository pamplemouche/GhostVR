.class public abstract Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;
.super Ljava/lang/Object;
.source "BatchLockState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/BatchLockState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BatchLock"
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field protected final mKey:Ljava/lang/Object;

.field private mLockOwner:Ljava/lang/Object;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mRefCount:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "BatchLockState.this"
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/analytics2/logger/BatchLockState;


# direct methods
.method protected constructor <init>(Lcom/facebook/analytics2/logger/BatchLockState;Ljava/lang/Object;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->this$0:Lcom/facebook/analytics2/logger/BatchLockState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mKey:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)I
    .locals 0

    .line 114
    iget p0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mRefCount:I

    return p0
.end method

.method static synthetic access$008(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)I
    .locals 2

    .line 114
    iget v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mRefCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mRefCount:I

    return v0
.end method

.method static synthetic access$010(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)I
    .locals 2

    .line 114
    iget v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mRefCount:I

    return v0
.end method

.method private declared-synchronized isLocked()Z
    .locals 1

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized throwIfAttemptingReEntry(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 223
    monitor-exit p0

    return-void

    .line 221
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to re-enter the lock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private verifyLockPreconditions(Ljava/lang/Object;)V
    .locals 3

    .line 175
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 186
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mKey:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "BatchLockState"

    const-string v2, "Attempting to lock a deleted entry: %s (owned by %s)"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->throwIfAttemptingReEntry(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected abstract doLock()V
.end method

.method protected abstract doMarkDeleted()V
.end method

.method protected doRelease()V
    .locals 0

    return-void
.end method

.method protected abstract doTryLock()Z
.end method

.method protected abstract doUnlock()V
.end method

.method protected abstract getLockName()Ljava/lang/String;
.end method

.method protected abstract isDeleted()Z
.end method

.method public declared-synchronized isLockedByOwner(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized lock(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 154
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->verifyLockPreconditions(Ljava/lang/Object;)V

    .line 156
    :catch_0
    :goto_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->isLocked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 158
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->doLock()V

    .line 171
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final markDeleted(Ljava/lang/Object;)V
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->throwIfNotLockedByOwner(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->doMarkDeleted()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->this$0:Lcom/facebook/analytics2/logger/BatchLockState;

    invoke-static {v0, p0}, Lcom/facebook/analytics2/logger/BatchLockState;->access$100(Lcom/facebook/analytics2/logger/BatchLockState;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V

    return-void
.end method

.method public final declared-synchronized throwIfNotLockedByOwner(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 207
    monitor-exit p0

    return-void

    .line 205
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalMonitorStateException;

    const-string v0, "Lock is not held by the provided owner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalMonitorStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 242
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",refCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",lockOwner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isDeleted="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->isDeleted()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

.method public final declared-synchronized tryLock(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 192
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->throwIfAttemptingReEntry(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->doTryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_1
    monitor-exit p0

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 194
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unlock(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 210
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->throwIfNotLockedByOwner(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 212
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->doUnlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :try_start_2
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 217
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 214
    :try_start_3
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
