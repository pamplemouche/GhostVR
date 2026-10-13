.class final Lcom/oculus/android/exoplayer2/MediaPeriodHolder;
.super Ljava/lang/Object;
.source "MediaPeriodHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPeriodHolder"


# instance fields
.field public hasEnabledTracks:Z

.field public info:Lcom/oculus/android/exoplayer2/MediaPeriodInfo;

.field public final mayRetainStreamFlags:[Z

.field public final mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

.field private final mediaSource:Lcom/oculus/android/exoplayer2/source/MediaSource;

.field public next:Lcom/oculus/android/exoplayer2/MediaPeriodHolder;

.field private periodTrackSelectorResult:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;

.field public prepared:Z

.field private final rendererCapabilities:[Lcom/oculus/android/exoplayer2/RendererCapabilities;

.field public rendererPositionOffsetUs:J

.field public final sampleStreams:[Lcom/oculus/android/exoplayer2/source/SampleStream;

.field private final trackSelector:Lcom/oculus/android/exoplayer2/trackselection/TrackSelector;

.field public trackSelectorResult:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Lcom/oculus/android/exoplayer2/RendererCapabilities;JLcom/oculus/android/exoplayer2/trackselection/TrackSelector;Lcom/oculus/android/exoplayer2/upstream/Allocator;Lcom/oculus/android/exoplayer2/source/MediaSource;Ljava/lang/Object;Lcom/oculus/android/exoplayer2/MediaPeriodInfo;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lcom/oculus/android/exoplayer2/RendererCapabilities;

    .line 75
    iget-wide v0, p8, Lcom/oculus/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 76
    iput-object p4, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->trackSelector:Lcom/oculus/android/exoplayer2/trackselection/TrackSelector;

    .line 77
    iput-object p6, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->mediaSource:Lcom/oculus/android/exoplayer2/source/MediaSource;

    .line 78
    invoke-static {p7}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    .line 79
    iput-object p8, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->info:Lcom/oculus/android/exoplayer2/MediaPeriodInfo;

    .line 80
    array-length p2, p1

    new-array p2, p2, [Lcom/oculus/android/exoplayer2/source/SampleStream;

    iput-object p2, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/oculus/android/exoplayer2/source/SampleStream;

    .line 81
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    .line 82
    iget-object p1, p8, Lcom/oculus/android/exoplayer2/MediaPeriodInfo;->id:Lcom/oculus/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {p6, p1, p5}, Lcom/oculus/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/oculus/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/oculus/android/exoplayer2/upstream/Allocator;)Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    .line 83
    iget-wide p2, p8, Lcom/oculus/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    const-wide/high16 p4, -0x8000000000000000L

    cmp-long p6, p2, p4

    if-eqz p6, :cond_0

    .line 84
    new-instance p2, Lcom/oculus/android/exoplayer2/source/ClippingMediaPeriod;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Lcom/oculus/android/exoplayer2/source/ClippingMediaPeriod;-><init>(Lcom/oculus/android/exoplayer2/source/MediaPeriod;Z)V

    const-wide/16 p3, 0x0

    .line 85
    iget-wide p5, p8, Lcom/oculus/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    invoke-virtual {p2, p3, p4, p5, p6}, Lcom/oculus/android/exoplayer2/source/ClippingMediaPeriod;->setClipping(JJ)V

    move-object p1, p2

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    return-void
.end method

.method private associateNoSampleRenderersWithEmptySampleStream([Lcom/oculus/android/exoplayer2/source/SampleStream;)V
    .locals 3

    const/4 v0, 0x0

    .line 274
    :goto_0
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lcom/oculus/android/exoplayer2/RendererCapabilities;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 275
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/oculus/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;->renderersEnabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 277
    new-instance v1, Lcom/oculus/android/exoplayer2/source/EmptySampleStream;

    invoke-direct {v1}, Lcom/oculus/android/exoplayer2/source/EmptySampleStream;-><init>()V

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private disableTrackSelectionsInResult(Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;)V
    .locals 3

    const/4 v0, 0x0

    .line 248
    :goto_0
    iget-object v1, p1, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;->renderersEnabled:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 249
    iget-object v1, p1, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;->renderersEnabled:[Z

    aget-boolean v1, v1, v0

    .line 250
    iget-object v2, p1, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v2, v0}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 252
    invoke-interface {v2}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->disable()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private disassociateNoSampleRenderersWithEmptySampleStream([Lcom/oculus/android/exoplayer2/source/SampleStream;)V
    .locals 3

    const/4 v0, 0x0

    .line 262
    :goto_0
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lcom/oculus/android/exoplayer2/RendererCapabilities;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 263
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/oculus/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 264
    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private enableTrackSelectionsInResult(Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;)V
    .locals 3

    const/4 v0, 0x0

    .line 238
    :goto_0
    iget-object v1, p1, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;->renderersEnabled:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 239
    iget-object v1, p1, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;->renderersEnabled:[Z

    aget-boolean v1, v1, v0

    .line 240
    iget-object v2, p1, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v2, v0}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 242
    invoke-interface {v2}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->enable()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updatePeriodTrackSelectorResult(Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->periodTrackSelectorResult:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0, v0}, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->disableTrackSelectionsInResult(Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 231
    :cond_0
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->periodTrackSelectorResult:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 232
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->periodTrackSelectorResult:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;

    if-eqz p1, :cond_1

    .line 233
    invoke-direct {p0, p1}, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->enableTrackSelectionsInResult(Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public applyTrackSelection(JZ)J
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lcom/oculus/android/exoplayer2/RendererCapabilities;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->applyTrackSelection(JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public applyTrackSelection(JZ[Z)J
    .locals 13

    move-object v0, p0

    .line 177
    iget-object v1, v0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 178
    :goto_0
    iget v4, v1, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 179
    iget-object v4, v0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    if-nez p3, :cond_0

    iget-object v6, v0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v7, v0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->periodTrackSelectorResult:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 180
    invoke-virtual {v6, v7, v3}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    :cond_1
    iget-object v3, v0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/oculus/android/exoplayer2/source/SampleStream;

    invoke-direct {p0, v3}, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->disassociateNoSampleRenderersWithEmptySampleStream([Lcom/oculus/android/exoplayer2/source/SampleStream;)V

    .line 186
    iget-object v3, v0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-direct {p0, v3}, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->updatePeriodTrackSelectorResult(Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 188
    iget-object v6, v0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    .line 190
    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;->getAll()[Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v7

    iget-object v8, v0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    iget-object v9, v0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/oculus/android/exoplayer2/source/SampleStream;

    move-object/from16 v10, p4

    move-wide v11, p1

    .line 189
    invoke-interface/range {v6 .. v12}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/oculus/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v3

    .line 195
    iget-object v6, v0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/oculus/android/exoplayer2/source/SampleStream;

    invoke-direct {p0, v6}, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->associateNoSampleRenderersWithEmptySampleStream([Lcom/oculus/android/exoplayer2/source/SampleStream;)V

    .line 198
    iput-boolean v2, v0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->hasEnabledTracks:Z

    const/4 v6, 0x0

    .line 199
    :goto_2
    iget-object v7, v0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/oculus/android/exoplayer2/source/SampleStream;

    array-length v8, v7

    if-ge v6, v8, :cond_5

    .line 200
    aget-object v7, v7, v6

    if-eqz v7, :cond_2

    .line 201
    iget-object v7, v0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v7, v7, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;->renderersEnabled:[Z

    aget-boolean v7, v7, v6

    invoke-static {v7}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 203
    iget-object v7, v0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lcom/oculus/android/exoplayer2/RendererCapabilities;

    aget-object v7, v7, v6

    invoke-interface {v7}, Lcom/oculus/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_4

    .line 204
    iput-boolean v5, v0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->hasEnabledTracks:Z

    goto :goto_4

    .line 207
    :cond_2
    invoke-virtual {v1, v6}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    invoke-static {v7}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    return-wide v3
.end method

.method public continueLoading(J)V
    .locals 1

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide p1

    .line 152
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    return-void
.end method

.method public getBufferedPositionUs(Z)J
    .locals 5

    .line 122
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    .line 123
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->info:Lcom/oculus/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, p1, Lcom/oculus/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    return-wide v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->info:Lcom/oculus/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, p1, Lcom/oculus/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    :cond_1
    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->info:Lcom/oculus/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, v0, Lcom/oculus/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 132
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getRendererOffset()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->rendererPositionOffsetUs:J

    return-wide v0
.end method

.method public handlePrepared(F)Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    .line 137
    invoke-virtual {p0, p1}, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->selectTracks(F)Z

    .line 138
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->info:Lcom/oculus/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, p1, Lcom/oculus/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->applyTrackSelection(JZ)J

    move-result-wide v0

    .line 139
    iget-wide v2, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-object p1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->info:Lcom/oculus/android/exoplayer2/MediaPeriodInfo;

    iget-wide v4, p1, Lcom/oculus/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 140
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->info:Lcom/oculus/android/exoplayer2/MediaPeriodInfo;

    invoke-virtual {p1, v0, v1}, Lcom/oculus/android/exoplayer2/MediaPeriodInfo;->copyWithStartPositionUs(J)Lcom/oculus/android/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->info:Lcom/oculus/android/exoplayer2/MediaPeriodInfo;

    .line 141
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;

    return-object p1
.end method

.method public isFullyBuffered()Z
    .locals 5

    .line 104
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    .line 105
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->reevaluateBuffer(J)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 5

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, v0}, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->updatePeriodTrackSelectorResult(Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->info:Lcom/oculus/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, v0, Lcom/oculus/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 217
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->mediaSource:Lcom/oculus/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    check-cast v1, Lcom/oculus/android/exoplayer2/source/ClippingMediaPeriod;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v1}, Lcom/oculus/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/oculus/android/exoplayer2/source/MediaPeriod;)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->mediaSource:Lcom/oculus/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v1}, Lcom/oculus/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/oculus/android/exoplayer2/source/MediaPeriod;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    .line 223
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public selectTracks(F)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->trackSelector:Lcom/oculus/android/exoplayer2/trackselection/TrackSelector;

    iget-object v1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lcom/oculus/android/exoplayer2/RendererCapabilities;

    iget-object v2, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    .line 157
    invoke-interface {v2}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelector;->selectTracks([Lcom/oculus/android/exoplayer2/RendererCapabilities;Lcom/oculus/android/exoplayer2/source/TrackGroupArray;)Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->periodTrackSelectorResult:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v0, v1}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 161
    :cond_0
    iput-object v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 162
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;->getAll()[Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 164
    invoke-interface {v3, p1}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->onPlaybackSpeed(F)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public toPeriodTime(J)J
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public toRendererTime(J)J
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method
