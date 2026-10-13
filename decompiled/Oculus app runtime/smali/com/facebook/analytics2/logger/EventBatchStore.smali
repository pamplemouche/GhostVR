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


# static fields
.field private static final DEFAULT_CHAR_BUFFER_SIZE:I = 0x400


# instance fields
.field private final mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

.field protected mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mBatchSessionMetadataHelper:Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mCharBuffer:[C

.field protected mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/analytics2/logger/EventBatchStore<",
            "TT;>.Batch;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mHardMaxEntriesPerBatch:I

.field private final mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

.field private final mSoftMaxEntriesPerBatch:I


# direct methods
.method constructor <init>(IIILcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/crudolib/params/ParamsCollectionPool;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gt p1, p2, :cond_1

    .line 45
    iput p1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mSoftMaxEntriesPerBatch:I

    .line 46
    iput p2, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mHardMaxEntriesPerBatch:I

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x400

    :goto_0
    mul-int/lit8 p1, p3, 0x2

    .line 53
    new-array p2, p3, [C

    iput-object p2, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCharBuffer:[C

    .line 54
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 56
    iput-object p4, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

    .line 57
    iput-object p5, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    return-void

    .line 42
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method static synthetic access$000(Lcom/facebook/analytics2/logger/EventBatchStore;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/analytics2/logger/EventBatchStore;)[C
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCharBuffer:[C

    return-object p0
.end method

.method private getBatchSessionPrivacySensitiveId()Ljava/lang/String;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchSession;->getPigeonIdentity()Lcom/facebook/analytics2/logger/PigeonIdentity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/PigeonIdentity;->getPrivacySensitiveId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method closeBatch()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->throwIfSessionNotInitialized()V

    .line 191
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->closeBatchInternal()V

    :cond_0
    return-void
.end method

.method protected closeBatchInternal()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    if-eqz v0, :cond_0

    .line 207
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    :cond_0
    return-void
.end method

.method protected abstract createNewBatch(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBatchStore$Batch;)Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
    .param p2    # Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/analytics2/logger/EventBatchStore<",
            "TT;>.Batch;)",
            "Lcom/facebook/analytics2/logger/EventBatchStore<",
            "TT;>.Batch;"
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

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public isCurrentBatchFull()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I

    iget v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mHardMaxEntriesPerBatch:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurrentBatchReady()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I

    iget v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mSoftMaxEntriesPerBatch:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected openAndLockCurrentBatch()Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/analytics2/logger/EventBatchStore<",
            "TT;>.Batch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {v0, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->tryLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->closeBatch()V

    .line 155
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->getBatchSessionPrivacySensitiveId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics2/logger/EventBatchStore;->createNewBatch(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBatchStore$Batch;)Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchWriterStructure:Lcom/facebook/analytics2/logger/BatchWriterStructure;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->writeFixedData(Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;)V

    .line 159
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchWriterStructure:Lcom/facebook/analytics2/logger/BatchWriterStructure;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchSessionMetadataHelper:Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->writeNewSessionData(Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    return-object v0

    :catch_0
    move-exception v0

    .line 161
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    iget-object v1, v1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {v1, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->closeBatch()V

    .line 163
    throw v0
.end method

.method public recommendedNextWriteAmount(I)I
    .locals 3

    if-lez p1, :cond_4

    .line 79
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    if-nez v0, :cond_0

    .line 80
    iget v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mSoftMaxEntriesPerBatch:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 83
    :cond_0
    iget v0, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I

    add-int/2addr v0, p1

    .line 84
    iget v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mSoftMaxEntriesPerBatch:I

    if-gt v0, v1, :cond_1

    return p1

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    iget v1, v1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I

    iget v2, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mSoftMaxEntriesPerBatch:I

    if-ge v1, v2, :cond_2

    .line 92
    iget-object p1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    iget p1, p1, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I

    sub-int/2addr v2, p1

    return v2

    .line 95
    :cond_2
    iget v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mHardMaxEntriesPerBatch:I

    if-gt v1, v0, :cond_3

    const/4 p1, 0x1

    .line 98
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    iget v0, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I

    sub-int/2addr v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3
    return p1

    .line 75
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method startNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V
    .locals 2

    .line 216
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    .line 217
    new-instance p1, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-direct {p1, v0, v1}, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;-><init>(Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/BatchSession;)V

    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchSessionMetadataHelper:Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;

    .line 219
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->closeBatchInternal()V

    return-void
.end method

.method protected throwIfSessionNotInitialized()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore;->mBatchSessionMetadataHelper:Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mBatchSessionMetadataHelper is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method write(Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->throwIfSessionNotInitialized()V

    .line 123
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->openAndLockCurrentBatch()Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    move-result-object v0

    .line 125
    :try_start_0
    iget-object v1, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchWriterStructure:Lcom/facebook/analytics2/logger/BatchWriterStructure;

    invoke-virtual {v1, p1}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->writeEvent(Lcom/facebook/crudolib/params/ParamsCollection;)V

    .line 126
    iget-object p1, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->output:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 127
    iget p1, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object p1, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {p1, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {v0, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method writes([Lcom/facebook/crudolib/params/ParamsCollection;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->throwIfSessionNotInitialized()V

    .line 109
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStore;->openAndLockCurrentBatch()Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    move-result-object v0

    .line 111
    :try_start_0
    iget-object v1, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchWriterStructure:Lcom/facebook/analytics2/logger/BatchWriterStructure;

    invoke-virtual {v1, p1, p2, p3}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->writeEvents([Lcom/facebook/crudolib/params/ParamsCollection;II)V

    .line 112
    iget-object p1, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->output:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 113
    iget p1, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I

    add-int/2addr p1, p3

    iput p1, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->numEntries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object p1, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {p1, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, v0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {p2, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
