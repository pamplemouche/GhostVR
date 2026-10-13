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
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

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

    .prologue
    .line 131
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->this$0:Lcom/facebook/analytics2/logger/BatchLockState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mKey:Ljava/lang/Object;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mRefCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)I
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mRefCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mRefCount:I

    return v0
.end method

.method static synthetic access$010(Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)I
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mRefCount:I

    return v0
.end method

.method private declared-synchronized isLocked()Z
    .locals 1

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized throwIfAttemptingReEntry(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to re-enter the lock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 224
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private verifyLockPreconditions(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "BatchLockState"

    const-string v1, "Attempting to lock a deleted entry: %s (owned by %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mKey:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->throwIfAttemptingReEntry(Ljava/lang/Object;)V

    .line 190
    return-void
.end method


# virtual methods
.method protected abstract doLock()V
.end method

.method protected abstract doMarkDeleted()V
.end method

.method protected doRelease()V
    .locals 0

    .prologue
    .line 226
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

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized lock(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->verifyLockPreconditions(Ljava/lang/Object;)V

    .line 157
    :goto_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->isLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    goto :goto_0

    .line 169
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->doLock()V

    .line 172
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final markDeleted(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->throwIfNotLockedByOwner(Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->doMarkDeleted()V

    .line 142
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->this$0:Lcom/facebook/analytics2/logger/BatchLockState;

    invoke-static {v0, p0}, Lcom/facebook/analytics2/logger/BatchLockState;->access$100(Lcom/facebook/analytics2/logger/BatchLockState;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V

    .line 137
    return-void
.end method

.method public final declared-synchronized throwIfNotLockedByOwner(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    const-string v1, "Lock is not held by the provided owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalMonitorStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",refCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lockOwner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->isDeleted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 242
    :cond_0
    :try_start_1
    const-string v0, "null"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized tryLock(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->throwIfAttemptingReEntry(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 195
    :cond_0
    const/4 v0, 0x0

    .line 201
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 197
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->doTryLock()Z

    move-result v0

    .line 198
    if-eqz v0, :cond_1

    .line 199
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unlock(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->throwIfNotLockedByOwner(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->doUnlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 218
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->mLockOwner:Ljava/lang/Object;

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 211
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
