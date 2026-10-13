.class public final Lcom/oculus/video/extractor/hls/OculusH265Reader;
.super Ljava/lang/Object;
.source "OculusH265Reader.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/extractor/hls/OculusH265Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final BLA_W_LP:I = 0x10

.field private static final CRA_NUT:I = 0x15

.field private static final PPS_NUT:I = 0x22

.field private static final PREFIX_SEI_NUT:I = 0x27

.field private static final RASL_R:I = 0x9

.field private static final SPS_NUT:I = 0x21

.field private static final SUFFIX_SEI_NUT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "OculusH265Reader"

.field private static final VPS_NUT:I = 0x20


# instance fields
.field private formatId:Ljava/lang/String;

.field private hasOutputFormat:Z

.field private output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private final prefixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

.field private sampleReader:Lcom/oculus/video/extractor/hls/OculusH265Reader$SampleReader;

.field private final seiReader:Lcom/oculus/video/extractor/hls/SeiReader;

.field private final seiWrapper:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

.field private final sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

.field private final suffixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

.field private totalBytesWritten:J

.field private final vps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;


# direct methods
.method public constructor <init>(Lcom/oculus/video/extractor/hls/SeiReader;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->seiReader:Lcom/oculus/video/extractor/hls/SeiReader;

    const/4 p1, 0x3

    .line 62
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->prefixFlags:[Z

    .line 63
    new-instance p1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    const/16 v0, 0x80

    const/16 v1, 0x20

    invoke-direct {p1, v1, v0}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->vps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    .line 64
    new-instance p1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    const/16 v1, 0x21

    invoke-direct {p1, v1, v0}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    .line 65
    new-instance p1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    const/16 v1, 0x22

    invoke-direct {p1, v1, v0}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    .line 66
    new-instance p1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    const/16 v1, 0x27

    invoke-direct {p1, v1, v0}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->prefixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    .line 67
    new-instance p1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    const/16 v1, 0x28

    invoke-direct {p1, v1, v0}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->suffixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    .line 68
    new-instance p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->seiWrapper:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method private endNalUnit(JIIJ)V
    .locals 2

    .line 173
    iget-boolean v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->sampleReader:Lcom/oculus/video/extractor/hls/OculusH265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/video/extractor/hls/OculusH265Reader$SampleReader;->endNalUnit(JI)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->vps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 177
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 178
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 179
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->vps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {p1}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {p1}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {p1}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 180
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    iget-object p2, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->formatId:Ljava/lang/String;

    iget-object p3, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->vps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget-object v1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-static {p2, p3, v0, v1}, Lcom/oculus/video/extractor/hls/OculusH265Reader;->parseMediaFormat(Ljava/lang/String;Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->format(Lcom/oculus/android/exoplayer2/Format;)V

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->hasOutputFormat:Z

    .line 184
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->prefixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_2

    .line 185
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->prefixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget-object p1, p1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalData:[B

    iget-object p3, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->prefixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget p3, p3, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p1, p3}, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result p1

    .line 186
    iget-object p3, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->seiWrapper:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->prefixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget-object v0, v0, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {p3, v0, p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 189
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->seiWrapper:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 190
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->seiReader:Lcom/oculus/video/extractor/hls/SeiReader;

    iget-object p3, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->seiWrapper:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p5, p6, p3}, Lcom/oculus/video/extractor/hls/SeiReader;->consume(JLcom/oculus/android/exoplayer2/util/ParsableByteArray;)V

    .line 192
    :cond_2
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->suffixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 193
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->suffixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget-object p1, p1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalData:[B

    iget-object p3, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->suffixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget p3, p3, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p1, p3}, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result p1

    .line 194
    iget-object p3, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->seiWrapper:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object p4, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->suffixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget-object p4, p4, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {p3, p4, p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 197
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->seiWrapper:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 198
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->seiReader:Lcom/oculus/video/extractor/hls/SeiReader;

    iget-object p2, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->seiWrapper:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p5, p6, p2}, Lcom/oculus/video/extractor/hls/SeiReader;->consume(JLcom/oculus/android/exoplayer2/util/ParsableByteArray;)V

    :cond_3
    return-void
.end method

.method private nalUnitData([BII)V
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->sampleReader:Lcom/oculus/video/extractor/hls/OculusH265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/video/extractor/hls/OculusH265Reader$SampleReader;->readNalUnitData([BII)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->vps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 165
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 166
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->prefixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 169
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->suffixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    return-void
.end method

.method private static parseMediaFormat(Ljava/lang/String;Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;)Lcom/oculus/android/exoplayer2/Format;
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 205
    iget v3, v0, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    iget v4, v1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 206
    iget-object v4, v0, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalData:[B

    iget v5, v0, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iget-object v4, v1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalData:[B

    iget v5, v0, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    iget v7, v1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v6, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget-object v4, v2, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalData:[B

    iget v0, v0, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    iget v5, v1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v0, v5

    iget v2, v2, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v6, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    new-instance v0, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget-object v2, v1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalData:[B

    iget v1, v1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    invoke-direct {v0, v2, v6, v1}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    const/16 v1, 0x2c

    .line 212
    invoke-virtual {v0, v1}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v1, 0x3

    .line 213
    invoke-virtual {v0, v1}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 214
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    const/16 v4, 0x58

    .line 217
    invoke-virtual {v0, v4}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/16 v4, 0x8

    .line 218
    invoke-virtual {v0, v4}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    .line 221
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v7, v7, 0x59

    .line 224
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, 0x8

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {v0, v7}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v5, 0x2

    if-lez v2, :cond_3

    rsub-int/lit8 v7, v2, 0x8

    mul-int/lit8 v7, v7, 0x2

    .line 230
    invoke-virtual {v0, v7}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 233
    :cond_3
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 234
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    if-ne v7, v1, :cond_4

    .line 236
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 238
    :cond_4
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 239
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    .line 240
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_8

    .line 241
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    .line 242
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 243
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .line 244
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    if-eq v7, v10, :cond_6

    if-ne v7, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v14, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v14, 0x2

    :goto_2
    if-ne v7, v10, :cond_7

    const/4 v7, 0x2

    goto :goto_3

    :cond_7
    const/4 v7, 0x1

    :goto_3
    add-int/2addr v9, v11

    mul-int v14, v14, v9

    sub-int/2addr v1, v14

    add-int/2addr v12, v13

    mul-int v7, v7, v12

    sub-int/2addr v8, v7

    :cond_8
    move/from16 v16, v1

    move/from16 v17, v8

    .line 251
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 252
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 253
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 255
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    move v7, v2

    :goto_4
    if-gt v7, v2, :cond_a

    .line 256
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 257
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 258
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 260
    :cond_a
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 261
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 262
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 263
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 264
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 265
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 267
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 268
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 269
    invoke-static {v0}, Lcom/oculus/video/extractor/hls/OculusH265Reader;->skipScalingList(Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;)V

    .line 271
    :cond_b
    invoke-virtual {v0, v5}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 272
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 274
    invoke-virtual {v0, v4}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 275
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 276
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 277
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 280
    :cond_c
    invoke-static {v0}, Lcom/oculus/video/extractor/hls/OculusH265Reader;->skipShortTermRefPicSets(Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;)V

    .line 281
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 283
    :goto_5
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    if-ge v6, v2, :cond_d

    add-int/lit8 v2, v1, 0x4

    add-int/2addr v2, v10

    .line 286
    invoke-virtual {v0, v2}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 289
    :cond_d
    invoke-virtual {v0, v5}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 291
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 292
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 293
    invoke-virtual {v0, v4}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    const/16 v4, 0xff

    if-ne v2, v4, :cond_f

    const/16 v2, 0x10

    .line 295
    invoke-virtual {v0, v2}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 296
    invoke-virtual {v0, v2}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    if-eqz v4, :cond_e

    if-eqz v0, :cond_e

    int-to-float v1, v4

    int-to-float v0, v0

    div-float/2addr v1, v0

    :cond_e
    move/from16 v21, v1

    goto :goto_6

    .line 300
    :cond_f
    sget-object v0, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v0, v0

    if-ge v2, v0, :cond_10

    .line 301
    sget-object v0, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v0, v0, v2

    move/from16 v21, v0

    goto :goto_6

    .line 303
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OculusH265Reader"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/high16 v21, 0x3f800000    # 1.0f

    :goto_6
    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    .line 310
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v20, -0x1

    const/16 v22, 0x0

    const-string v12, "video/hevc"

    move-object/from16 v11, p0

    .line 308
    invoke-static/range {v11 .. v22}, Lcom/oculus/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/oculus/android/exoplayer2/drm/DrmInitData;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method private static skipScalingList(Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_4

    .line 319
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_3

    :cond_0
    const/16 v4, 0x40

    shl-int/lit8 v6, v1, 0x1

    add-int/2addr v6, v2

    shl-int v6, v5, v6

    .line 323
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    .line 329
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    goto :goto_4

    :cond_3
    const/4 v4, 0x1

    :goto_4
    add-int/2addr v3, v4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static skipShortTermRefPicSets(Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;)V
    .locals 8

    .line 341
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    :cond_0
    if-eqz v3, :cond_2

    .line 354
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 355
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    const/4 v5, 0x0

    :goto_1
    if-gt v5, v4, :cond_5

    .line 357
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 362
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 363
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    add-int v6, v4, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_3

    .line 366
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 367
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_4

    .line 370
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 371
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private startNalUnit(JIIJ)V
    .locals 8

    .line 149
    iget-boolean v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->sampleReader:Lcom/oculus/video/extractor/hls/OculusH265Reader$SampleReader;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/oculus/video/extractor/hls/OculusH265Reader$SampleReader;->startNalUnit(JIIJ)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->vps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 153
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 154
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 156
    :goto_0
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->prefixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 157
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->suffixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->startNalUnit(I)V

    return-void
.end method


# virtual methods
.method public consume(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 99
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_4

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v9

    .line 102
    iget-object v10, v8, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 105
    iget-wide v1, v7, Lcom/oculus/video/extractor/hls/OculusH265Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Lcom/oculus/video/extractor/hls/OculusH265Reader;->totalBytesWritten:J

    .line 106
    iget-object v1, v7, Lcom/oculus/video/extractor/hls/OculusH265Reader;->output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-interface {v1, v8, v2}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)V

    :goto_0
    if-ge v0, v9, :cond_0

    .line 110
    iget-object v1, v7, Lcom/oculus/video/extractor/hls/OculusH265Reader;->prefixFlags:[Z

    invoke-static {v10, v0, v9, v1}, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v11

    if-ne v11, v9, :cond_1

    .line 114
    invoke-direct {v7, v10, v0, v9}, Lcom/oculus/video/extractor/hls/OculusH265Reader;->nalUnitData([BII)V

    return-void

    .line 119
    :cond_1
    invoke-static {v10, v11}, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->getH265NalUnitType([BI)I

    move-result v12

    sub-int v1, v11, v0

    if-lez v1, :cond_2

    .line 125
    invoke-direct {v7, v10, v0, v11}, Lcom/oculus/video/extractor/hls/OculusH265Reader;->nalUnitData([BII)V

    :cond_2
    sub-int v13, v9, v11

    .line 129
    iget-wide v2, v7, Lcom/oculus/video/extractor/hls/OculusH265Reader;->totalBytesWritten:J

    int-to-long v4, v13

    sub-long v14, v2, v4

    if-gez v1, :cond_3

    neg-int v0, v1

    move v4, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 133
    :goto_1
    iget-wide v5, v7, Lcom/oculus/video/extractor/hls/OculusH265Reader;->pesTimeUs:J

    move-object/from16 v0, p0

    move-wide v1, v14

    move v3, v13

    invoke-direct/range {v0 .. v6}, Lcom/oculus/video/extractor/hls/OculusH265Reader;->endNalUnit(JIIJ)V

    .line 136
    iget-wide v5, v7, Lcom/oculus/video/extractor/hls/OculusH265Reader;->pesTimeUs:J

    move v4, v12

    invoke-direct/range {v0 .. v6}, Lcom/oculus/video/extractor/hls/OculusH265Reader;->startNalUnit(JIIJ)V

    add-int/lit8 v0, v11, 0x3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public createTracks(Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    .line 85
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 86
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->formatId:Ljava/lang/String;

    .line 87
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    .line 88
    new-instance v0, Lcom/oculus/video/extractor/hls/OculusH265Reader$SampleReader;

    iget-object v1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    invoke-direct {v0, v1}, Lcom/oculus/video/extractor/hls/OculusH265Reader$SampleReader;-><init>(Lcom/oculus/android/exoplayer2/extractor/TrackOutput;)V

    iput-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->sampleReader:Lcom/oculus/video/extractor/hls/OculusH265Reader$SampleReader;

    .line 89
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->seiReader:Lcom/oculus/video/extractor/hls/SeiReader;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/video/extractor/hls/SeiReader;->createTracks(Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JZ)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->pesTimeUs:J

    return-void
.end method

.method public seek()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 74
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->vps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->reset()V

    .line 75
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->reset()V

    .line 76
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->reset()V

    .line 77
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->prefixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->reset()V

    .line 78
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->suffixSei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->reset()V

    .line 79
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->sampleReader:Lcom/oculus/video/extractor/hls/OculusH265Reader$SampleReader;

    invoke-virtual {v0}, Lcom/oculus/video/extractor/hls/OculusH265Reader$SampleReader;->reset()V

    const-wide/16 v0, 0x0

    .line 80
    iput-wide v0, p0, Lcom/oculus/video/extractor/hls/OculusH265Reader;->totalBytesWritten:J

    return-void
.end method
