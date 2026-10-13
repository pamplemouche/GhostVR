.class Lcom/oculus/video/projection/Mp4ProjectionData;
.super Lcom/oculus/video/projection/ProjectionData;
.source "Mp4ProjectionData.java"


# static fields
.field private static final ENC_dfl8:I

.field private static final ENC_raw:I

.field private static final TYPE_cbmp:I

.field private static final TYPE_equi:I

.field private static final TYPE_mesh:I

.field private static final TYPE_mshp:I

.field private static final TYPE_prhd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "prhd"

    .line 20
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/video/projection/Mp4ProjectionData;->TYPE_prhd:I

    const-string v0, "cbmp"

    .line 21
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/video/projection/Mp4ProjectionData;->TYPE_cbmp:I

    const-string v0, "equi"

    .line 22
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/video/projection/Mp4ProjectionData;->TYPE_equi:I

    const-string v0, "mshp"

    .line 23
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/video/projection/Mp4ProjectionData;->TYPE_mshp:I

    const-string v0, "mesh"

    .line 24
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/video/projection/Mp4ProjectionData;->TYPE_mesh:I

    const-string v0, "raw "

    .line 25
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/video/projection/Mp4ProjectionData;->ENC_raw:I

    const-string v0, "dfl8"

    .line 26
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/video/projection/Mp4ProjectionData;->ENC_dfl8:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/oculus/video/projection/ProjectionData;-><init>()V

    return-void
.end method

.method private convertFixed_0_32(J)F
    .locals 2

    long-to-double p1, p1

    const-wide/high16 v0, 0x41f0000000000000L    # 4.294967296E9

    div-double/2addr p1, v0

    double-to-float p1, p1

    return p1
.end method

.method private convertFixed_16_16(I)F
    .locals 2

    const v0, 0x7fffffff

    and-int/2addr v0, p1

    int-to-float v0, v0

    const/high16 v1, 0x47800000    # 65536.0f

    div-float/2addr v0, v1

    if-gez p1, :cond_0

    neg-float v0, v0

    :cond_0
    return v0
.end method

.method private deZigZag(I)I
    .locals 2

    .line 248
    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v1

    .line 249
    div-int/lit8 p1, p1, 0x2

    if-eqz v0, :cond_1

    neg-int p1, p1

    :cond_1
    return p1
.end method

