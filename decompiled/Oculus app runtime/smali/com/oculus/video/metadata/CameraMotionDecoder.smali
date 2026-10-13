.class public Lcom/oculus/video/metadata/CameraMotionDecoder;
.super Ljava/lang/Object;
.source "CameraMotionDecoder.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/metadata/MetadataDecoder;


# static fields
.field public static final ADVANCED_RENDERING_OFFSET_US:J = 0x186a0L

.field private static final VR180_BUFFER_SIZE:J = 0x10L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;)Lcom/oculus/android/exoplayer2/metadata/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderException;
        }
    .end annotation

    .line 22
    iget-object v0, p1, Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x10

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 24
    new-instance v1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    const/4 v0, 0x3

    .line 25
    new-array v0, v0, [F

    .line 30
    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [F

    .line 33
    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    const/4 v5, 0x0

    aput v4, v2, v5

    .line 34
    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    aput v4, v0, v5

    .line 35
    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    aput v4, v0, v3

    const/4 v4, 0x2

    .line 36
    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, v0, v4

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 37
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 38
    aget v7, v0, v1

    aput v7, v2, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v6

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lcom/oculus/android/exoplayer2/metadata/Metadata;

    new-array v1, v3, [Lcom/oculus/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v3, Lcom/oculus/video/metadata/CameraMotionData;

    iget-wide v6, p1, Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;->timeUs:J

    invoke-direct {v3, v6, v7, v2}, Lcom/oculus/video/metadata/CameraMotionData;-><init>(J[F)V

    aput-object v3, v1, v5

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/metadata/Metadata;-><init>([Lcom/oculus/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
