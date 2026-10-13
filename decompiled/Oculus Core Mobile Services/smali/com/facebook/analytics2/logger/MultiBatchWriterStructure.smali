.class public Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;
.super Ljava/lang/Object;
.source "MultiBatchWriterStructure.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final mOut:Ljava/io/Writer;

.field private mState:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mState:I

    .line 24
    iput-object p1, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mOut:Ljava/io/Writer;

    .line 25
    return-void
.end method

.method private expectState(I)V
    .locals 3

    .prologue
    .line 62
    iget v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mState:I

    if-eq v0, p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mState:I

    .line 69
    return-void
.end method


# virtual methods
.method public endMultiBatch(Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->setState(I)V

    .line 56
    iget-object v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mOut:Ljava/io/Writer;

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mOut:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;->writeMultiBatchCase(Ljava/io/Writer;)V

    .line 58
    iget-object v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mOut:Ljava/io/Writer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 59
    return-void
.end method

.method public startMultiBatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->expectState(I)V

    .line 29
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->setState(I)V

    .line 31
    iget-object v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mOut:Ljava/io/Writer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 32
    iget-object v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mOut:Ljava/io/Writer;

    const-string v1, "\"batches\":["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public writeSingleBatch(Lcom/facebook/analytics2/logger/SimpleBatchPayload;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mOut:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mOut:Ljava/io/Writer;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->writeRawTo(Ljava/io/Writer;Z)V

    .line 47
    return-void

    .line 41
    :pswitch_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->setState(I)V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
