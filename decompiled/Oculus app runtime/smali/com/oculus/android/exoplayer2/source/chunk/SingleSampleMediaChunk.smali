.class public final Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;
.super Lcom/oculus/android/exoplayer2/source/chunk/BaseMediaChunk;
.source "SingleSampleMediaChunk.java"


# instance fields
.field private volatile bytesLoaded:I

.field private volatile loadCanceled:Z

.field private volatile loadCompleted:Z

.field private final sampleFormat:Lcom/oculus/android/exoplayer2/Format;

.field private final trackType:I


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/upstream/DataSpec;Lcom/oculus/android/exoplayer2/Format;ILjava/lang/Object;JJJILcom/oculus/android/exoplayer2/Format;)V
    .locals 0

    .line 64
    invoke-direct/range {p0 .. p11}, Lcom/oculus/android/exoplayer2/source/chunk/BaseMediaChunk;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/upstream/DataSpec;Lcom/oculus/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    .line 66
    iput p12, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->trackType:I

    .line 67
    iput-object p13, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->sampleFormat:Lcom/oculus/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    .line 78
    iget v0, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCanceled:Z

    return-void
.end method

.method public isLoadCanceled()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCanceled:Z

    return v0
.end method

.method public isLoadCompleted()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public load()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    iget v1, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->subrange(J)Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    invoke-interface {v1, v0}, Lcom/oculus/android/exoplayer2/upstream/DataSource;->open(Lcom/oculus/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 101
    iget v2, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    :cond_0
    move-wide v5, v0

    .line 103
    new-instance v0, Lcom/oculus/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v2, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    iget v1, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v3, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/oculus/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;JJ)V

    .line 104
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->getOutput()Lcom/oculus/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 105
    invoke-virtual {v1, v2, v3}, Lcom/oculus/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    .line 106
    iget v2, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->trackType:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/oculus/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->track(II)Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    move-result-object v4

    .line 107
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->sampleFormat:Lcom/oculus/android/exoplayer2/Format;

    invoke-interface {v4, v1}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->format(Lcom/oculus/android/exoplayer2/Format;)V

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v3, v1, :cond_1

    .line 111
    iget v1, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    const v1, 0x7fffffff

    .line 112
    invoke-interface {v4, v0, v1, v2}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v3

    goto :goto_0

    .line 114
    :cond_1
    iget v8, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    .line 115
    iget-wide v5, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->startTimeUs:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/oculus/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->closeQuietly(Lcom/oculus/android/exoplayer2/upstream/DataSource;)V

    .line 119
    iput-boolean v2, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    return-void

    :catchall_0
    move-exception v0

    .line 117
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/Util;->closeQuietly(Lcom/oculus/android/exoplayer2/upstream/DataSource;)V

    throw v0
.end method
