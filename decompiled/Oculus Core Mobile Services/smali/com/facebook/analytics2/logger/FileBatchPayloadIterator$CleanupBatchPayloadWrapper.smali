.class Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;
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
    name = "CleanupBatchPayloadWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

.field private final mEmptyDirectoryCleaner:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/BatchPayloadInternal;Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mDelegate:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    .line 307
    iput-object p2, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mEmptyDirectoryCleaner:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;

    .line 308
    return-void
.end method


# virtual methods
.method public hasLock()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mDelegate:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->hasLock()Z

    move-result v0

    return v0
.end method

.method public isMultiBatch()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mDelegate:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->isMultiBatch()Z

    move-result v0

    return v0
.end method

.method public markSuccessful()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mDelegate:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->markSuccessful()V

    .line 333
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mEmptyDirectoryCleaner:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;->cleanup()V

    .line 334
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mDelegate:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->unlock()V

    .line 323
    return-void
.end method

.method public writeRawTo(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;->mDelegate:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v0, p1}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->writeRawTo(Ljava/io/Writer;)V

    .line 339
    return-void
.end method
