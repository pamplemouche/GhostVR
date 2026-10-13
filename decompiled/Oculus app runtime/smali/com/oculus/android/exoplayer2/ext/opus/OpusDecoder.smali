.class public final Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;
.super Lcom/oculus/android/exoplayer2/decoder/SimpleDecoder;
.source "OpusDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/android/exoplayer2/decoder/SimpleDecoder<",
        "Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;",
        "Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;",
        "Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;",
        ">;"
    }
.end annotation


# static fields
.field private static final DECODE_ERROR:I = -0x1

.field private static final DEFAULT_SEEK_PRE_ROLL_SAMPLES:I = 0xf00

.field private static final DRM_ERROR:I = -0x2

.field private static final MAX_CHANNEL_COUNT:I = 0xff

.field private static final NO_ERROR:I = 0x0

.field private static final SAMPLE_RATE:I = 0xbb80


# instance fields
.field private final channelCount:I

.field private final exoMediaCrypto:Lcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;

.field private final headerSeekPreRollSamples:I

.field private final headerSkipSamples:I

.field private final nativeDecoderContext:J

.field private skipSamples:I


# direct methods
.method public constructor <init>(IIILjava/util/List;Lcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p4

    move/from16 v1, p1

    move-object/from16 v2, p5

    .line 72
    new-array v1, v1, [Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    move/from16 v3, p2

    new-array v3, v3, [Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-direct {p0, v1, v3}, Lcom/oculus/android/exoplayer2/decoder/SimpleDecoder;-><init>([Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/oculus/android/exoplayer2/decoder/OutputBuffer;)V

    .line 73
    invoke-static {}, Lcom/oculus/android/exoplayer2/ext/opus/OpusLibrary;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 76
    iput-object v2, v7, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->exoMediaCrypto:Lcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;

    if-eqz v2, :cond_1

    .line 77
    invoke-static {}, Lcom/oculus/android/exoplayer2/ext/opus/OpusLibrary;->opusIsSecureDecodeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string v1, "Opus decoder does not support secure decode."

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 81
    array-length v3, v2

    const-string v4, "Header size is too small."

    const/16 v5, 0x13

    if-lt v3, v5, :cond_a

    const/16 v3, 0x9

    .line 84
    aget-byte v3, v2, v3

    const/16 v6, 0xff

    and-int/2addr v3, v6

    iput v3, v7, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->channelCount:I

    .line 85
    iget v3, v7, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->channelCount:I

    if-gt v3, v6, :cond_9

    const/16 v3, 0xa

    .line 88
    invoke-static {v2, v3}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->readLittleEndian16([BI)I

    move-result v3

    const/16 v8, 0x10

    .line 89
    invoke-static {v2, v8}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->readLittleEndian16([BI)I

    move-result v8

    .line 91
    iget v9, v7, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->channelCount:I

    new-array v10, v9, [B

    const/16 v11, 0x12

    .line 94
    aget-byte v11, v2, v11

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-nez v11, :cond_4

    if-gt v9, v12, :cond_3

    if-ne v9, v12, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 101
    :goto_1
    aput-byte v1, v10, v1

    .line 102
    aput-byte v13, v10, v13

    move v5, v2

    const/4 v4, 0x1

    goto :goto_2

    .line 97
    :cond_3
    new-instance v0, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string v1, "Invalid Header, missing stream map."

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_4
    array-length v11, v2

    add-int/lit8 v14, v9, 0x15

    if-lt v11, v14, :cond_8

    .line 108
    aget-byte v4, v2, v5

    and-int/2addr v4, v6

    const/16 v5, 0x14

    .line 109
    aget-byte v5, v2, v5

    and-int/2addr v5, v6

    const/16 v6, 0x15

    .line 110
    invoke-static {v2, v6, v10, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    :goto_2
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 113
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    if-ne v1, v2, :cond_5

    .line 117
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    .line 119
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    .line 120
    invoke-static {v1, v2}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->nsToSamples(J)I

    move-result v0

    iput v0, v7, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->headerSkipSamples:I

    .line 121
    invoke-static {v11, v12}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->nsToSamples(J)I

    move-result v0

    iput v0, v7, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->headerSeekPreRollSamples:I

    goto :goto_3

    .line 114
    :cond_5
    new-instance v0, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string v1, "Invalid Codec Delay or Seek Preroll"

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_6
    iput v3, v7, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->headerSkipSamples:I

    const/16 v0, 0xf00

    .line 124
    iput v0, v7, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->headerSeekPreRollSamples:I

    :goto_3
    const v1, 0xbb80

    .line 126
    iget v2, v7, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->channelCount:I

    move-object v0, p0

    move v3, v4

    move v4, v5

    move v5, v8

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->opusInit(IIIII[B)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    .line 128
    iget-wide v0, v7, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    move/from16 v0, p3

    .line 131
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->setInitialInputBufferSize(I)V

    return-void

    .line 129
    :cond_7
    new-instance v0, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string v1, "Failed to initialize decoder"

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_8
    new-instance v0, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;

    invoke-direct {v0, v4}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_9
    new-instance v0, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid channel count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->channelCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_a
    new-instance v0, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;

    invoke-direct {v0, v4}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_b
    new-instance v0, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string v1, "Failed to load decoder native libraries."

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static nsToSamples(J)I
    .locals 2

    const-wide/32 v0, 0xbb80

    mul-long p0, p0, v0

    const-wide/32 v0, 0x3b9aca00

    .line 224
    div-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private native opusClose(J)V
.end method

.method private native opusDecode(JJLjava/nio/ByteBuffer;ILcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;)I
.end method

.method private native opusGetErrorCode(J)I
.end method

.method private native opusGetErrorMessage(J)Ljava/lang/String;
.end method

.method private native opusInit(IIIII[B)J
.end method

.method private native opusReset(J)V
.end method

.method private native opusSecureDecode(JJLjava/nio/ByteBuffer;ILcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;ILcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;I[B[BI[I[I)I
.end method

.method private static readLittleEndian16([BI)I
    .locals 1

    .line 228
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    .line 229
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method protected createInputBuffer()Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 2

    .line 141
    new-instance v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic createOutputBuffer()Lcom/oculus/android/exoplayer2/decoder/OutputBuffer;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->createOutputBuffer()Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createOutputBuffer()Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;
    .locals 1

    .line 146
    new-instance v0, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-direct {v0, p0}, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;-><init>(Lcom/oculus/android/exoplayer2/decoder/SimpleDecoder;)V

    return-object v0
.end method

.method protected createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;
    .locals 2

    .line 151
    new-instance v0, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic createUnexpectedDecodeException(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected decode(Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;Z)Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;
    .locals 20

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v14, p2

    if-eqz p3, :cond_1

    .line 158
    iget-wide v1, v15, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    invoke-direct {v15, v1, v2}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->opusReset(J)V

    .line 161
    iget-wide v1, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget v1, v15, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->headerSkipSamples:I

    goto :goto_0

    :cond_0
    iget v1, v15, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->headerSeekPreRollSamples:I

    :goto_0
    iput v1, v15, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->skipSamples:I

    .line 163
    :cond_1
    iget-object v5, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    const/4 v13, 0x0

    .line 165
    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 166
    iget-object v1, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/oculus/android/exoplayer2/decoder/CryptoInfo;

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, v15, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    iget-wide v7, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-object v10, v15, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->exoMediaCrypto:Lcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;

    iget v11, v1, Lcom/oculus/android/exoplayer2/decoder/CryptoInfo;->mode:I

    iget-object v12, v1, Lcom/oculus/android/exoplayer2/decoder/CryptoInfo;->key:[B

    iget-object v4, v1, Lcom/oculus/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    iget v0, v1, Lcom/oculus/android/exoplayer2/decoder/CryptoInfo;->numSubSamples:I

    iget-object v9, v1, Lcom/oculus/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move-wide v1, v2

    move-object/from16 v18, v4

    move-wide v3, v7

    move-object/from16 v7, p2

    const v8, 0xbb80

    move-object/from16 v19, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object/from16 v12, v18

    move/from16 v13, v16

    move-object/from16 v14, v19

    move-object/from16 v15, v17

    .line 168
    invoke-direct/range {v0 .. v15}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->opusSecureDecode(JJLjava/nio/ByteBuffer;ILcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;ILcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;I[B[BI[I[I)I

    move-result v0

    move-object/from16 v8, p0

    goto :goto_1

    :cond_2
    move-object v8, v15

    iget-wide v1, v8, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    iget-wide v3, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    .line 172
    invoke-direct/range {v0 .. v7}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->opusDecode(JJLjava/nio/ByteBuffer;ILcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;)I

    move-result v0

    :goto_1
    if-gez v0, :cond_4

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drm error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v8, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    invoke-direct {v8, v1, v2}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->opusGetErrorMessage(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    new-instance v1, Lcom/oculus/android/exoplayer2/drm/DecryptionException;

    iget-wide v2, v8, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    .line 178
    invoke-direct {v8, v2, v3}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->opusGetErrorCode(J)I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/oculus/android/exoplayer2/drm/DecryptionException;-><init>(ILjava/lang/String;)V

    .line 179
    new-instance v2, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;

    invoke-direct {v2, v0, v1}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    .line 181
    :cond_3
    new-instance v1, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decode error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, v0

    invoke-direct {v8, v3, v4}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->opusGetErrorMessage(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_4
    move-object/from16 v1, p2

    .line 185
    iget-object v2, v1, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 186
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 187
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 188
    iget v4, v8, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->skipSamples:I

    if-lez v4, :cond_6

    .line 189
    iget v5, v8, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->channelCount:I

    mul-int/lit8 v5, v5, 0x2

    mul-int v6, v4, v5

    if-gt v0, v6, :cond_5

    .line 192
    div-int v3, v0, v5

    sub-int/2addr v4, v3

    iput v4, v8, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->skipSamples:I

    const/high16 v3, -0x80000000

    .line 193
    invoke-virtual {v1, v3}, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;->addFlag(I)V

    .line 194
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 196
    :cond_5
    iput v3, v8, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->skipSamples:I

    .line 197
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_6
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic decode(Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/oculus/android/exoplayer2/decoder/OutputBuffer;Z)Ljava/lang/Exception;
    .locals 0

    .line 32
    check-cast p2, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->decode(Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;Z)Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public getChannelCount()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->channelCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "libopus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oculus/android/exoplayer2/ext/opus/OpusLibrary;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    const v0, 0xbb80

    return v0
.end method

.method public release()V
    .locals 2

    .line 205
    invoke-super {p0}, Lcom/oculus/android/exoplayer2/decoder/SimpleDecoder;->release()V

    .line 206
    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->opusClose(J)V

    return-void
.end method
