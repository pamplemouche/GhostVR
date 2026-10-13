.class public final Lcom/oculus/video/extractor/hls/OculusH264Reader;
.super Ljava/lang/Object;
.source "OculusH264Reader.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final NAL_UNIT_TYPE_PPS:I = 0x8

.field private static final NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final NAL_UNIT_TYPE_SPS:I = 0x7


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final detectAccessUnits:Z

.field private final format:Lcom/oculus/android/exoplayer2/Format;

.field private formatId:Ljava/lang/String;

.field private hasOutputFormat:Z

.field private output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private sampleReader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;

.field private final sei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

.field private final seiReader:Lcom/oculus/video/extractor/hls/SeiReader;

.field private final seiWrapper:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

.field private final sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(Lcom/oculus/video/extractor/hls/SeiReader;ZZLcom/oculus/android/exoplayer2/Format;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->seiReader:Lcom/oculus/video/extractor/hls/SeiReader;

    .line 64
    iput-boolean p2, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->allowNonIdrKeyframes:Z

    .line 65
    iput-boolean p3, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->detectAccessUnits:Z

    const/4 p1, 0x3

    .line 66
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->prefixFlags:[Z

    .line 67
    new-instance p1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    const/16 p2, 0x80

    const/4 p3, 0x7

    invoke-direct {p1, p3, p2}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    .line 68
    new-instance p1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    const/16 p3, 0x8

    invoke-direct {p1, p3, p2}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    .line 69
    new-instance p1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    const/4 p3, 0x6

    invoke-direct {p1, p3, p2}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    .line 70
    new-instance p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->seiWrapper:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 71
    iput-object p4, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->format:Lcom/oculus/android/exoplayer2/Format;

    return-void
.end method

.method private endNalUnit(JIIJ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 165
    iget-boolean v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->hasOutputFormat:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sampleReader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;

    invoke-virtual {v2}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->needsSpsPps()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 166
    :cond_0
    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v2, v1}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 167
    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v2, v1}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 168
    iget-boolean v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->hasOutputFormat:Z

    const/4 v3, 0x3

    if-nez v2, :cond_2

    .line 169
    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v2}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v2}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 170
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget-object v2, v2, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalData:[B

    iget-object v4, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget v4, v4, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget-object v2, v2, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalData:[B

    iget-object v4, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget v4, v4, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget-object v2, v2, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalData:[B

    iget-object v4, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget v4, v4, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v3, v4}, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object v2

    .line 174
    iget-object v4, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget-object v4, v4, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalData:[B

    iget-object v5, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget v5, v5, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v3, v5}, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->parsePpsNalUnit([BII)Lcom/oculus/android/exoplayer2/util/NalUnitUtil$PpsData;

    move-result-object v3

    .line 175
    iget-object v4, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->format:Lcom/oculus/android/exoplayer2/Format;

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    move v7, v4

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    const/4 v7, -0x1

    .line 176
    :goto_0
    iget-object v15, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    iget-object v4, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->formatId:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, -0x1

    iget v9, v2, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;->width:I

    iget v10, v2, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;->height:I

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v13, -0x1

    iget v14, v2, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    const/16 v16, 0x0

    const-string v5, "video/avc"

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-static/range {v4 .. v15}, Lcom/oculus/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/oculus/android/exoplayer2/drm/DrmInitData;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->format(Lcom/oculus/android/exoplayer2/Format;)V

    const/4 v1, 0x1

    .line 179
    iput-boolean v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->hasOutputFormat:Z

    .line 180
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sampleReader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;

    invoke-virtual {v1, v2}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->putSps(Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;)V

    .line 181
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sampleReader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;

    invoke-virtual {v1, v3}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->putPps(Lcom/oculus/android/exoplayer2/util/NalUnitUtil$PpsData;)V

    .line 182
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->reset()V

    .line 183
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->reset()V

    goto :goto_1

    .line 185
    :cond_2
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget-object v1, v1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget v2, v2, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v3, v2}, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object v1

    .line 187
    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sampleReader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;

    invoke-virtual {v2, v1}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->putSps(Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;)V

    .line 188
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->reset()V

    goto :goto_1

    .line 189
    :cond_3
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget-object v1, v1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget v2, v2, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v3, v2}, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->parsePpsNalUnit([BII)Lcom/oculus/android/exoplayer2/util/NalUnitUtil$PpsData;

    move-result-object v1

    .line 191
    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sampleReader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;

    invoke-virtual {v2, v1}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->putPps(Lcom/oculus/android/exoplayer2/util/NalUnitUtil$PpsData;)V

    .line 192
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->reset()V

    .line 195
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 196
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget-object v1, v1, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget v2, v2, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v2}, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v1

    .line 197
    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->seiWrapper:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    iget-object v3, v3, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v2, v3, v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 198
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->seiWrapper:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 199
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->seiReader:Lcom/oculus/video/extractor/hls/SeiReader;

    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->seiWrapper:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    move-wide/from16 v3, p5

    invoke-virtual {v1, v3, v4, v2}, Lcom/oculus/video/extractor/hls/SeiReader;->consume(JLcom/oculus/android/exoplayer2/util/ParsableByteArray;)V

    .line 201
    :cond_5
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sampleReader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;

    move-wide/from16 v2, p1

    move/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->endNalUnit(JI)V

    return-void
.end method

.method private nalUnitData([BII)V
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sampleReader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;

    invoke-virtual {v0}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 158
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 161
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sampleReader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->appendToNalUnit([BII)V

    return-void
.end method

.method private startNalUnit(JIJ)V
    .locals 7

    .line 147
    iget-boolean v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sampleReader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;

    invoke-virtual {v0}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 149
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 152
    iget-object v1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sampleReader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->startNalUnit(JIJ)V

    return-void
.end method


# virtual methods
.method public consume(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)V
    .locals 14

    .line 100
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 101
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 102
    iget-object v2, p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 105
    iget-wide v3, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->totalBytesWritten:J

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->totalBytesWritten:J

    .line 106
    iget-object v3, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)V

    .line 110
    :goto_0
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->prefixFlags:[Z

    invoke-static {v2, v0, v1, p1}, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 114
    invoke-direct {p0, v2, v0, v1}, Lcom/oculus/video/extractor/hls/OculusH264Reader;->nalUnitData([BII)V

    return-void

    .line 119
    :cond_0
    invoke-static {v2, p1}, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->getNalUnitType([BI)I

    move-result v6

    sub-int v3, p1, v0

    if-lez v3, :cond_1

    .line 125
    invoke-direct {p0, v2, v0, p1}, Lcom/oculus/video/extractor/hls/OculusH264Reader;->nalUnitData([BII)V

    :cond_1
    sub-int v10, v1, p1

    .line 128
    iget-wide v4, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->totalBytesWritten:J

    int-to-long v7, v10

    sub-long/2addr v4, v7

    if-gez v3, :cond_2

    neg-int v0, v3

    move v11, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 132
    :goto_1
    iget-wide v12, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pesTimeUs:J

    move-object v7, p0

    move-wide v8, v4

    invoke-direct/range {v7 .. v13}, Lcom/oculus/video/extractor/hls/OculusH264Reader;->endNalUnit(JIIJ)V

    .line 135
    iget-wide v7, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pesTimeUs:J

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/oculus/video/extractor/hls/OculusH264Reader;->startNalUnit(JIJ)V

    add-int/lit8 v0, p1, 0x3

    goto :goto_0
.end method

.method public createTracks(Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 4

    .line 86
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 87
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->formatId:Ljava/lang/String;

    .line 88
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    .line 89
    new-instance v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;

    iget-object v1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    iget-boolean v2, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->allowNonIdrKeyframes:Z

    iget-boolean v3, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->detectAccessUnits:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;-><init>(Lcom/oculus/android/exoplayer2/extractor/TrackOutput;ZZ)V

    iput-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sampleReader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;

    .line 90
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->seiReader:Lcom/oculus/video/extractor/hls/SeiReader;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/video/extractor/hls/SeiReader;->createTracks(Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JZ)V
    .locals 0

    .line 95
    iput-wide p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pesTimeUs:J

    return-void
.end method

.method public seek()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 77
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->reset()V

    .line 78
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->pps:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->reset()V

    .line 79
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sei:Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/oculus/video/extractor/hls/NalUnitTargetBuffer;->reset()V

    .line 80
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->sampleReader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;

    invoke-virtual {v0}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->reset()V

    const-wide/16 v0, 0x0

    .line 81
    iput-wide v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader;->totalBytesWritten:J

    return-void
.end method