.method private getCSB(I)I
    .locals 4

    mul-int/lit8 p1, p1, 0x2

    int-to-double v0, p1

    .line 244
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private inflate([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 120
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 121
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/high16 p2, 0x40000

    .line 123
    :try_start_0
    new-array p2, p2, [B

    .line 124
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result p3

    if-nez p3, :cond_1

    .line 125
    invoke-virtual {v0, p2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 129
    invoke-virtual {p1, p2, v1, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 135
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p2

    .line 133
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    throw p2
.end method

.method private parseCbmp(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)V
    .locals 5

    const/4 v0, 0x4

    .line 104
    invoke-virtual {p1, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 106
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 109
    sget-object v0, Lcom/oculus/video/projection/ProjectionType;->CUBEMAP:Lcom/oculus/video/projection/ProjectionType;

    iput-object v0, p0, Lcom/oculus/video/projection/Mp4ProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    goto :goto_0

    .line 112
    :cond_0
    sget-object v0, Lcom/oculus/video/projection/ProjectionType;->CUBEMAP:Lcom/oculus/video/projection/ProjectionType;

    iput-object v0, p0, Lcom/oculus/video/projection/Mp4ProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    .line 114
    :goto_0
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/video/projection/Mp4ProjectionData;->cubemapPadding:J

    return-void
.end method

.method private parseEqui(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)V
    .locals 10

    const/4 v0, 0x4

    .line 88
    invoke-virtual {p1, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 90
    sget-object v0, Lcom/oculus/video/projection/ProjectionType;->EQUIRECTANGULAR:Lcom/oculus/video/projection/ProjectionType;

    iput-object v0, p0, Lcom/oculus/video/projection/Mp4ProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    .line 91
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oculus/video/projection/Mp4ProjectionData;->convertFixed_0_32(J)F

    move-result v0

    .line 92
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/oculus/video/projection/Mp4ProjectionData;->convertFixed_0_32(J)F

    move-result v1

    .line 93
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/oculus/video/projection/Mp4ProjectionData;->convertFixed_0_32(J)F

    move-result v2

    .line 94
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/oculus/video/projection/Mp4ProjectionData;->convertFixed_0_32(J)F

    move-result p1

    .line 95
    new-instance v9, Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    add-float v3, v2, p1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float v6, v3, v5

    add-float v3, v0, v1

    sub-float v3, v4, v3

    const/high16 v7, 0x43340000    # 180.0f

    mul-float v8, v3, v7

    sub-float p1, v4, p1

    add-float/2addr v2, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v2, p1

    mul-float v2, v2, v5

    sub-float/2addr v2, v7

    sub-float/2addr v4, v0

    add-float/2addr v1, v4

    div-float/2addr v1, p1

    mul-float v1, v1, v7

    const/high16 p1, 0x42b40000    # 90.0f

    sub-float p1, v1, p1

    move-object v3, v9

    move-object v4, p0

    move v5, v6

    move v6, v8

    move v7, v2

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/oculus/video/projection/ProjectionData$FoVProperties;-><init>(Lcom/oculus/video/projection/ProjectionData;FFFF)V

    iput-object v9, p0, Lcom/oculus/video/projection/Mp4ProjectionData;->leftFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    return-void
.end method

.method private parseMesh(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 198
    new-array v10, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readFloat()F

    move-result v3

    aput v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 204
    new-array v12, v11, [Lcom/oculus/video/projection/ProjectionData$Vertex;

    .line 211
    new-instance v13, Lcom/oculus/android/exoplayer2/util/ParsableBitArray;

    iget-object v2, v8, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v13, v2}, Lcom/oculus/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v13, v2}, Lcom/oculus/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 213
    invoke-direct {v7, v0}, Lcom/oculus/video/projection/Mp4ProjectionData;->getCSB(I)I

    move-result v14

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v11, :cond_1

    .line 215
    invoke-virtual {v13, v14}, Lcom/oculus/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    invoke-direct {v7, v5}, Lcom/oculus/video/projection/Mp4ProjectionData;->deZigZag(I)I

    move-result v5

    add-int v16, v1, v5

    .line 216
    invoke-virtual {v13, v14}, Lcom/oculus/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    invoke-direct {v7, v1}, Lcom/oculus/video/projection/Mp4ProjectionData;->deZigZag(I)I

    move-result v1

    add-int v17, v0, v1

    .line 217
    invoke-virtual {v13, v14}, Lcom/oculus/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/oculus/video/projection/Mp4ProjectionData;->deZigZag(I)I

    move-result v0

    add-int v18, v2, v0

    .line 218
    invoke-virtual {v13, v14}, Lcom/oculus/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/oculus/video/projection/Mp4ProjectionData;->deZigZag(I)I

    move-result v0

    add-int v19, v3, v0

    .line 219
    invoke-virtual {v13, v14}, Lcom/oculus/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/oculus/video/projection/Mp4ProjectionData;->deZigZag(I)I

    move-result v0

    add-int v20, v4, v0

    .line 221
    new-instance v21, Lcom/oculus/video/projection/ProjectionData$Vertex;

    aget v2, v10, v16

    aget v3, v10, v17

    aget v4, v10, v18

    aget v5, v10, v19

    aget v6, v10, v20

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/oculus/video/projection/ProjectionData$Vertex;-><init>(Lcom/oculus/video/projection/ProjectionData;FFFFF)V

    aput-object v21, v12, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v16

    move/from16 v0, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    goto :goto_1

    :cond_1
    mul-int/lit8 v11, v11, 0x5

    mul-int v11, v11, v14

    add-int/lit8 v11, v11, 0x7

    .line 230
    div-int/lit8 v11, v11, 0x8

    .line 231
    invoke-virtual {v8, v11}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 237
    invoke-virtual {v7, v12}, Lcom/oculus/video/projection/Mp4ProjectionData;->estimateProjectionMetadataFromMesh([Lcom/oculus/video/projection/ProjectionData$Vertex;)V

    add-int v9, v9, p2

    .line 240
    invoke-virtual {v8, v9}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private parseMshp(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/util/zip/DataFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/4 v1, 0x4

    .line 143
    invoke-virtual {p1, v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 145
    sget-object v1, Lcom/oculus/video/projection/ProjectionType;->VR180:Lcom/oculus/video/projection/ProjectionType;

    iput-object v1, p0, Lcom/oculus/video/projection/Mp4ProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    .line 147
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    .line 150
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int v3, p2, v3

    .line 152
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 153
    iget-object v5, p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 154
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_4

    .line 159
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 161
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int v2, p2, v2

    .line 165
    sget v3, Lcom/oculus/video/projection/Mp4ProjectionData;->ENC_dfl8:I

    if-ne v1, v3, :cond_0

    .line 167
    new-instance p2, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 168
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/video/projection/Mp4ProjectionData;->inflate([BII)[B

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    goto :goto_0

    .line 169
    :cond_0
    sget v3, Lcom/oculus/video/projection/Mp4ProjectionData;->ENC_raw:I

    if-ne v1, v3, :cond_3

    .line 171
    new-instance v1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/2addr v0, p2

    invoke-direct {v1, v3, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 172
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move-object p2, v1

    .line 178
    :goto_0
    invoke-virtual {p1, v2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 181
    :goto_1
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    if-lez p1, :cond_2

    .line 182
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p1

    .line 183
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 184
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 185
    sget v2, Lcom/oculus/video/projection/Mp4ProjectionData;->TYPE_mesh:I

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x8

    .line 186
    invoke-direct {p0, p2, v1}, Lcom/oculus/video/projection/Mp4ProjectionData;->parseMesh(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)V

    :cond_1
    add-int/2addr p1, v0

    .line 190
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 191
    invoke-virtual {p2, p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1

    :cond_2
    return-void

    .line 174
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported projection data encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Corrupted projection data"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parsePrhd(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)V
    .locals 3

    const/4 v0, 0x4

    .line 74
    invoke-virtual {p1, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 76
    new-instance v0, Lcom/oculus/video/projection/ProjectionData$Pose;

    .line 77
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oculus/video/projection/Mp4ProjectionData;->convertFixed_16_16(I)F

    move-result v1

    .line 78
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oculus/video/projection/Mp4ProjectionData;->convertFixed_16_16(I)F

    move-result v2

    .line 79
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oculus/video/projection/Mp4ProjectionData;->convertFixed_16_16(I)F

    move-result p1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/oculus/video/projection/ProjectionData$Pose;-><init>(Lcom/oculus/video/projection/ProjectionData;FFF)V

    iput-object v0, p0, Lcom/oculus/video/projection/Mp4ProjectionData;->pose:Lcom/oculus/video/projection/ProjectionData$Pose;

    return-void
.end method


# virtual methods
.method public parse([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 33
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    const/4 p1, 0x4

    .line 36
    invoke-virtual {v0, p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 38
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    sget v1, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_proj:I

    if-ne p1, v1, :cond_5

    .line 42
    :goto_0
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    if-lez p1, :cond_4

    .line 43
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p1

    .line 44
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 45
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 46
    sget v3, Lcom/oculus/video/projection/Mp4ProjectionData;->TYPE_prhd:I

    if-ne v2, v3, :cond_0

    .line 47
    invoke-direct {p0, v0}, Lcom/oculus/video/projection/Mp4ProjectionData;->parsePrhd(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_1

    .line 48
    :cond_0
    sget v3, Lcom/oculus/video/projection/Mp4ProjectionData;->TYPE_equi:I

    if-ne v2, v3, :cond_1

    .line 49
    invoke-direct {p0, v0}, Lcom/oculus/video/projection/Mp4ProjectionData;->parseEqui(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_1

    .line 50
    :cond_1
    sget v3, Lcom/oculus/video/projection/Mp4ProjectionData;->TYPE_cbmp:I

    if-ne v2, v3, :cond_2

    .line 51
    invoke-direct {p0, v0}, Lcom/oculus/video/projection/Mp4ProjectionData;->parseCbmp(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_1

    .line 52
    :cond_2
    sget v3, Lcom/oculus/video/projection/Mp4ProjectionData;->TYPE_mshp:I

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, -0x8

    .line 54
    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/oculus/video/projection/Mp4ProjectionData;->parseMshp(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 56
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse mesh projection data"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    add-int/2addr p1, v1

    .line 61
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 62
    invoke-virtual {v0, p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_4
    return-void

    .line 39
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid projection data"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
