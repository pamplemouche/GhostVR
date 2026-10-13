.class final Lcom/oculus/video/source/hls/WebvttExtractor;
.super Ljava/lang/Object;
.source "WebvttExtractor.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/extractor/Extractor;


# static fields
.field private static final LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

.field private static final MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;


# instance fields
.field private final language:Ljava/lang/String;

.field private output:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

.field private sampleData:[B

.field private final sampleDataWrapper:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

.field private sampleSize:I

.field private final timestampAdjuster:Lcom/oculus/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LOCAL:([^,]+)"

    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oculus/video/source/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    const-string v0, "MPEGTS:(\\d+)"

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oculus/video/source/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oculus/android/exoplayer2/util/TimestampAdjuster;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->language:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->timestampAdjuster:Lcom/oculus/android/exoplayer2/util/TimestampAdjuster;

    .line 48
    new-instance p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->sampleDataWrapper:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    const/16 p1, 0x400

    .line 49
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->sampleData:[B

    return-void
.end method

.method private buildTrackOutput(J)Lcom/oculus/android/exoplayer2/extractor/TrackOutput;
    .locals 10

    .line 154
    iget-object v0, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->output:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 155
    iget-object v6, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->language:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text/vtt"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v8, p1

    invoke-static/range {v1 .. v9}, Lcom/oculus/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/oculus/android/exoplayer2/drm/DrmInitData;J)Lcom/oculus/android/exoplayer2/Format;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->format(Lcom/oculus/android/exoplayer2/Format;)V

    .line 157
    iget-object p1, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->output:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-object v0
.end method

.method private processSample()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->sampleData:[B

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 107
    :try_start_0
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)V
    :try_end_0
    .catch Lcom/oculus/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    .line 118
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_3

    const-string v8, "X-TIMESTAMP-MAP"

    .line 119
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 120
    sget-object v3, Lcom/oculus/video/source/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    sget-object v4, Lcom/oculus/video/source/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 125
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oculus/android/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v5

    .line 129
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/oculus/android/exoplayer2/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide v3

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Lcom/oculus/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_2
    new-instance v0, Lcom/oculus/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_3
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/text/webvtt/WebvttParserUtil;->findNextCueHeader(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-nez v0, :cond_4

    .line 137
    invoke-direct {p0, v1, v2}, Lcom/oculus/video/source/hls/WebvttExtractor;->buildTrackOutput(J)Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    return-void

    .line 141
    :cond_4
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v0

    .line 142
    iget-object v2, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->timestampAdjuster:Lcom/oculus/android/exoplayer2/util/TimestampAdjuster;

    add-long/2addr v3, v0

    sub-long/2addr v3, v5

    .line 143
    invoke-static {v3, v4}, Lcom/oculus/android/exoplayer2/util/TimestampAdjuster;->usToPts(J)J

    move-result-wide v3

    .line 142
    invoke-virtual {v2, v3, v4}, Lcom/oculus/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 146
    invoke-direct {p0, v0, v1}, Lcom/oculus/video/source/hls/WebvttExtractor;->buildTrackOutput(J)Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    move-result-object v5

    .line 148
    iget-object v0, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->sampleDataWrapper:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->sampleData:[B

    iget v2, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->sampleSize:I

    invoke-virtual {v0, v1, v2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 149
    iget-object v0, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->sampleDataWrapper:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget v1, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->sampleSize:I

    invoke-interface {v5, v0, v1}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)V

    const/4 v8, 0x1

    .line 150
    iget v9, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->sampleSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/oculus/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void

    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Lcom/oculus/android/exoplayer2/ParserException;

    invoke-direct {v1, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public init(Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 3

    .line 62
    iput-object p1, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->output:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    .line 63
    new-instance v0, Lcom/oculus/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/oculus/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/oculus/android/exoplayer2/extractor/SeekMap;)V

    return-void
.end method

.method public read(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Lcom/oculus/android/exoplayer2/extractor/PositionHolder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    long-to-int p2, v0

    .line 83
    iget v0, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->sampleSize:I

    iget-object v1, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->sampleData:[B

    array-length v2, v1

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    if-eq p2, v3, :cond_0

    move v0, p2

    goto :goto_0

    .line 84
    :cond_0
    array-length v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->sampleData:[B

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->sampleData:[B

    iget v1, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->sampleSize:I

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result p1

    if-eq p1, v3, :cond_3

    .line 91
    iget v0, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->sampleSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->sampleSize:I

    if-eq p2, v3, :cond_2

    .line 92
    iget p1, p0, Lcom/oculus/video/source/hls/WebvttExtractor;->sampleSize:I

    if-eq p1, p2, :cond_3

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 98
    :cond_3
    invoke-direct {p0}, Lcom/oculus/video/source/hls/WebvttExtractor;->processSample()V

    return v3
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 69
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public sniff(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 57
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
