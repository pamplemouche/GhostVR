.class Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;
.super Ljava/lang/Object;
.source "FileBatchPayloadIterator.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/BatchPayloadInternal;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
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
            "Ljava/util/List<",
            "Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;",
            ">;",
            "Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;",
            ")V"
        }
    .end annotation

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iput-object p1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    .line 368
    iput-object p2, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

    return-void

    .line 365
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "payloads cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private lockIfNotLocked()V
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->hasLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->lock()V

    :cond_0
    return-void
.end method

.method private writeTo(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    new-instance v0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;

    invoke-direct {v0, p1}, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;-><init>(Ljava/io/Writer;)V

    .line 428
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->startMultiBatch()V

    .line 429
    iget-object p1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 430
    iget-object v2, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/analytics2/logger/SimpleBatchPayload;

    invoke-virtual {v0, v2}, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->writeSingleBatch(Lcom/facebook/analytics2/logger/SimpleBatchPayload;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    :cond_0
    iget-object p1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->endMultiBatch(Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;)V

    return-void
.end method


# virtual methods
.method public getEstimatedPayloadSize()I
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 440
    iget-object v3, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;

    invoke-virtual {v3}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->getImmediatePayloadSize()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;->getEstimatedSizeOfDynamicData()I

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method

.method getPayloadFiles()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 376
    iget-object v3, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;

    invoke-virtual {v3}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method getPayloads()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;",
            ">;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    return-object v0
.end method

.method public hasLock()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mLocked:Z

    return v0
.end method

.method public isMultiBatch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public lock()V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 389
    iget-object v2, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;

    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->lock()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 391
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mLocked:Z

    return-void
.end method

.method public markSuccessful()V
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 416
    iget-object v2, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;

    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->markSuccessful()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 397
    iget-object v3, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mPayloads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;

    invoke-virtual {v3}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->unlock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->mLocked:Z

    return-void
.end method

.method public writeRawTo(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->lockIfNotLocked()V

    .line 423
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;->writeTo(Ljava/io/Writer;)V

    return-void
.end method
