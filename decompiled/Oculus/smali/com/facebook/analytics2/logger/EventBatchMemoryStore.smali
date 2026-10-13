.class Lcom/facebook/analytics2/logger/EventBatchMemoryStore;
.super Lcom/facebook/analytics2/logger/EventBatchStore;
.source "EventBatchMemoryStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/EventBatchMemoryStore$Batch;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/analytics2/logger/EventBatchStore",
        "<",
        "Ljava/io/ByteArrayOutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(IIILcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/crudolib/params/ParamsCollectionPool;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/facebook/analytics2/logger/EventBatchStore;-><init>(IIILcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/crudolib/params/ParamsCollectionPool;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected createNewBatch(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBatchStore$Batch;)Lcom/facebook/analytics2/logger/EventBatchMemoryStore$Batch;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 45
    invoke-static {}, Lcom/facebook/analytics2/logger/InProcessBatchLockState;->getInstance()Lcom/facebook/analytics2/logger/BatchLockState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/analytics2/logger/BatchLockState;->acquire(Ljava/lang/Object;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    move-result-object v1

    .line 46
    invoke-virtual {v1, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->tryLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t lock newly created batch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    new-instance v2, Lcom/facebook/analytics2/logger/EventBatchMemoryStore$Batch;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/analytics2/logger/EventBatchMemoryStore$Batch;-><init>(Lcom/facebook/analytics2/logger/EventBatchMemoryStore;Ljava/io/ByteArrayOutputStream;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V

    return-object v2
.end method

.method protected bridge synthetic createNewBatch(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBatchStore$Batch;)Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/facebook/analytics2/logger/EventBatchMemoryStore;->createNewBatch(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBatchStore$Batch;)Lcom/facebook/analytics2/logger/EventBatchMemoryStore$Batch;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentBatchObject()Ljava/io/ByteArrayOutputStream;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchMemoryStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchMemoryStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    check-cast v0, Lcom/facebook/analytics2/logger/EventBatchMemoryStore$Batch;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/EventBatchMemoryStore$Batch;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    goto :goto_0
.end method

.method public bridge synthetic getCurrentBatchObject()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchMemoryStore;->getCurrentBatchObject()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    return-object v0
.end method
