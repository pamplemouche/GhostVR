.class Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;
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
    name = "CleanupBatchPayloadWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

.field private final mEmptyDirectoryCleaner:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/BatchPayloadInternal;Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;)V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mDelegate:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    .line 302
    iput-object p2, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mEmptyDirectoryCleaner:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;

    return-void
.end method


# virtual methods
.method getDelegate()Lcom/facebook/analytics2/logger/BatchPayloadInternal;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mDelegate:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    return-object v0
.end method

.method public getEstimatedPayloadSize()I
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mDelegate:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->getEstimatedPayloadSize()I

    move-result v0

    return v0
.end method

.method public hasLock()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mDelegate:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->hasLock()Z

    move-result v0

    return v0
.end method

.method public isMultiBatch()Z
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mDelegate:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->isMultiBatch()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mDelegate:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->lock()V

    return-void
.end method

.method public markSuccessful()V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mDelegate:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->markSuccessful()V

    .line 328
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mEmptyDirectoryCleaner:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;->cleanup()V

    return-void
.end method

.method public unlock()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mDelegate:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->unlock()V

    return-void
.end method

.method public writeRawTo(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mDelegate:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v0, p1}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->writeRawTo(Ljava/io/Writer;)V

    return-void
.end method
