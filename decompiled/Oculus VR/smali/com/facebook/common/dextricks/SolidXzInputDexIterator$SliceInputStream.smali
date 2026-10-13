.class final Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;
.super Ljava/io/InputStream;
.source "SolidXzInputDexIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/SolidXzInputDexIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SliceInputStream"
.end annotation


# instance fields
.field private mBytesRead:I

.field private mBytesToRead:I

.field final synthetic this$0:Lcom/facebook/common/dextricks/SolidXzInputDexIterator;


# direct methods
.method constructor <init>(Lcom/facebook/common/dextricks/SolidXzInputDexIterator;I)V
    .locals 1

    .prologue
    .line 73
    iput-object p1, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->this$0:Lcom/facebook/common/dextricks/SolidXzInputDexIterator;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->mBytesRead:I

    .line 75
    iput p2, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->mBytesToRead:I

    .line 76
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->access$002(Lcom/facebook/common/dextricks/SolidXzInputDexIterator;Z)Z

    .line 77
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->mBytesToRead:I

    iget v1, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->mBytesRead:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->this$0:Lcom/facebook/common/dextricks/SolidXzInputDexIterator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->access$002(Lcom/facebook/common/dextricks/SolidXzInputDexIterator;Z)Z

    .line 116
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 86
    iget v1, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->mBytesRead:I

    iget v2, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->mBytesToRead:I

    if-ne v1, v2, :cond_0

    .line 96
    :goto_0
    return v0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->this$0:Lcom/facebook/common/dextricks/SolidXzInputDexIterator;

    invoke-static {v1}, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->access$100(Lcom/facebook/common/dextricks/SolidXzInputDexIterator;)Lcom/facebook/xzdecoder/XzInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/xzdecoder/XzInputStream;->read()I

    move-result v1

    .line 91
    if-ne v1, v0, :cond_1

    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "truncated xzs stream"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    iget v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->mBytesRead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->mBytesRead:I

    move v0, v1

    .line 96
    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    if-lez p3, :cond_1

    iget v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->mBytesRead:I

    iget v1, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->mBytesToRead:I

    if-ne v0, v1, :cond_1

    .line 102
    const/4 v0, -0x1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    iget v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->mBytesToRead:I

    iget v1, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->mBytesRead:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->this$0:Lcom/facebook/common/dextricks/SolidXzInputDexIterator;

    invoke-static {v1}, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->access$100(Lcom/facebook/common/dextricks/SolidXzInputDexIterator;)Lcom/facebook/xzdecoder/XzInputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/facebook/xzdecoder/XzInputStream;->read([BII)I

    move-result v0

    .line 107
    if-lez v0, :cond_0

    .line 108
    iget v1, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->mBytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->mBytesRead:I

    goto :goto_0
.end method
