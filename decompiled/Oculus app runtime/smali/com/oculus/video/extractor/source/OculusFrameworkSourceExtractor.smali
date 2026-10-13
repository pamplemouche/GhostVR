.class public Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;
.super Ljava/lang/Object;
.source "OculusFrameworkSourceExtractor.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/extractor/Extractor;
.implements Lcom/oculus/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;
    }
.end annotation


# static fields
.field private static final MIME_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "FrameworkExtractor"


# instance fields
.field private final BUFFER_FLAG_NONE:I

.field private final DURATION_US_UNSET:J

.field private context:Landroid/content/Context;

.field private extractor:Landroid/media/MediaExtractor;

.field private extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

.field private maxInputSize:I

.field private prepared:Z

.field private trackInfos:[Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;

.field private trackStates:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 31
    iput-wide v0, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->DURATION_US_UNSET:J

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->BUFFER_FLAG_NONE:I

    .line 45
    iput v0, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->maxInputSize:I

    .line 46
    iput-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->prepared:Z

    return-void
.end method

.method private getFormat(ILandroid/media/MediaFormat;I)Lcom/oculus/android/exoplayer2/Format;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x1

    const-string v4, "max-input-size"

    const-string v5, "mime"

    const/4 v6, 0x2

    if-eq v2, v3, :cond_1

    if-eq v2, v6, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 191
    :cond_0
    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-direct {v0, v1, v4}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v6

    .line 193
    iget v2, v0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->maxInputSize:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->maxInputSize:I

    const-string v2, "width"

    .line 194
    invoke-direct {v0, v1, v2}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v7

    const-string v2, "height"

    .line 195
    invoke-direct {v0, v1, v2}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v8

    const-string v2, "rotation-degrees"

    .line 196
    invoke-direct {v0, v1, v2}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v11

    .line 197
    invoke-direct {v0, v1}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->maybeSetCsd(Landroid/media/MediaFormat;)Ljava/util/List;

    move-result-object v10

    .line 199
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v2 .. v16}, Lcom/oculus/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/oculus/android/exoplayer2/video/ColorInfo;Lcom/oculus/android/exoplayer2/drm/DrmInitData;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v1

    return-object v1

    .line 206
    :cond_1
    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-direct {v0, v1, v4}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v7

    .line 208
    iget v2, v0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->maxInputSize:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->maxInputSize:I

    const-string v2, "channel-count"

    .line 209
    invoke-direct {v0, v1, v2}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v8

    const-string v2, "sample-rate"

    .line 210
    invoke-direct {v0, v1, v2}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v9

    const-string v2, "language"

    .line 211
    invoke-direct {v0, v1, v2}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->maybeSetString(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 212
    invoke-direct {v0, v1}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->maybeSetCsd(Landroid/media/MediaFormat;)Ljava/util/List;

    move-result-object v10

    const-string v1, "audio/raw"

    .line 214
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v6, -0x1

    const/4 v1, -0x1

    .line 216
    :goto_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v1

    invoke-static/range {v2 .. v13}, Lcom/oculus/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/oculus/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v1

    return-object v1
.end method

.method private getTrackType(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "video/"

    .line 179
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v1, "audio/"

    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private maybeSetCsd(Landroid/media/MediaFormat;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 242
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "csd-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 244
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 245
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I
    .locals 1

    .line 226
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private maybeSetString(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 233
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getDurationUs()J
    .locals 9

    .line 261
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->trackInfos:[Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v7, v0, v4

    .line 262
    iget-wide v7, v7, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;->durationUs:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    cmp-long v0, v5, v2

    if-nez v0, :cond_1

    const-wide/16 v5, 0x0

    :cond_1
    return-wide v5
.end method

.method public getSeekPoints(J)Lcom/oculus/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 6

    .line 278
    new-instance v0, Lcom/oculus/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance v1, Lcom/oculus/android/exoplayer2/extractor/SeekPoint;

    invoke-virtual {p0}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->getDurationUs()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/oculus/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/oculus/android/exoplayer2/extractor/SeekPoint;)V

    return-object v0
.end method

.method public getSyncFrmPosition(J)J
    .locals 4

    .line 282
    iget-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->prepared:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 284
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide p1

    :cond_0
    const-wide/16 v0, 0x0

    .line 286
    invoke-virtual {p0}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->getDurationUs()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public init(Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 11

    .line 97
    iget-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->prepared:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 98
    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    .line 99
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->trackStates:[I

    .line 100
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->trackStates:[I

    array-length p1, p1

    new-array p1, p1, [Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;

    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->trackInfos:[Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;

    const/4 p1, 0x0

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->trackStates:[I

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "durationUs"

    .line 103
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    move-wide v7, v2

    const-string v2, "mime"

    .line 105
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    invoke-direct {p0, v6}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->getTrackType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 109
    iget-object v3, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->trackInfos:[Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;

    new-instance v10, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;

    iget-object v4, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v4, p1, v2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    move-result-object v9

    move-object v4, v10

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;-><init>(Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;Ljava/lang/String;JLcom/oculus/android/exoplayer2/extractor/TrackOutput;)V

    aput-object v10, v3, p1

    .line 110
    iget-object v3, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->trackInfos:[Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;->trackOutput:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    invoke-direct {p0, p1, v0, v2}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->getFormat(ILandroid/media/MediaFormat;I)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->format(Lcom/oculus/android/exoplayer2/Format;)V

    .line 112
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 116
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1, p0}, Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/oculus/android/exoplayer2/extractor/SeekMap;)V

    .line 117
    iput-boolean v1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->prepared:Z

    const-string p1, "FrameworkExtractor"

    const-string v0, "Android MediaExtractor is selected"

    .line 118
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Lcom/oculus/android/exoplayer2/extractor/PositionHolder;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 123
    iget-boolean p1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->prepared:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return v0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->trackInfos:[Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;

    aget-object v0, v0, p1

    iget-object v1, v0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;->trackOutput:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    .line 134
    iget v0, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->maxInputSize:I

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 135
    iget-object v2, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractor:Landroid/media/MediaExtractor;

    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 136
    new-instance v2, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {v2, v0, v5}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 137
    invoke-interface {v1, v2, v5}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)V

    .line 138
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    .line 140
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    .line 143
    iget-object v4, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->trackInfos:[Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;

    aget-object v4, v4, p1

    iget-boolean v4, v4, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;->waitFirstSample:Z

    if-eqz v4, :cond_2

    .line 144
    iget-object v4, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->trackInfos:[Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;

    aget-object v6, v4, p1

    iput-boolean v8, v6, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;->waitFirstSample:Z

    if-nez v0, :cond_2

    .line 146
    aget-object v4, v4, p1

    iput-boolean p2, v4, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;->forceSyncFrame:Z

    .line 151
    :cond_2
    iget-object p2, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->trackInfos:[Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;

    aget-object p1, p2, p1

    iget-boolean p1, p1, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;->forceSyncFrame:Z

    or-int v4, v0, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/oculus/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 158
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    return v8
.end method

.method public release()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractor:Landroid/media/MediaExtractor;

    :cond_0
    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 164
    iget-boolean p3, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->prepared:Z

    if-eqz p3, :cond_0

    .line 165
    iget-object p3, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractor:Landroid/media/MediaExtractor;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p2, p4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_0
    return-void
.end method

.method public sniff(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "FrameworkExtractor"

    .line 67
    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->context:Landroid/content/Context;

    .line 68
    new-instance p1, Landroid/media/MediaExtractor;

    invoke-direct {p1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractor:Landroid/media/MediaExtractor;

    const/4 p1, 0x0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractor:Landroid/media/MediaExtractor;

    iget-object v2, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    iget-object p2, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p2

    if-gtz p2, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->release()V

    return p1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    .line 84
    iget-object v2, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 85
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p2, "Unrecognized track mime type"

    .line 86
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->release()V

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1

    :catch_0
    nop

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error set DataSource with uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_4

    const-string p2, "null"

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->release()V

    return p1
.end method

.method public sniff(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
