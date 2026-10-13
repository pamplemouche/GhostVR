.class final Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/oculus/android/exoplayer2/upstream/Loader$ReleaseCallback;
.implements Lcom/oculus/android/exoplayer2/source/SequenceableLoader;
.implements Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;
.implements Lcom/oculus/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/oculus/android/exoplayer2/source/chunk/Chunk;",
        ">;",
        "Lcom/oculus/android/exoplayer2/upstream/Loader$ReleaseCallback;",
        "Lcom/oculus/android/exoplayer2/source/SequenceableLoader;",
        "Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;",
        "Lcom/oculus/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field private static final PRIMARY_TYPE_AUDIO:I = 0x2

.field private static final PRIMARY_TYPE_NONE:I = 0x0

.field private static final PRIMARY_TYPE_TEXT:I = 0x1

.field private static final PRIMARY_TYPE_VIDEO:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HlsSampleStreamWrapper"


# instance fields
.field private final allocator:Lcom/oculus/android/exoplayer2/upstream/Allocator;

.field private audioSampleQueueIndex:I

.field private audioSampleQueueMappingDone:Z

.field private final callback:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;

.field private final chunkSource:Lcom/oculus/video/source/hls/HlsChunkSource;

.field private downstreamTrackFormat:Lcom/oculus/android/exoplayer2/Format;

.field private enabledTrackGroupCount:I

.field private final eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoSampleQueues:Z

.field private lastSeekPositionUs:J

.field private final loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final mediaChunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oculus/video/source/hls/HlsMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final minLoadableRetryCount:I

.field private final muxedAudioFormat:Lcom/oculus/android/exoplayer2/Format;

.field private final nextChunkHolder:Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;

.field private final onTracksEndedRunnable:Ljava/lang/Runnable;

.field private pendingResetPositionUs:J

.field private pendingResetUpstreamFormats:Z

.field private prepared:Z

.field private primaryTrackGroupIndex:I

.field private released:Z

.field private sampleOffsetUs:J

