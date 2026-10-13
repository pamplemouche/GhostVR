.class Lcom/facebook/analytics2/logger/BatchWriterStructure;
.super Ljava/lang/Object;
.source "BatchWriterStructure.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private mBatchEnded:Z

.field private mHasBegunBatch:Z

.field private mHasWrittenEvent:Z

.field private final mWriter:Ljava/io/Writer;


# direct methods
.method private constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    return-void
.end method

.method private beginData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->throwIfEnded()V

    .line 84
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->startOrWriteComma()V

    .line 85
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    const-string v1, "\"data\":["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static createForNewWriter(Ljava/io/Writer;)Lcom/facebook/analytics2/logger/BatchWriterStructure;
    .locals 1

    .line 44
    new-instance v0, Lcom/facebook/analytics2/logger/BatchWriterStructure;

    invoke-direct {v0, p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public static createForUploader(Ljava/io/Writer;)Lcom/facebook/analytics2/logger/BatchWriterStructure;
    .locals 1

    .line 48
    new-instance v0, Lcom/facebook/analytics2/logger/BatchWriterStructure;

    invoke-direct {v0, p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;-><init>(Ljava/io/Writer;)V

    const/4 p0, 0x1

    .line 50
    iput-boolean p0, v0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mHasBegunBatch:Z

    .line 51
    iput-boolean p0, v0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mHasWrittenEvent:Z

    return-object v0
.end method

.method private startOrWriteComma()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->throwIfEnded()V

    .line 61
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mHasBegunBatch:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mHasBegunBatch:Z

    .line 63
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :goto_0
    return-void
.end method

.method private throwIfEnded()V
    .locals 2

    .line 134
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mBatchEnded:Z

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform action because we have ended the batch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public endBatch(Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->throwIfEnded()V

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mBatchEnded:Z

    .line 125
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    if-nez p2, :cond_0

    .line 127
    iget-object p2, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 128
    iget-object p2, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;->writeSingleBatchCase(Ljava/io/Writer;)V

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    const/16 p2, 0x7d

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public writeEvent(Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->throwIfEnded()V

    .line 102
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mHasWrittenEvent:Z

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->beginData()V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mHasWrittenEvent:Z

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Lcom/facebook/crudolib/params/ParamsCollection;->encode(Ljava/io/Writer;)V

    return-void
.end method

.method public writeEvents([Lcom/facebook/crudolib/params/ParamsCollection;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    .line 91
    array-length v0, p1

    if-lt v0, p3, :cond_1

    :goto_0
    if-ge p2, p3, :cond_0

    .line 96
    aget-object v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->writeEvent(Lcom/facebook/crudolib/params/ParamsCollection;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public writeFixedData(Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->throwIfEnded()V

    .line 71
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->startOrWriteComma()V

    .line 72
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;->writeFixedData(Ljava/io/Writer;)V

    return-void
.end method

.method public writeNewSessionData(Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->throwIfEnded()V

    .line 78
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->startOrWriteComma()V

    .line 79
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;->writeNewSessionData(Ljava/io/Writer;)V

    return-void
.end method
