.class final Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;
.super Lcom/oculus/android/exoplayer2/decoder/SimpleDecoder;
.source "FfmpegDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/android/exoplayer2/decoder/SimpleDecoder<",
        "Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;",
        "Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;",
        "Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;",
        ">;"
    }
.end annotation


# static fields
.field private static final OUTPUT_BUFFER_SIZE_16BIT:I = 0xc000

.field private static final OUTPUT_BUFFER_SIZE_32BIT:I = 0x18000


# instance fields
.field private volatile channelCount:I

.field private final codecName:Ljava/lang/String;

.field private final encoding:I

.field private final extraData:[B

.field private hasOutputFormat:Z

.field private nativeContext:J

.field private final outputBufferSize:I

.field private volatile sampleRate:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;
        }
    .end annotation

    .line 51
    new-array p1, p1, [Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    new-array p2, p2, [Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-direct {p0, p1, p2}, Lcom/oculus/android/exoplayer2/decoder/SimpleDecoder;-><init>([Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/oculus/android/exoplayer2/decoder/OutputBuffer;)V

    .line 52
    invoke-static {}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegLibrary;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 55
    invoke-static {p4}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegLibrary;->getCodecName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->codecName:Ljava/lang/String;

    .line 56
    invoke-static {p4, p5}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->getExtraData(Ljava/lang/String;Ljava/util/List;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->extraData:[B

    if-eqz p6, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 57
    :goto_0
    iput p1, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->encoding:I

    if-eqz p6, :cond_1

    const p1, 0x18000

    goto :goto_1

    :cond_1
    const p1, 0xc000

    .line 58
    :goto_1
    iput p1, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->outputBufferSize:I

    .line 59
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->codecName:Ljava/lang/String;

    iget-object p2, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->extraData:[B

    invoke-direct {p0, p1, p2, p6}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->ffmpegInitialize(Ljava/lang/String;[BZ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    .line 60
    iget-wide p1, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    const-wide/16 p4, 0x0

    cmp-long p6, p1, p4

    if-eqz p6, :cond_2

    .line 63
    invoke-virtual {p0, p3}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->setInitialInputBufferSize(I)V

    return-void

    .line 61
    :cond_2
    new-instance p1, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    const-string p2, "Initialization failed."

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_3
    new-instance p1, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    const-string p2, "Failed to load decoder native libraries."

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native ffmpegDecode(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)I
.end method

.method private native ffmpegGetChannelCount(J)I
.end method

.method private native ffmpegGetSampleRate(J)I
.end method

.method private native ffmpegInitialize(Ljava/lang/String;[BZ)J
.end method

.method private native ffmpegRelease(J)V
.end method

.method private native ffmpegReset(J[B)J
.end method

.method private static getExtraData(Ljava/lang/String;Ljava/util/List;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "audio/opus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "audio/alac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "audio/vorbis"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_2

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 158
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 159
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 160
    array-length v0, p0

    array-length v5, p1

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [B

    .line 161
    array-length v5, p0

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 162
    array-length v5, p0

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 163
    array-length v3, p0

    invoke-static {p0, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    array-length v3, p0

    add-int/2addr v3, v2

    aput-byte v4, v0, v3

    .line 165
    array-length v2, p0

    add-int/2addr v2, v1

    aput-byte v4, v0, v2

    .line 166
    array-length v1, p0

    add-int/lit8 v1, v1, 0x4

    array-length v2, p1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 167
    array-length v1, p0

    add-int/lit8 v1, v1, 0x5

    array-length v2, p1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 168
    array-length p0, p0

    add-int/lit8 p0, p0, 0x6

    array-length v1, p1

    invoke-static {p1, v4, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 156
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3bd43e14 -> :sswitch_3
        -0x3313c2e -> :sswitch_2
        0x59ac6426 -> :sswitch_1
        0x59b2d2d8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected createInputBuffer()Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 2

    .line 73
    new-instance v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic createOutputBuffer()Lcom/oculus/android/exoplayer2/decoder/OutputBuffer;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->createOutputBuffer()Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createOutputBuffer()Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;
    .locals 1

    .line 78
    new-instance v0, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-direct {v0, p0}, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;-><init>(Lcom/oculus/android/exoplayer2/decoder/SimpleDecoder;)V

    return-object v0
.end method

.method protected createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;
    .locals 2

    .line 83
    new-instance v0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic createUnexpectedDecodeException(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected decode(Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;Z)Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;
    .locals 7

    if-eqz p3, :cond_0

    .line 90
    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    iget-object p3, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->extraData:[B

    invoke-direct {p0, v0, v1, p3}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->ffmpegReset(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    .line 91
    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    .line 92
    new-instance p1, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    const-string p2, "Error resetting (see logcat)."

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 95
    :cond_0
    iget-object v3, p1, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 96
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 97
    iget-wide v0, p1, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget p1, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->outputBufferSize:I

    invoke-virtual {p2, v0, v1, p1}, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;->init(JI)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 98
    iget-wide v1, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    iget v6, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->outputBufferSize:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->ffmpegDecode(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)I

    move-result p1

    if-gez p1, :cond_1

    .line 100
    new-instance p2, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error decoding (see logcat). Code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 102
    :cond_1
    iget-boolean p3, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->hasOutputFormat:Z

    if-nez p3, :cond_3

    .line 103
    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->ffmpegGetChannelCount(J)I

    move-result p3

    iput p3, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->channelCount:I

    .line 104
    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->ffmpegGetSampleRate(J)I

    move-result p3

    iput p3, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->sampleRate:I

    .line 105
    iget p3, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->sampleRate:I

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->codecName:Ljava/lang/String;

    const-string v0, "alac"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 108
    new-instance p3, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->extraData:[B

    invoke-direct {p3, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 109
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->extraData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p3, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 110
    invoke-virtual {p3}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p3

    iput p3, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->sampleRate:I

    :cond_2
    const/4 p3, 0x1

    .line 112
    iput-boolean p3, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->hasOutputFormat:Z

    .line 114
    :cond_3
    iget-object p3, p2, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 115
    iget-object p2, p2, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic decode(Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/oculus/android/exoplayer2/decoder/OutputBuffer;Z)Ljava/lang/Exception;
    .locals 0

    .line 30
    check-cast p2, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->decode(Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;Z)Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public getChannelCount()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->channelCount:I

    return v0
.end method

.method public getEncoding()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->encoding:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ffmpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegLibrary;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->codecName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->sampleRate:I

    return v0
.end method

.method public release()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/oculus/android/exoplayer2/decoder/SimpleDecoder;->release()V

    .line 122
    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->ffmpegRelease(J)V

    const-wide/16 v0, 0x0

    .line 123
    iput-wide v0, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    return-void
.end method
