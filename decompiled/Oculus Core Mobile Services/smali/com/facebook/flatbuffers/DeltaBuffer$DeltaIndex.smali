.class public Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;
.super Ljava/lang/Object;
.source "DeltaBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/flatbuffers/DeltaBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DeltaIndex"
.end annotation


# instance fields
.field public final pivot:I

.field public final size:I

.field public final start:I

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;->size:I

    .line 1019
    iget v0, p0, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;->size:I

    if-nez v0, :cond_1

    .line 1020
    iput v1, p0, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;->start:I

    .line 1021
    iput v1, p0, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;->pivot:I

    .line 1022
    iput v1, p0, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;->type:I

    .line 1029
    :goto_0
    iget v0, p0, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;->start:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;->start:I

    iget v1, p0, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;->size:I

    add-int/2addr v0, v1

    .line 1030
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;->pivot:I

    .line 1031
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 1032
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "DeltaIndex out of bound, limit=%d, start=%d, size=%d, pivot=%d"

    .line 1035
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;->start:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;->size:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;->pivot:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1033
    invoke-static {v1, v2, v3, v4, v5}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1024
    :cond_1
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;->start:I

    .line 1025
    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v1, p2, 0x8

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;->pivot:I

    .line 1026
    add-int/lit8 v0, p2, 0xc

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    iput v0, p0, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;->type:I

    goto :goto_0

    .line 1037
    :cond_2
    return-void
.end method
