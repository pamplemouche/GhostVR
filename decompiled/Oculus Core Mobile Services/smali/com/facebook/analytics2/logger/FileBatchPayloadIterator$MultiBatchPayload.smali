.class Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;
.super Ljava/lang/Object;
.source "FileBatchPayloadIterator.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/BatchPayloadInternal;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiBatchPayload"
.end annotation


# instance fields
.field private final mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

.field private volatile mLocked:Z

.field private final mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;",
            ">;",
            "Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payloads cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    iput-object p1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    .line 373
    iput-object p2, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

    .line 374
    return-void
.end method

.method private lockIfNotLocked()V
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->hasLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->lock()V

    .line 416
    :cond_0
    return-void
.end method

.method private writeTo(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    new-instance v2, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;

    invoke-direct {v2, p1}, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;-><init>(Ljava/io/Writer;)V

    .line 433
    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->startMultiBatch()V

    .line 434
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 435
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/SimpleBatchPayload;

    invoke-virtual {v2, v0}, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->writeSingleBatch(Lcom/facebook/analytics2/logger/SimpleBatchPayload;)V

    .line 434
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

    invoke-virtual {v2, v0}, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->endMultiBatch(Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;)V

    .line 438
    return-void
.end method


# virtual methods
.method public hasLock()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mLocked:Z

    return v0
.end method

.method public isMultiBatch()Z
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x1

    return v0
.end method

.method public lock()V
    .locals 3

    .prologue
    .line 393
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 394
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->lock()V

    .line 393
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 396
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mLocked:Z

    .line 397
    return-void
.end method

.method public markSuccessful()V
    .locals 3

    .prologue
    .line 420
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 421
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->markSuccessful()V

    .line 420
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 423
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 401
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    .line 402
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->unlock()V

    .line 401
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 404
    :cond_0
    iput-boolean v2, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mLocked:Z

    .line 405
    return-void
.end method

.method public writeRawTo(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->lockIfNotLocked()V

    .line 428
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->writeTo(Ljava/io/Writer;)V

    .line 429
    return-void
.end method
