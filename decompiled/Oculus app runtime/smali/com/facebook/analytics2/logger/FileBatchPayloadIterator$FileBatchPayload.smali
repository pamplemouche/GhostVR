.class Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;
.super Lcom/facebook/analytics2/logger/SimpleBatchPayload;
.source "FileBatchPayloadIterator.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileBatchPayload"
.end annotation


# instance fields
.field private final mBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/analytics2/logger/BatchLockState<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;",
            "Ljava/io/File;",
            "Lcom/facebook/analytics2/logger/BatchLockState<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 461
    invoke-direct {p0, p1, p2}, Lcom/facebook/analytics2/logger/SimpleBatchPayload;-><init>(Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;Ljava/lang/Object;)V

    .line 462
    iput-object p2, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mFile:Ljava/io/File;

    .line 463
    iput-object p3, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;

    return-void
.end method


# virtual methods
.method protected acquireLock()Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/BatchLockState;->acquire(Ljava/lang/Object;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    move-result-object v0

    return-object v0
.end method

.method getBatchLockState()Lcom/facebook/analytics2/logger/BatchLockState;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/analytics2/logger/BatchLockState<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mFile:Ljava/io/File;

    return-object v0
.end method

.method getImmediatePayloadSize()I
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method protected onMarkedSuccessful()V
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 504
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mFile:Ljava/io/File;

    aput-object v2, v0, v1

    const-string v1, "FileBatchPayloadIterator"

    const-string v2, "Failed to remove %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onUnlock()V
    .locals 0

    return-void
.end method

.method protected writeMainPayload(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    new-instance v0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->BYTE_BUFFER:Ljava/lang/ThreadLocal;

    .line 484
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)V

    .line 487
    :try_start_0
    sget-object v1, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->CHAR_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    .line 488
    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 489
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->close()V

    throw p1
.end method
