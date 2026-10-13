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
        "Lcom/facebook/analytics2/logger/EventBatchStore<",
        "Ljava/io/ByteArrayOutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(IIILcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/crudolib/params/ParamsCollectionPool;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/facebook/analytics2/logger/EventBatchStore;-><init>(IIILcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/crudolib/params/ParamsCollectionPool;)V

    return-void
.end method


# virtual methods
.method protected createNewBatch(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBatchStore$Batch;)Lcom/facebook/analytics2/logger/EventBatchMemoryStore$Batch;
    .locals 1
    .param p2    # Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    .line 43
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 45
    invoke-static {}, Lcom/facebook/analytics2/logger/InProcessBatchLockState;->getInstance()Lcom/facebook/analytics2/logger/BatchLockState;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/facebook/analytics2/logger/BatchLockState;->acquire(Ljava/lang/Object;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    move-result-object p2

    .line 46
    invoke-virtual {p2, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->tryLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/facebook/analytics2/logger/EventBatchMemoryStore$Batch;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/analytics2/logger/EventBatchMemoryStore$Batch;-><init>(Lcom/facebook/analytics2/logger/EventBatchMemoryStore;Ljava/io/ByteArrayOutputStream;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V

    return-object v0

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Couldn\'t lock newly created batch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic createNewBatch(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBatchStore$Batch;)Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
    .locals 0
    .param p2    # Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/facebook/analytics2/logger/EventBatchMemoryStore;->createNewBatch(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBatchStore$Batch;)Lcom/facebook/analytics2/logger/EventBatchMemoryStore$Batch;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentBatchObject()Ljava/io/ByteArrayOutputStream;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchMemoryStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchMemoryStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    check-cast v0, Lcom/facebook/analytics2/logger/EventBatchMemoryStore$Batch;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/EventBatchMemoryStore$Batch;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public bridge synthetic getCurrentBatchObject()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchMemoryStore;->getCurrentBatchObject()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    return-object v0
.end method
