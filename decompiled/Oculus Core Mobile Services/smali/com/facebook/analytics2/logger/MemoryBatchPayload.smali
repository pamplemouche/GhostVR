.class Lcom/facebook/analytics2/logger/MemoryBatchPayload;
.super Lcom/facebook/analytics2/logger/SimpleBatchPayload;
.source "MemoryBatchPayload.java"


# instance fields
.field private final mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayOutputStream;Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p2, p1}, Lcom/facebook/analytics2/logger/SimpleBatchPayload;-><init>(Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;Ljava/lang/Object;)V

    .line 18
    iput-object p1, p0, Lcom/facebook/analytics2/logger/MemoryBatchPayload;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 19
    return-void
.end method


# virtual methods
.method protected acquireLock()Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcom/facebook/analytics2/logger/InProcessBatchLockState;->getInstance()Lcom/facebook/analytics2/logger/BatchLockState;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/MemoryBatchPayload;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/BatchLockState;->acquire(Ljava/lang/Object;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    move-result-object v0

    return-object v0
.end method

.method protected onMarkedSuccessful()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method protected onUnlock()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/analytics2/logger/MemoryBatchPayload;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 45
    return-void
.end method

.method protected writeMainPayload(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/analytics2/logger/MemoryBatchPayload;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 32
    return-void
.end method
