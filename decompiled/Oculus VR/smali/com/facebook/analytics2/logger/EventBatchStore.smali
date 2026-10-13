.class abstract Lcom/facebook/analytics2/logger/EventBatchStore;
.super Ljava/lang/Object;
.source "EventBatchStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
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


# instance fields
.field private final mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

.field protected mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mBatchSessionMetadataHelper:Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mCharBuffer:[C

.field protected mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/analytics2/logger/EventBatchStore",
            "<TT;>.Batch;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mHardMaxEntriesPerBatch:I

.field private final mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

.field private final mSoftMaxEntriesPerBatch:I


# direct methods
.method constructor <init>(IIILcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/crudolib/params/ParamsCollectionPool;)V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-le p1, p2, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput p1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mSoftMaxEntriesPerBatch:I

    .line 48
    iput p2, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mHardMaxEntriesPerBatch:I

    .line 52
    if-lez p3, :cond_1

    .line 54
    :goto_0
    mul-int/lit8 v0, p3, 0x2

    .line 55
    new-array v1, p3, [C

    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCharBuffer:[C

    .line 56
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 58
    iput-object p4, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

    .line 59
    iput-object p5, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    .line 60
    return-void

    .line 52
    :cond_1
    const/16 p3, 0x400

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/facebook/analytics2/logger/EventBatchStore;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/analytics2/logger/EventBatchStore;)[C
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCharBuffer:[C

    return-object v0
.end method

.method private getBatchSessionPrivacySensitiveId()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 177
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/BatchSession;->getPigeonIdentity()Lcom/facebook/analytics2/logger/PigeonIdentity;

    move-result-object v1

    .line 178
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/PigeonIdentity;->getPrivacySensitiveId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    move-object v1, v0

    .line 177
    goto :goto_0
.end method


# virtual methods
.method closeBatch()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->throwIfSessionNotInitialized()V

    .line 194
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->closeBatchInternal()V

    .line 196
    :cond_0
    return-void
.end method

.method protected closeBatchInternal()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    if-eqz v0, :cond_0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    .line 216
    :cond_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected abstract createNewBatch(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBatchStore$Batch;)Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/analytics2/logger/EventBatchStore",
            "<TT;>.Batch;)",
            "Lcom/facebook/analytics2/logger/EventBatchStore",
            "<TT;>.Batch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract getCurrentBatchObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public isCurrentBatchFull()Z
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    iget v0, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I

    iget v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mHardMaxEntriesPerBatch:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentBatchReady()Z
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    iget v0, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I

    iget v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mSoftMaxEntriesPerBatch:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected openAndLockCurrentBatch()Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/analytics2/logger/EventBatchStore",
            "<TT;>.Batch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {v0, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->tryLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->closeBatch()V

    .line 157
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->getBatchSessionPrivacySensitiveId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics2/logger/EventBatchStore;->createNewBatch(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBatchStore$Batch;)Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchWriterStructure:Lcom/facebook/analytics2/logger/BatchWriterStructure;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->writeFixedData(Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;)V

    .line 161
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchSessionMetadataHelper:Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchWriterStructure:Lcom/facebook/analytics2/logger/BatchWriterStructure;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchSessionMetadataHelper:Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->writeNewSessionData(Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    iget-object v1, v1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {v1, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->closeBatch()V

    .line 166
    throw v0
.end method

.method public recommendedNextWriteAmount(I)I
    .locals 3

    .prologue
    .line 76
    if-gtz p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    if-nez v0, :cond_2

    .line 82
    iget v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mSoftMaxEntriesPerBatch:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 105
    :cond_1
    :goto_0
    return p1

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    iget v0, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I

    add-int/2addr v0, p1

    .line 86
    iget v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mSoftMaxEntriesPerBatch:I

    if-le v0, v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    iget v1, v1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I

    iget v2, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mSoftMaxEntriesPerBatch:I

    if-ge v1, v2, :cond_3

    .line 94
    iget v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mSoftMaxEntriesPerBatch:I

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    iget v1, v1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I

    sub-int p1, v0, v1

    goto :goto_0

    .line 97
    :cond_3
    iget v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mHardMaxEntriesPerBatch:I

    if-gt v1, v0, :cond_1

    .line 100
    const/4 v0, 0x1

    iget v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mHardMaxEntriesPerBatch:I

    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    iget v2, v2, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method startNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V
    .locals 3

    .prologue
    .line 219
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    .line 220
    new-instance v0, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-direct {v0, v1, v2}, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;-><init>(Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/BatchSession;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchSessionMetadataHelper:Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;

    .line 222
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->closeBatchInternal()V

    .line 223
    return-void
.end method

.method protected throwIfSessionNotInitialized()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchSessionMetadataHelper:Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mBatchSessionMetadataHelper is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    return-void
.end method

.method write(Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->throwIfSessionNotInitialized()V

    .line 125
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->openAndLockCurrentBatch()Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    move-result-object v1

    .line 127
    :try_start_0
    iget-object v0, v1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchWriterStructure:Lcom/facebook/analytics2/logger/BatchWriterStructure;

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->writeEvent(Lcom/facebook/crudolib/params/ParamsCollection;)V

    .line 128
    iget-object v0, v1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->output:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 129
    iget v0, v1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v0, v1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {v0, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {v1, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method writes([Lcom/facebook/crudolib/params/ParamsCollection;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->throwIfSessionNotInitialized()V

    .line 111
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->openAndLockCurrentBatch()Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    move-result-object v1

    .line 113
    :try_start_0
    iget-object v0, v1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchWriterStructure:Lcom/facebook/analytics2/logger/BatchWriterStructure;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->writeEvents([Lcom/facebook/crudolib/params/ParamsCollection;II)V

    .line 114
    iget-object v0, v1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->output:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 115
    iget v0, v1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I

    add-int/2addr v0, p3

    iput v0, v1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, v1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {v0, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V

    .line 119
    return-void

    .line 117
    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {v1, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V

    throw v0
.end method
