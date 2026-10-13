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

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    .line 57
    return-void
.end method

.method private beginData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->throwIfEnded()V

    .line 84
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->startOrWriteComma()V

    .line 85
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    const-string v1, "\"data\":["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static createForNewWriter(Ljava/io/Writer;)Lcom/facebook/analytics2/logger/BatchWriterStructure;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/analytics2/logger/BatchWriterStructure;

    invoke-direct {v0, p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public static createForUploader(Ljava/io/Writer;)Lcom/facebook/analytics2/logger/BatchWriterStructure;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 48
    new-instance v0, Lcom/facebook/analytics2/logger/BatchWriterStructure;

    invoke-direct {v0, p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;-><init>(Ljava/io/Writer;)V

    .line 50
    iput-boolean v1, v0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mHasBegunBatch:Z

    .line 51
    iput-boolean v1, v0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mHasWrittenEvent:Z

    .line 52
    return-object v0
.end method

.method private startOrWriteComma()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->throwIfEnded()V

    .line 61
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mHasBegunBatch:Z

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mHasBegunBatch:Z

    .line 63
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method

.method private throwIfEnded()V
    .locals 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mBatchEnded:Z

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform action because we have ended the batch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public endBatch(Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->throwIfEnded()V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mBatchEnded:Z

    .line 125
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 126
    if-nez p2, :cond_0

    .line 127
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 128
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;->writeSingleBatchCase(Ljava/io/Writer;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 131
    return-void
.end method

.method public writeEvent(Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->throwIfEnded()V

    .line 102
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mHasWrittenEvent:Z

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->beginData()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mHasWrittenEvent:Z

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Lcom/facebook/crudolib/params/ParamsCollection;->encode(Ljava/io/Writer;)V

    .line 109
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method

.method public writeEvents([Lcom/facebook/crudolib/params/ParamsCollection;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    add-int v0, p2, p3

    .line 91
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 95
    :cond_0
    :goto_0
    if-ge p2, v0, :cond_1

    .line 96
    aget-object v1, p1, p2

    invoke-virtual {p0, v1}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->writeEvent(Lcom/facebook/crudolib/params/ParamsCollection;)V

    .line 95
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 98
    :cond_1
    return-void
.end method

.method public writeFixedData(Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->throwIfEnded()V

    .line 71
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->startOrWriteComma()V

    .line 72
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;->writeFixedData(Ljava/io/Writer;)V

    .line 73
    return-void
.end method

.method public writeNewSessionData(Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->throwIfEnded()V

    .line 78
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchWriterStructure;->startOrWriteComma()V

    .line 79
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchWriterStructure;->mWriter:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;->writeNewSessionData(Ljava/io/Writer;)V

    .line 80
    return-void
.end method
