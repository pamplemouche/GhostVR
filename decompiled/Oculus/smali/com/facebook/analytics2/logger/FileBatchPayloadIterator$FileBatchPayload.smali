.class Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;
.super Lcom/facebook/analytics2/logger/SimpleBatchPayload;
.source "FileBatchPayloadIterator.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
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
            "Lcom/facebook/analytics2/logger/BatchLockState",
            "<",
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
            "Lcom/facebook/analytics2/logger/BatchLockState",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    invoke-direct {p0, p1, p2}, Lcom/facebook/analytics2/logger/SimpleBatchPayload;-><init>(Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;Ljava/lang/Object;)V

    .line 467
    iput-object p2, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mFile:Ljava/io/File;

    .line 468
    iput-object p3, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;

    .line 469
    return-void
.end method


# virtual methods
.method protected acquireLock()Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/BatchLockState;->acquire(Ljava/lang/Object;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mFile:Ljava/io/File;

    return-object v0
.end method

.method protected onMarkedSuccessful()V
    .locals 5

    .prologue
    .line 508
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    const-string v0, "FileBatchPayloadIterator"

    const-string v1, "Failed to remove %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mFile:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    :cond_0
    return-void
.end method

.method public onUnlock()V
    .locals 0

    .prologue
    .line 516
    return-void
.end method

.method protected writeMainPayload(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    new-instance v1, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->mFile:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->BYTE_BUFFER:Ljava/lang/ThreadLocal;

    .line 489
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)V

    .line 492
    :try_start_0
    sget-object v0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->CHAR_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 493
    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 494
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->close()V

    throw v0

    :cond_0
    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->close()V

    .line 499
    return-void
.end method