.field private sampleQueueIsAudioVideoFlags:[Z

.field private sampleQueueTrackIds:[I

.field private sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

.field private sampleQueuesBuilt:Z

.field private sampleQueuesEnabledStates:[Z

.field private seenFirstTrackSelection:Z

.field private trackGroupToSampleQueueIndex:[I

.field private trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

.field private final trackType:I

.field private tracksEnded:Z

.field private videoSampleQueueIndex:I

.field private videoSampleQueueMappingDone:Z


# direct methods
.method public constructor <init>(ILcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;Lcom/oculus/video/source/hls/HlsChunkSource;Lcom/oculus/android/exoplayer2/upstream/Allocator;JLcom/oculus/android/exoplayer2/Format;ILcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackType:I

    .line 143
    iput-object p2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->callback:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;

    .line 144
    iput-object p3, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/oculus/video/source/hls/HlsChunkSource;

    .line 145
    iput-object p4, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->allocator:Lcom/oculus/android/exoplayer2/upstream/Allocator;

    .line 146
    iput-object p7, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lcom/oculus/android/exoplayer2/Format;

    .line 147
    iput p8, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->minLoadableRetryCount:I

    .line 148
    iput-object p9, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 149
    new-instance p1, Lcom/oculus/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    .line 150
    new-instance p1, Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-direct {p1}, Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;

    const/4 p1, 0x0

    .line 151
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    const/4 p2, -0x1

    .line 152
    iput p2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->audioSampleQueueIndex:I

    .line 153
    iput p2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->videoSampleQueueIndex:I

    .line 154
    new-array p2, p1, [Lcom/oculus/android/exoplayer2/source/SampleQueue;

    iput-object p2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    .line 155
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    .line 156
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    .line 157
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 158
    new-instance p1, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$1;

    invoke-direct {p1, p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$1;-><init>(Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;)V

    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 165
    new-instance p1, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$2;

    invoke-direct {p1, p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$2;-><init>(Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;)V

    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->onTracksEndedRunnable:Ljava/lang/Runnable;

    .line 172
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    .line 173
    iput-wide p5, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 174
    iput-wide p5, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->onTracksEnded()V

    return-void
.end method

.method private buildTracks()V
    .locals 14

    .line 832
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_0
    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ge v3, v0, :cond_5

    .line 834
    iget-object v8, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/oculus/android/exoplayer2/Format;

    move-result-object v8

    iget-object v8, v8, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 836
    invoke-static {v8}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    .line 838
    :cond_0
    invoke-static {v8}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    .line 840
    :cond_1
    invoke-static {v8}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-le v6, v4, :cond_3

    move v5, v3

    move v4, v6

    goto :goto_2

    :cond_3
    if-ne v6, v4, :cond_4

    if-eq v5, v1, :cond_4

    const/4 v5, -0x1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 856
    :cond_5
    iget-object v3, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/oculus/video/source/hls/HlsChunkSource;

    invoke-virtual {v3}, Lcom/oculus/video/source/hls/HlsChunkSource;->getTrackGroup()Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    .line 857
    iget v8, v3, Lcom/oculus/android/exoplayer2/source/TrackGroup;->length:I

    .line 860
    iput v1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 861
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_6

    .line 863
    iget-object v9, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aput v1, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 867
    :cond_6
    new-array v1, v0, [Lcom/oculus/android/exoplayer2/source/TrackGroup;

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v0, :cond_a

    .line 869
    iget-object v10, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/oculus/android/exoplayer2/Format;

    move-result-object v10

    if-ne v9, v5, :cond_8

    .line 871
    new-array v11, v8, [Lcom/oculus/android/exoplayer2/Format;

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v8, :cond_7

    .line 873
    invoke-virtual {v3, v12}, Lcom/oculus/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v13

    invoke-static {v13, v10, v7}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->deriveFormat(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/Format;Z)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 875
    :cond_7
    new-instance v10, Lcom/oculus/android/exoplayer2/source/TrackGroup;

    invoke-direct {v10, v11}, Lcom/oculus/android/exoplayer2/source/TrackGroup;-><init>([Lcom/oculus/android/exoplayer2/Format;)V

    aput-object v10, v1, v9

    .line 876
    iput v9, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    goto :goto_7

    :cond_8
    if-ne v4, v6, :cond_9

    .line 878
    iget-object v11, v10, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 879
    invoke-static {v11}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lcom/oculus/android/exoplayer2/Format;

    goto :goto_6

    :cond_9
    const/4 v11, 0x0

    .line 880
    :goto_6
    new-instance v12, Lcom/oculus/android/exoplayer2/source/TrackGroup;

    new-array v13, v7, [Lcom/oculus/android/exoplayer2/Format;

    invoke-static {v11, v10, v2}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->deriveFormat(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/Format;Z)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v10

    aput-object v10, v13, v2

    invoke-direct {v12, v13}, Lcom/oculus/android/exoplayer2/source/TrackGroup;-><init>([Lcom/oculus/android/exoplayer2/Format;)V

    aput-object v12, v1, v9

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 883
    :cond_a
    new-instance v0, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/oculus/android/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    return-void
.end method

.method private static createDummyTrackOutput(II)Lcom/oculus/android/exoplayer2/extractor/DummyTrackOutput;
    .locals 2

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmapped track with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HlsSampleStreamWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance p0, Lcom/oculus/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {p0}, Lcom/oculus/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    return-object p0
.end method

.method private static deriveFormat(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/Format;Z)Lcom/oculus/android/exoplayer2/Format;
    .locals 9

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 932
    iget p2, p0, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    move v4, p2

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    const/4 v4, -0x1

    .line 933
    :goto_0
    iget-object p2, p1, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p2}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p2

    .line 934
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/oculus/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 935
    invoke-static {v3}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 937
    iget-object p2, p1, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    :cond_2
    move-object v2, p2

    .line 939
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget v5, p0, Lcom/oculus/android/exoplayer2/Format;->width:I

    iget v6, p0, Lcom/oculus/android/exoplayer2/Format;->height:I

    iget v7, p0, Lcom/oculus/android/exoplayer2/Format;->selectionFlags:I

    iget-object v8, p0, Lcom/oculus/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/oculus/android/exoplayer2/Format;->copyWithContainerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method private finishedReadingChunk(Lcom/oculus/video/source/hls/HlsMediaChunk;)Z
    .locals 4

    .line 740
    iget p1, p1, Lcom/oculus/video/source/hls/HlsMediaChunk;->uid:I

    .line 741
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 743
    iget-object v3, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->peekSourceId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static formatsMatch(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/Format;)Z
    .locals 6

    .line 955
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 956
    iget-object v1, p1, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 957
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    .line 959
    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p0

    if-ne v2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 960
    :cond_1
    invoke-static {v0, v1}, Lcom/oculus/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v4

    :cond_2
    const-string v1, "application/cea-608"

    .line 963
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/cea-708"

    .line 964
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return v3

    .line 965
    :cond_4
    :goto_1
    iget p0, p0, Lcom/oculus/android/exoplayer2/Format;->accessibilityChannel:I

    iget p1, p1, Lcom/oculus/android/exoplayer2/Format;->accessibilityChannel:I

    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    return v3
.end method

.method private getLastMediaChunk()Lcom/oculus/video/source/hls/HlsMediaChunk;
    .locals 2

    .line 887
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/source/hls/HlsMediaChunk;

    return-object v0
.end method

.method private static isMediaChunk(Lcom/oculus/android/exoplayer2/source/chunk/Chunk;)Z
    .locals 0

    .line 951
    instance-of p0, p0, Lcom/oculus/video/source/hls/HlsMediaChunk;

    return p0
.end method

.method private isPendingReset()Z
    .locals 5

    .line 891
    iget-wide v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private mapSampleQueuesToMatchTrackGroups()V
    .locals 6

    .line 784
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    iget v0, v0, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->length:I

    .line 785
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    .line 786
    iget-object v1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    const/4 v3, 0x0

    .line 788
    :goto_1
    iget-object v4, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 789
    aget-object v4, v4, v3

    .line 790
    invoke-virtual {v4}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/oculus/android/exoplayer2/Format;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v5, v2}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/oculus/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->formatsMatch(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/Format;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 791
    iget-object v4, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aput v3, v4, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private maybeFinishPrepare()V
    .locals 4

    .line 763
    iget-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->released:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 767
    invoke-virtual {v3}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/oculus/android/exoplayer2/Format;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 771
    :cond_2
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    if-eqz v0, :cond_3

    .line 774
    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->mapSampleQueuesToMatchTrackGroups()V

    goto :goto_1

    .line 777
    :cond_3
    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->buildTracks()V

    const/4 v0, 0x1

    .line 778
    iput-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->prepared:Z

    .line 779
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->callback:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;->onPrepared()V

    :cond_4
    :goto_1
    return-void
.end method

.method private onTracksEnded()V
    .locals 1

    const/4 v0, 0x1

    .line 758
    iput-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    .line 759
    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    return-void
.end method

.method private resetSampleQueues()V
    .locals 6

    .line 751
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 752
    iget-boolean v5, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    invoke-virtual {v4, v5}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->reset(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 754
    :cond_0
    iput-boolean v2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    return-void
.end method

.method private seekInsideBufferUs(J)Z
    .locals 6

    .line 901
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 903
    iget-object v4, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object v4, v4, v2

    .line 904
    invoke-virtual {v4}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 905
    invoke-virtual {v4, p1, p2, v3, v1}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 911
    iget-object v3, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method


# virtual methods
.method public bindSampleQueueToSampleStream(I)I
    .locals 3

    .line 210
    invoke-virtual {p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->isMappingFinished()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget p1, v0, p1

    if-ne p1, v1, :cond_1

    return v1

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v2, v0, p1

    if-eqz v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x1

    .line 221
    aput-boolean v1, v0, p1

    return p1
.end method

.method public continueLoading(J)Z
    .locals 21

    move-object/from16 v0, p0

    .line 507
    iget-boolean v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    const/4 v2, 0x0

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 513
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 515
    iget-wide v3, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    goto :goto_0

    .line 517
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/oculus/video/source/hls/HlsMediaChunk;

    move-result-object v1

    .line 518
    iget-wide v3, v1, Lcom/oculus/video/source/hls/HlsMediaChunk;->endTimeUs:J

    :goto_0
    move-object v6, v1

    move-wide v9, v3

    .line 520
    iget-object v5, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/oculus/video/source/hls/HlsChunkSource;

    iget-object v11, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;

    move-wide/from16 v7, p1

    invoke-virtual/range {v5 .. v11}, Lcom/oculus/video/source/hls/HlsChunkSource;->getNextChunk(Lcom/oculus/video/source/hls/HlsMediaChunk;JJLcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;)V

    .line 521
    iget-object v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-boolean v1, v1, Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    .line 522
    iget-object v3, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-object v3, v3, Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/oculus/android/exoplayer2/source/chunk/Chunk;

    .line 523
    iget-object v4, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-object v4, v4, Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 524
    iget-object v5, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-virtual {v5}, Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;->clear()V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    .line 527
    iput-wide v5, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 528
    iput-boolean v7, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    return v7

    :cond_2
    if-nez v3, :cond_4

    if-eqz v4, :cond_3

    .line 534
    iget-object v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->callback:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1, v4}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;->onPlaylistRefreshRequired(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    :cond_3
    return v2

    .line 539
    :cond_4
    invoke-static {v3}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Lcom/oculus/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 540
    iput-wide v5, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 541
    move-object v1, v3

    check-cast v1, Lcom/oculus/video/source/hls/HlsMediaChunk;

    .line 542
    invoke-virtual {v1, v0}, Lcom/oculus/video/source/hls/HlsMediaChunk;->init(Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;)V

    .line 543
    iget-object v2, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_5
    iget-object v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    iget v2, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->minLoadableRetryCount:I

    invoke-virtual {v1, v3, v0, v2}, Lcom/oculus/android/exoplayer2/upstream/Loader;->startLoading(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;Lcom/oculus/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v19

    .line 546
    iget-object v8, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v9, v3, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    iget v10, v3, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v11, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v12, v3, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/oculus/android/exoplayer2/Format;

    iget v13, v3, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v14, v3, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v1, v3, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v3, v3, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-wide v15, v1

    move-wide/from16 v17, v3

    invoke-virtual/range {v8 .. v20}, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IILcom/oculus/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    return v7

    :cond_6
    :goto_1
    return v2
.end method

.method public continuePreparing()V
    .locals 2

    .line 178
    iget-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v0, :cond_0

    .line 179
    iget-wide v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {p0, v0, v1}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    :cond_0
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 354
    iget-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 359
    iget-object v2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public endTracks()V
    .locals 2

    const/4 v0, 0x1

    .line 712
    iput-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    .line 713
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->onTracksEndedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 7

    .line 474
    iget-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 476
    :cond_0
    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    iget-wide v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-wide v0

    .line 479
    :cond_1
    iget-wide v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 480
    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/oculus/video/source/hls/HlsMediaChunk;

    move-result-object v2

    .line 481
    invoke-virtual {v2}, Lcom/oculus/video/source/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 482
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/video/source/hls/HlsMediaChunk;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 484
    iget-wide v2, v2, Lcom/oculus/video/source/hls/HlsMediaChunk;->endTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 486
    :cond_4
    iget-boolean v2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v2, :cond_5

    .line 487
    iget-object v2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 489
    invoke-virtual {v5}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 498
    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-wide v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-wide v0

    .line 501
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/oculus/video/source/hls/HlsMediaChunk;

    move-result-object v0

    iget-wide v0, v0, Lcom/oculus/video/source/hls/HlsMediaChunk;->endTimeUs:J

    :goto_0
    return-wide v0
.end method

.method public getTrackGroups()Lcom/oculus/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public init(IZZ)V
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 632
    iput-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->audioSampleQueueMappingDone:Z

    .line 633
    iput-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->videoSampleQueueMappingDone:Z

    .line 635
    :cond_0
    iget-object p3, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 636
    invoke-virtual {v3, p1}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->sourceId(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 639
    iget-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object p3, p1, v0

    .line 640
    invoke-virtual {p3}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->splice()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public isMappingFinished()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady(I)Z
    .locals 1

    .line 418
    iget-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 423
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/oculus/video/source/hls/HlsChunkSource;

    invoke-virtual {v0}, Lcom/oculus/video/source/hls/HlsChunkSource;->maybeThrowError()V

    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    return-void
.end method

.method public onLoadCanceled(Lcom/oculus/android/exoplayer2/source/chunk/Chunk;JJZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    .line 575
    iget-object v2, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    iget v4, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v5, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v6, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/oculus/android/exoplayer2/Format;

    iget v7, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v8, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v11, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 577
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v17

    .line 575
    invoke-virtual/range {v2 .. v18}, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IILcom/oculus/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_0

    .line 579
    invoke-direct/range {p0 .. p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    .line 580
    iget v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-lez v1, :cond_0

    .line 581
    iget-object v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->callback:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1, v0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 54
    check-cast p1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p6}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->onLoadCanceled(Lcom/oculus/android/exoplayer2/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/oculus/android/exoplayer2/source/chunk/Chunk;JJ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    .line 561
    iget-object v2, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/oculus/video/source/hls/HlsChunkSource;

    invoke-virtual {v2, v1}, Lcom/oculus/video/source/hls/HlsChunkSource;->onChunkLoadCompleted(Lcom/oculus/android/exoplayer2/source/chunk/Chunk;)V

    .line 562
    iget-object v2, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    iget v4, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v5, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v6, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/oculus/android/exoplayer2/Format;

    iget v7, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v8, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v11, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 564
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v17

    .line 562
    invoke-virtual/range {v2 .. v18}, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IILcom/oculus/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 565
    iget-boolean v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v1, :cond_0

    .line 566
    iget-wide v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    goto :goto_0

    .line 568
    :cond_0
    iget-object v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->callback:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1, v0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 54
    check-cast p1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p5}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->onLoadCompleted(Lcom/oculus/android/exoplayer2/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Lcom/oculus/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p6

    .line 589
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v2

    .line 590
    invoke-static/range {p1 .. p1}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Lcom/oculus/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v4

    const/16 v21, 0x0

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 593
    :goto_1
    iget-object v3, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/oculus/video/source/hls/HlsChunkSource;

    invoke-virtual {v3, v1, v2, v15}, Lcom/oculus/video/source/hls/HlsChunkSource;->onChunkLoadError(Lcom/oculus/android/exoplayer2/source/chunk/Chunk;ZLjava/io/IOException;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v4, :cond_3

    .line 595
    iget-object v2, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/video/source/hls/HlsMediaChunk;

    if-ne v2, v1, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 596
    :goto_2
    invoke-static {v2}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 597
    iget-object v2, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 598
    iget-wide v2, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    iput-wide v2, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    :cond_3
    const/16 v22, 0x1

    goto :goto_3

    :cond_4
    const/16 v22, 0x0

    .line 603
    :goto_3
    iget-object v2, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    iget v4, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v5, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v6, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/oculus/android/exoplayer2/Format;

    iget v7, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v8, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v11, v1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 605
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v17

    move-wide/from16 v13, p2

    move-object v1, v15

    move-wide/from16 v15, p4

    move-object/from16 v19, p6

    move/from16 v20, v22

    .line 603
    invoke-virtual/range {v2 .. v20}, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IILcom/oculus/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v22, :cond_6

    .line 608
    iget-boolean v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v1, :cond_5

    .line 609
    iget-wide v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    goto :goto_4

    .line 611
    :cond_5
    iget-object v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->callback:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1, v0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)V

    :goto_4
    const/4 v1, 0x2

    return v1

    .line 615
    :cond_6
    instance-of v1, v1, Lcom/oculus/android/exoplayer2/ParserException;

    if-eqz v1, :cond_7

    const/16 v21, 0x3

    :cond_7
    return v21
.end method

.method public bridge synthetic onLoadError(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 0

    .line 54
    check-cast p1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p6}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->onLoadError(Lcom/oculus/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public onLoaderReleased()V
    .locals 0

    .line 404
    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    return-void
.end method

.method public onPlaylistBlacklisted(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/oculus/video/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/video/source/hls/HlsChunkSource;->onPlaylistBlacklisted(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V

    return-void
.end method

.method public onUpstreamFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V
    .locals 1

    .line 725
    iget-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepareWithMasterPlaylistInfo(Lcom/oculus/android/exoplayer2/source/TrackGroupArray;I)V
    .locals 1

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->prepared:Z

    .line 192
    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    .line 193
    iput p2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 194
    iget-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->callback:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {p1}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;->onPrepared()V

    return-void
.end method

.method public readData(ILcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 9

    .line 428
    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 435
    :goto_0
    iget-object v2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 436
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/video/source/hls/HlsMediaChunk;

    invoke-direct {p0, v2}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->finishedReadingChunk(Lcom/oculus/video/source/hls/HlsMediaChunk;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    .line 440
    iget-object v2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Lcom/oculus/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    .line 442
    :cond_2
    iget-object v1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/source/hls/HlsMediaChunk;

    .line 443
    iget-object v8, v0, Lcom/oculus/video/source/hls/HlsMediaChunk;->trackFormat:Lcom/oculus/android/exoplayer2/Format;

    .line 444
    iget-object v1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/oculus/android/exoplayer2/Format;

    invoke-virtual {v8, v1}, Lcom/oculus/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 445
    iget-object v1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget v4, v0, Lcom/oculus/video/source/hls/HlsMediaChunk;->trackSelectionReason:I

    iget-object v5, v0, Lcom/oculus/video/source/hls/HlsMediaChunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v6, v0, Lcom/oculus/video/source/hls/HlsMediaChunk;->startTimeUs:J

    move-object v3, v8

    invoke-virtual/range {v1 .. v7}, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/oculus/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 449
    :cond_3
    iput-object v8, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/oculus/android/exoplayer2/Format;

    .line 452
    :cond_4
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object v1, v0, p1

    iget-boolean v5, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    iget-wide v6, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->read(Lcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result p1

    return p1
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 4

    .line 390
    iget-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 394
    invoke-virtual {v3}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/oculus/android/exoplayer2/upstream/Loader;->release(Lcom/oculus/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    .line 398
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 399
    iput-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->released:Z

    return-void
.end method

.method public seekMap(Lcom/oculus/android/exoplayer2/extractor/SeekMap;)V
    .locals 0

    return-void
.end method

.method public seekToUs(JZ)Z
    .locals 2

    .line 372
    iput-wide p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 374
    iget-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->seekInsideBufferUs(J)Z

    move-result p3

    if-eqz p3, :cond_0

    return v1

    .line 378
    :cond_0
    iput-wide p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 379
    iput-boolean v1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 380
    iget-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 381
    iget-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 382
    iget-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_0

    .line 384
    :cond_1
    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public selectTracks([Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/oculus/android/exoplayer2/source/SampleStream;[ZJZ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v10, p5

    .line 250
    iget-boolean v3, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->prepared:Z

    invoke-static {v3}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 251
    iget v3, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 253
    :goto_0
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v13, 0x1

    if-ge v4, v5, :cond_2

    .line 254
    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    aget-boolean v5, p2, v4

    if-nez v5, :cond_1

    .line 255
    :cond_0
    iget v5, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    sub-int/2addr v5, v13

    iput v5, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    .line 256
    aget-object v5, v2, v4

    check-cast v5, Lcom/oculus/video/source/hls/HlsSampleStream;

    invoke-virtual {v5}, Lcom/oculus/video/source/hls/HlsSampleStream;->unbindSampleQueue()V

    .line 257
    aput-object v6, v2, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez p7, :cond_5

    .line 263
    iget-boolean v4, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    if-eqz v4, :cond_3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-wide v3, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    cmp-long v5, v10, v3

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    .line 270
    :goto_2
    iget-object v4, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/oculus/video/source/hls/HlsChunkSource;

    invoke-virtual {v4}, Lcom/oculus/video/source/hls/HlsChunkSource;->getTrackSelection()Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v4

    move v15, v3

    move-object v14, v4

    const/4 v3, 0x0

    .line 273
    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_9

    .line 274
    aget-object v5, v2, v3

    if-nez v5, :cond_8

    aget-object v5, v1, v3

    if-eqz v5, :cond_8

    .line 275
    iget v5, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    add-int/2addr v5, v13

    iput v5, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    .line 276
    aget-object v5, v1, v3

    .line 277
    iget-object v7, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {v5}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/oculus/android/exoplayer2/source/TrackGroup;)I

    move-result v7

    .line 278
    iget v8, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    if-ne v7, v8, :cond_6

    .line 280
    iget-object v8, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/oculus/video/source/hls/HlsChunkSource;

    invoke-virtual {v8, v5}, Lcom/oculus/video/source/hls/HlsChunkSource;->selectTracks(Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;)V

    move-object v14, v5

    .line 282
    :cond_6
    new-instance v5, Lcom/oculus/video/source/hls/HlsSampleStream;

    invoke-direct {v5, v0, v7}, Lcom/oculus/video/source/hls/HlsSampleStream;-><init>(Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;I)V

    aput-object v5, v2, v3

    .line 283
    aput-boolean v13, p4, v3

    .line 285
    iget-boolean v5, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v5, :cond_8

    if-nez v15, :cond_8

    .line 286
    iget-object v5, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    iget-object v8, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget v7, v8, v7

    aget-object v5, v5, v7

    .line 287
    invoke-virtual {v5}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 292
    invoke-virtual {v5, v10, v11, v13, v13}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    .line 293
    invoke-virtual {v5}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v15, 0x1

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 298
    :cond_9
    iget v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-nez v1, :cond_c

    .line 299
    iget-object v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/oculus/video/source/hls/HlsChunkSource;

    invoke-virtual {v1}, Lcom/oculus/video/source/hls/HlsChunkSource;->reset()V

    .line 300
    iput-object v6, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/oculus/android/exoplayer2/Format;

    .line 301
    iget-object v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 302
    iget-object v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 303
    iget-boolean v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v1, :cond_a

    .line 305
    iget-object v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v2, v1

    :goto_5
    if-ge v12, v2, :cond_a

    aget-object v3, v1, v12

    .line 306
    invoke-virtual {v3}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 309
    :cond_a
    iget-object v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_a

    .line 311
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    goto :goto_a

    .line 314
    :cond_c
    iget-object v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 315
    invoke-static {v14, v4}, Lcom/oculus/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 319
    iget-boolean v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    if-nez v1, :cond_f

    const-wide/16 v3, 0x0

    cmp-long v1, v10, v3

    if-gez v1, :cond_d

    neg-long v3, v10

    :cond_d
    move-wide v6, v3

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, v14

    move-wide/from16 v4, p5

    .line 321
    invoke-interface/range {v3 .. v9}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(JJJ)V

    .line 322
    iget-object v1, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/oculus/video/source/hls/HlsChunkSource;

    invoke-virtual {v1}, Lcom/oculus/video/source/hls/HlsChunkSource;->getTrackGroup()Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/oculus/video/source/hls/HlsMediaChunk;

    move-result-object v3

    iget-object v3, v3, Lcom/oculus/video/source/hls/HlsMediaChunk;->trackFormat:Lcom/oculus/android/exoplayer2/Format;

    invoke-virtual {v1, v3}, Lcom/oculus/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/oculus/android/exoplayer2/Format;)I

    move-result v1

    .line 323
    invoke-interface {v14}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v3

    if-eq v3, v1, :cond_e

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v1, 0x1

    :goto_7
    if-eqz v1, :cond_10

    .line 335
    iput-boolean v13, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    const/4 v1, 0x1

    const/4 v15, 0x1

    goto :goto_8

    :cond_10
    move/from16 v1, p7

    :goto_8
    if-eqz v15, :cond_12

    .line 339
    invoke-virtual {v0, v10, v11, v1}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    .line 341
    :goto_9
    array-length v1, v2

    if-ge v12, v1, :cond_12

    .line 342
    aget-object v1, v2, v12

    if-eqz v1, :cond_11

    .line 343
    aput-boolean v13, p4, v12

    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 349
    :cond_12
    :goto_a
    iput-boolean v13, v0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    return v15
.end method

.method public setIsTimestampMaster(Z)V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/oculus/video/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1}, Lcom/oculus/video/source/hls/HlsChunkSource;->setIsTimestampMaster(Z)V

    return-void
.end method

.method public setSampleOffsetUs(J)V
    .locals 4

    .line 731
    iput-wide p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    .line 732
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 733
    invoke-virtual {v3, p1, p2}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->setSampleOffsetUs(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public skipData(IJ)I
    .locals 4

    .line 457
    invoke-direct {p0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object p1, v0, p1

    .line 462
    iget-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 463
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->advanceToEnd()I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x1

    .line 465
    invoke-virtual {p1, p2, p3, v0, v0}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    :cond_2
    return p1
.end method

.method public track(II)Lcom/oculus/android/exoplayer2/extractor/TrackOutput;
    .locals 8

    .line 649
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne p2, v5, :cond_3

    .line 653
    iget v6, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->audioSampleQueueIndex:I

    if-eq v6, v3, :cond_2

    .line 654
    iget-boolean v1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->audioSampleQueueMappingDone:Z

    if-eqz v1, :cond_1

    .line 655
    iget-object v1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aget v1, v1, v6

    if-ne v1, p1, :cond_0

    aget-object p1, v0, v6

    goto :goto_0

    .line 657
    :cond_0
    invoke-static {p1, p2}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->createDummyTrackOutput(II)Lcom/oculus/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object p1

    :goto_0
    return-object p1

    .line 659
    :cond_1
    iput-boolean v5, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->audioSampleQueueMappingDone:Z

    .line 660
    iget-object p2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aput p1, p2, v6

    .line 661
    aget-object p1, v0, v6

    return-object p1

    .line 662
    :cond_2
    iget-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    if-eqz v0, :cond_a

    .line 663
    invoke-static {p1, p2}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->createDummyTrackOutput(II)Lcom/oculus/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p2, v4, :cond_7

    .line 666
    iget v6, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->videoSampleQueueIndex:I

    if-eq v6, v3, :cond_6

    .line 667
    iget-boolean v1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->videoSampleQueueMappingDone:Z

    if-eqz v1, :cond_5

    .line 668
    iget-object v1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aget v1, v1, v6

    if-ne v1, p1, :cond_4

    aget-object p1, v0, v6

    goto :goto_1

    .line 670
    :cond_4
    invoke-static {p1, p2}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->createDummyTrackOutput(II)Lcom/oculus/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object p1

    :goto_1
    return-object p1

    .line 672
    :cond_5
    iput-boolean v5, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->videoSampleQueueMappingDone:Z

    .line 673
    iget-object p2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aput p1, p2, v6

    .line 674
    aget-object p1, v0, v6

    return-object p1

    .line 675
    :cond_6
    iget-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    if-eqz v0, :cond_a

    .line 676
    invoke-static {p1, p2}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->createDummyTrackOutput(II)Lcom/oculus/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_9

    .line 680
    iget-object v3, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_8

    .line 681
    iget-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object p1, p1, v0

    return-object p1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 684
    :cond_9
    iget-boolean v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    if-eqz v0, :cond_a

    .line 685
    invoke-static {p1, p2}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->createDummyTrackOutput(II)Lcom/oculus/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object p1

    return-object p1

    .line 688
    :cond_a
    new-instance v0, Lcom/oculus/android/exoplayer2/source/SampleQueue;

    iget-object v3, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->allocator:Lcom/oculus/android/exoplayer2/upstream/Allocator;

    invoke-direct {v0, v3}, Lcom/oculus/android/exoplayer2/source/SampleQueue;-><init>(Lcom/oculus/android/exoplayer2/upstream/Allocator;)V

    .line 689
    iget-wide v6, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    invoke-virtual {v0, v6, v7}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->setSampleOffsetUs(J)V

    .line 690
    invoke-virtual {v0, p0}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->setUpstreamFormatChangeListener(Lcom/oculus/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 691
    iget-object v3, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    add-int/lit8 v6, v1, 0x1

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    .line 692
    iget-object v3, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aput p1, v3, v1

    .line 693
    iget-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/oculus/android/exoplayer2/source/SampleQueue;

    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    .line 694
    iget-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aput-object v0, p1, v1

    .line 695
    iget-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    .line 696
    iget-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    if-eq p2, v5, :cond_b

    if-ne p2, v4, :cond_c

    :cond_b
    const/4 v2, 0x1

    :cond_c
    aput-boolean v2, p1, v1

    .line 698
    iget-boolean p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    iget-object v2, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    aget-boolean v2, v2, v1

    or-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    if-ne p2, v5, :cond_d

    .line 700
    iput-boolean v5, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->audioSampleQueueMappingDone:Z

    .line 701
    iput v1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->audioSampleQueueIndex:I

    goto :goto_3

    :cond_d
    if-ne p2, v4, :cond_e

    .line 703
    iput-boolean v5, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->videoSampleQueueMappingDone:Z

    .line 704
    iput v1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->videoSampleQueueIndex:I

    .line 706
    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    return-object v0
.end method

.method public unbindSampleQueue(I)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget p1, v0, p1

    .line 227
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 228
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method
