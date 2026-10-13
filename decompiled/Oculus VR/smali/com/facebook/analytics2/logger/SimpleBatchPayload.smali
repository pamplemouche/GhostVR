.class public abstract Lcom/facebook/analytics2/logger/SimpleBatchPayload;
.super Ljava/lang/Object;
.source "SimpleBatchPayload.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/BatchPayloadInternal;


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field static final BYTE_BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[B>;"
        }
    .end annotation
.end field

.field static final CHAR_BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# instance fields
.field final mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

.field volatile mBatchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mLockKey:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/facebook/analytics2/logger/SimpleBatchPayload$1;

    invoke-direct {v0}, Lcom/facebook/analytics2/logger/SimpleBatchPayload$1;-><init>()V

    sput-object v0, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->BYTE_BUFFER:Ljava/lang/ThreadLocal;

    .line 32
    new-instance v0, Lcom/facebook/analytics2/logger/SimpleBatchPayload$2;

    invoke-direct {v0}, Lcom/facebook/analytics2/logger/SimpleBatchPayload$2;-><init>()V

    sput-object v0, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->CHAR_BUFFER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

    .line 44
    iput-object p2, p0, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->mLockKey:Ljava/lang/Object;

    .line 45
    return-void
.end method


# virtual methods
.method abstract acquireLock()Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;
.end method

.method public final hasLock()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->mBatchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    .line 113
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->isLockedByOwner(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiBatch()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public final lock()V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->acquireLock()Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->mBatchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    .line 50
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->mBatchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {v0, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->lock(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public final markSuccessful()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->throwIfNotLocked()V

    .line 89
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->onMarkedSuccessful()V

    .line 90
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->mBatchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {v0, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->markDeleted(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method abstract onMarkedSuccessful()V
.end method

.method abstract onUnlock()V
.end method

.method throwIfNotLocked()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->mBatchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mBatchLock is null, and it should be locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->mBatchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {v0, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->throwIfNotLockedByOwner(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lockKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->mLockKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";hasLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->hasLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlock()V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->throwIfNotLocked()V

    .line 104
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->mBatchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {v0, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->onUnlock()V

    .line 106
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->mBatchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->release()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->mBatchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    .line 108
    return-void
.end method

.method protected abstract writeMainPayload(Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeRawTo(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->writeRawTo(Ljava/io/Writer;Z)V

    .line 58
    return-void
.end method

.method final writeRawTo(Ljava/io/Writer;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->hasLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->lock()V

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->writeMainPayload(Ljava/io/Writer;)V

    .line 65
    invoke-static {p1}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->createForUploader(Ljava/io/Writer;)Lcom/facebook/analytics2/logger/BatchWriterStructure;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

    invoke-virtual {v0, v1, p2}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->endBatch(Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;Z)V

    .line 67
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 68
    return-void
.end method
