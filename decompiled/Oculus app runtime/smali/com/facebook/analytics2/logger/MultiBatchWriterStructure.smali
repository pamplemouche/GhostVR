.class public Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;
.super Ljava/lang/Object;
.source "MultiBatchWriterStructure.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final STATE_ENDED:I = 0x4

.field private static final STATE_FIRST:I = 0x2

.field private static final STATE_INITIAL:I = 0x1

.field private static final STATE_SECOND_OR_MORE:I = 0x3


# instance fields
.field private final mOut:Ljava/io/Writer;

.field private mState:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mState:I

    .line 24
    iput-object p1, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mOut:Ljava/io/Writer;

    return-void
.end method

.method private expectState(I)V
    .locals 3

    .line 62
    iget v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mState:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setState(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mState:I

    return-void
.end method


# virtual methods
.method public endMultiBatch(Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x4

    .line 54
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->setState(I)V

    .line 56
    iget-object v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mOut:Ljava/io/Writer;

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mOut:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;->writeMultiBatchCase(Ljava/io/Writer;)V

    .line 58
    iget-object p1, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mOut:Ljava/io/Writer;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public startMultiBatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->expectState(I)V

    const/4 v0, 0x2

    .line 29
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->setState(I)V

    .line 31
    iget-object v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mOut:Ljava/io/Writer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 32
    iget-object v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mOut:Ljava/io/Writer;

    const-string v1, "\"batches\":["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeSingleBatch(Lcom/facebook/analytics2/logger/SimpleBatchPayload;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    .line 38
    iget-object v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mOut:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_1
    invoke-direct {p0, v2}, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->setState(I)V

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/MultiBatchWriterStructure;->mOut:Ljava/io/Writer;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/analytics2/logger/SimpleBatchPayload;->writeRawTo(Ljava/io/Writer;Z)V

    return-void
.end method
