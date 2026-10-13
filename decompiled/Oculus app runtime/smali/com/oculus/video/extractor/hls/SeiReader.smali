.class final Lcom/oculus/video/extractor/hls/SeiReader;
.super Ljava/lang/Object;
.source "SeiReader.java"


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final outputs:[Lcom/oculus/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oculus/video/extractor/hls/SeiReader;->closedCaptionFormats:Ljava/util/List;

    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/SeiReader;->outputs:[Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public consume(JLcom/oculus/android/exoplayer2/util/ParsableByteArray;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/SeiReader;->outputs:[Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    invoke-static {p1, p2, p3, v0}, Lcom/oculus/android/exoplayer2/text/cea/CeaUtil;->consume(JLcom/oculus/android/exoplayer2/util/ParsableByteArray;[Lcom/oculus/android/exoplayer2/extractor/TrackOutput;)V

    return-void
.end method

.method public createTracks(Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    :goto_0
    iget-object v2, p0, Lcom/oculus/video/extractor/hls/SeiReader;->outputs:[Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 32
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 33
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    move-result-object v2

    .line 34
    iget-object v3, p0, Lcom/oculus/video/extractor/hls/SeiReader;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/android/exoplayer2/Format;

    .line 35
    iget-object v5, v3, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v4, "application/cea-608"

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "application/cea-708"

    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid closed caption mime type provided: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-static {v4, v6}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 39
    iget-object v4, v3, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v4

    :goto_3
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 40
    iget v8, v3, Lcom/oculus/android/exoplayer2/Format;->selectionFlags:I

    iget-object v9, v3, Lcom/oculus/android/exoplayer2/Format;->language:Ljava/lang/String;

    iget v10, v3, Lcom/oculus/android/exoplayer2/Format;->accessibilityChannel:I

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/oculus/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/oculus/android/exoplayer2/drm/DrmInitData;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->format(Lcom/oculus/android/exoplayer2/Format;)V

    .line 43
    iget-object v3, p0, Lcom/oculus/video/extractor/hls/SeiReader;->outputs:[Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
