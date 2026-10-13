.class final Lcom/oculus/video/source/hls/HlsSampleStream;
.super Ljava/lang/Object;
.source "HlsSampleStream.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/source/SampleStream;


# instance fields
.field private sampleQueueIndex:I

.field private final sampleStreamWrapper:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

.field private final trackGroupIndex:I


# direct methods
.method public constructor <init>(Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    .line 37
    iput p2, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->trackGroupIndex:I

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleQueueIndex:I

    return-void
.end method

.method private ensureBoundSampleQueue()Z
    .locals 4

    .line 83
    iget v0, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    iget v3, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->trackGroupIndex:I

    invoke-virtual {v0, v3}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->bindSampleQueueToSampleStream(I)I

    move-result v0

    iput v0, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleQueueIndex:I

    .line 87
    iget v0, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleQueueIndex:I

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public isReady()Z
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStream;->ensureBoundSampleQueue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleQueueIndex:I

    invoke-virtual {v0, v1}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->isReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeThrowError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStream;->ensureBoundSampleQueue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->isMappingFinished()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lcom/oculus/android/exoplayer2/source/hls/SampleQueueMappingException;

    iget-object v1, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    .line 59
    invoke-virtual {v1}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    iget v2, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->trackGroupIndex:I

    invoke-virtual {v1, v2}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oculus/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/source/hls/SampleQueueMappingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    return-void
.end method

.method public readData(Lcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStream;->ensureBoundSampleQueue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleQueueIndex:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->readData(ILcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    return p1
.end method

.method public skipData(J)I
    .locals 2

    .line 74
    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStream;->ensureBoundSampleQueue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleQueueIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->skipData(IJ)I

    move-result p1

    return p1
.end method

.method public unbindSampleQueue()V
    .locals 3

    .line 42
    iget v0, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    iget v2, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->trackGroupIndex:I

    invoke-virtual {v0, v2}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->unbindSampleQueue(I)V

    .line 44
    iput v1, p0, Lcom/oculus/video/source/hls/HlsSampleStream;->sampleQueueIndex:I

    :cond_0
    return-void
.end method
