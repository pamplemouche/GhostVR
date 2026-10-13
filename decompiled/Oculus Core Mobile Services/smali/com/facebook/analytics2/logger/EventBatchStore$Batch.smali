.class abstract Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
.super Ljava/lang/Object;
.source "EventBatchStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/EventBatchStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Batch"
.end annotation


# instance fields
.field public final batchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

.field public final batchWriterStructure:Lcom/facebook/analytics2/logger/BatchWriterStructure;

.field public numEntries:I

.field public final output:Ljava/io/Writer;

.field final synthetic this$0:Lcom/facebook/analytics2/logger/EventBatchStore;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/EventBatchStore;Ljava/io/OutputStream;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->this$0:Lcom/facebook/analytics2/logger/EventBatchStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p3, p0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    .line 241
    new-instance v0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;

    new-instance v1, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;

    .line 243
    invoke-static {p1}, Lcom/facebook/analytics2/logger/EventBatchStore;->access$000(Lcom/facebook/analytics2/logger/EventBatchStore;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V

    invoke-static {p1}, Lcom/facebook/analytics2/logger/EventBatchStore;->access$100(Lcom/facebook/analytics2/logger/EventBatchStore;)[C

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;-><init>(Ljava/io/Writer;[C)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->output:Ljava/io/Writer;

    .line 244
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->output:Ljava/io/Writer;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->createForNewWriter(Ljava/io/Writer;)Lcom/facebook/analytics2/logger/BatchWriterStructure;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchWriterStructure:Lcom/facebook/analytics2/logger/BatchWriterStructure;

    .line 245
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->output:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 252
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;->batchLock:Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->release()V

    .line 253
    return-void
.end method
