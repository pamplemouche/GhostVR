.class public Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;
.super Ljava/lang/Object;
.source "OculusExtractorMediaPeriod.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/source/MediaPeriod;
.implements Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;
.implements Lcom/oculus/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/oculus/android/exoplayer2/upstream/Loader$ReleaseCallback;
.implements Lcom/oculus/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;,
        Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;,
        Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;,
        Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/android/exoplayer2/source/MediaPeriod;",
        "Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;",
        "Lcom/oculus/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;",
        ">;",
        "Lcom/oculus/android/exoplayer2/upstream/Loader$ReleaseCallback;",
        "Lcom/oculus/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LAST_SAMPLE_DURATION_US:J = 0x2710L


# instance fields
.field private actualMinLoadableRetryCount:I

.field private final allocator:Lcom/oculus/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

.field private final continueLoadingCheckIntervalBytes:J

.field private final customCacheKey:Ljava/lang/String;

.field private final dataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

.field private durationUs:J

.field private enabledTrackCount:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;

.field private extractedSamplesCountAtStartOfLoad:I

.field private final extractorHolder:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoTracks:Z

.field private lastSeekPositionUs:J

.field private length:J

.field private final listener:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$Listener;

.field private final loadCondition:Lcom/oculus/android/exoplayer2/util/ConditionVariable;

.field private final loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final minLoadableRetryCount:I

.field private notifyDiscontinuity:Z

.field private final onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

.field private pendingDeferredRetry:Z

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private released:Z

.field private sampleQueueTrackIds:[I

.field private sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

.field private sampleQueuesBuilt:Z

.field private seekMap:Lcom/oculus/android/exoplayer2/extractor/SeekMap;

.field private seenFirstTrackSelection:Z

.field private trackEnabledStates:[Z

.field private trackIsAudioVideoFlags:[Z

.field private tracks:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource;[Lcom/oculus/android/exoplayer2/extractor/Extractor;ILandroid/os/Handler;Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$Listener;Lcom/oculus/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->uri:Landroid/net/Uri;

    .line 130
    iput-object p3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->dataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    .line 131
    iput p5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->minLoadableRetryCount:I

    .line 132
    iput-object p6, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->eventHandler:Landroid/os/Handler;

    .line 133
    iput-object p7, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->eventListener:Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;

    .line 134
    iput-object p8, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->listener:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$Listener;

    .line 135
    iput-object p9, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->allocator:Lcom/oculus/android/exoplayer2/upstream/Allocator;

    .line 136
    iput-object p10, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->customCacheKey:Ljava/lang/String;

    int-to-long p2, p11

    .line 137
    iput-wide p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->continueLoadingCheckIntervalBytes:J

    .line 138
    new-instance p2, Lcom/oculus/android/exoplayer2/upstream/Loader;

    const-string p3, "Loader:OculusExtractorMediaPeriod"

    invoke-direct {p2, p3}, Lcom/oculus/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    .line 139
    new-instance p2, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;

    invoke-direct {p2, p1, p4, p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;-><init>(Landroid/content/Context;[Lcom/oculus/android/exoplayer2/extractor/Extractor;Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;)V

    iput-object p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->extractorHolder:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;

    .line 140
    new-instance p1, Lcom/oculus/android/exoplayer2/util/ConditionVariable;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loadCondition:Lcom/oculus/android/exoplayer2/util/ConditionVariable;

    .line 141
    new-instance p1, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$1;

    invoke-direct {p1, p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$1;-><init>(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)V

    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 147
    new-instance p1, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$2;

    invoke-direct {p1, p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$2;-><init>(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)V

    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    .line 155
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 156
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueueTrackIds:[I

    .line 157
    new-array p1, p1, [Lcom/oculus/android/exoplayer2/source/SampleQueue;

    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 158
    iput-wide p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->pendingResetPositionUs:J

    const-wide/16 p3, -0x1

    .line 159
    iput-wide p3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->length:J

    .line 160
    iput-wide p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->durationUs:J

    const/4 p1, -0x1

    if-ne p5, p1, :cond_0

    const/4 p5, 0x3

    .line 162
    :cond_0
    iput p5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->maybeFinishPrepare()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->released:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->eventListener:Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->customCacheKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->continueLoadingCheckIntervalBytes:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)Ljava/lang/Runnable;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private configureRetry(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;I)Z
    .locals 6

    .line 601
    iget-wide v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->length:J

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->seekMap:Lcom/oculus/android/exoplayer2/extractor/SeekMap;

    if-eqz v0, :cond_0

    .line 602
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_1

    .line 607
    :cond_0
    iget-boolean p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->prepared:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->suppressRead()Z

    move-result p2

    if-nez p2, :cond_1

    .line 617
    iput-boolean v2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->pendingDeferredRetry:Z

    return v0

    .line 624
    :cond_1
    iget-boolean p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->prepared:Z

    iput-boolean p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->notifyDiscontinuity:Z

    const-wide/16 v3, 0x0

    .line 625
    iput-wide v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->lastSeekPositionUs:J

    .line 626
    iput v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 627
    iget-object p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v5, p2, v0

    .line 628
    invoke-virtual {v5}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    :cond_2
    invoke-virtual {p1, v3, v4, v3, v4}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    return v2

    .line 605
    :cond_3
    :goto_1
    iput p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    return v2
.end method

.method private copyLengthFromLoader(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;)V
    .locals 5

    .line 577
    iget-wide v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 578
    invoke-static {p1}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->access$400(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->length:J

    :cond_0
    return-void
.end method

.method private getExtractedSamplesCount()I
    .locals 5

    .line 661
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 662
    invoke-virtual {v4}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->getWriteIndex()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private getLargestQueuedTimestampUs()J
    .locals 7

    .line 669
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 671
    invoke-virtual {v5}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v5

    .line 670
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private static isLoadableExceptionFatal(Ljava/io/IOException;)Z
    .locals 0

    .line 681
    instance-of p0, p0, Lcom/oculus/android/exoplayer2/source/UnrecognizedInputFormatException;

    return p0
.end method

.method private isPendingReset()Z
    .locals 5

    .line 677
    iget-wide v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->pendingResetPositionUs:J

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

.method private maybeFinishPrepare()V
    .locals 8

    .line 544
    iget-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->released:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->prepared:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->seekMap:Lcom/oculus/android/exoplayer2/extractor/SeekMap;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueuesBuilt:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 548
    invoke-virtual {v4}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/oculus/android/exoplayer2/Format;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loadCondition:Lcom/oculus/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 553
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    .line 554
    new-array v1, v0, [Lcom/oculus/android/exoplayer2/source/TrackGroup;

    .line 555
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    .line 556
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->trackEnabledStates:[Z

    .line 557
    iget-object v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->seekMap:Lcom/oculus/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v3}, Lcom/oculus/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->durationUs:J

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v0, :cond_5

    .line 559
    iget-object v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/oculus/android/exoplayer2/Format;

    move-result-object v5

    .line 560
    new-instance v6, Lcom/oculus/android/exoplayer2/source/TrackGroup;

    new-array v7, v4, [Lcom/oculus/android/exoplayer2/Format;

    aput-object v5, v7, v2

    invoke-direct {v6, v7}, Lcom/oculus/android/exoplayer2/source/TrackGroup;-><init>([Lcom/oculus/android/exoplayer2/Format;)V

    aput-object v6, v1, v3

    .line 561
    iget-object v5, v5, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 562
    invoke-static {v5}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 563
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aput-boolean v4, v5, v3

    .line 564
    iget-boolean v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->haveAudioVideoTracks:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->haveAudioVideoTracks:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 566
    :cond_5
    new-instance v0, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/oculus/android/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->tracks:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    .line 567
    iget v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->minLoadableRetryCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-wide v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->length:J

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_6

    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->seekMap:Lcom/oculus/android/exoplayer2/extractor/SeekMap;

    .line 568
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v2

    if-nez v5, :cond_6

    const/4 v0, 0x6

    .line 569
    iput v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    .line 571
    :cond_6
    iput-boolean v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->prepared:Z

    .line 572
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->listener:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$Listener;

    iget-wide v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->durationUs:J

    iget-object v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->seekMap:Lcom/oculus/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v3}, Lcom/oculus/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$Listener;->onSourceInfoRefreshed(JZ)V

    .line 573
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/oculus/android/exoplayer2/source/MediaPeriod;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private maybeNotifyTrackFormat(I)V
    .locals 0

    return-void
.end method

.method private maybeStartDeferredRetry(I)V
    .locals 3

    .line 437
    iget-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->pendingDeferredRetry:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object p1, v0, p1

    .line 439
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 442
    iput-wide v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->pendingResetPositionUs:J

    const/4 p1, 0x0

    .line 443
    iput-boolean p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->pendingDeferredRetry:Z

    const/4 v2, 0x1

    .line 444
    iput-boolean v2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->notifyDiscontinuity:Z

    .line 445
    iput-wide v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->lastSeekPositionUs:J

    .line 446
    iput p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 447
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    :goto_0
    if-ge p1, v1, :cond_1

    aget-object v2, v0, p1

    .line 448
    invoke-virtual {v2}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 450
    :cond_1
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->eventListener:Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;

    if-eqz v1, :cond_0

    .line 686
    new-instance v1, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$3;

    invoke-direct {v1, p0, p1}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$3;-><init>(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private seekInsideBufferUs(J)Z
    .locals 6

    .line 642
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 644
    iget-object v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object v4, v4, v2

    .line 645
    invoke-virtual {v4}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 647
    invoke-virtual {v4, p1, p2, v3, v1}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 652
    iget-object v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->haveAudioVideoTracks:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private startLoading()V
    .locals 8

    .line 583
    new-instance v6, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;

    iget-object v2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->dataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    iget-object v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->extractorHolder:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;

    iget-object v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loadCondition:Lcom/oculus/android/exoplayer2/util/ConditionVariable;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;-><init>(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;Lcom/oculus/android/exoplayer2/util/ConditionVariable;)V

    .line 585
    iget-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->prepared:Z

    if-eqz v0, :cond_1

    .line 586
    invoke-direct {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 587
    iget-wide v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->pendingResetPositionUs:J

    cmp-long v7, v4, v0

    if-ltz v7, :cond_0

    const/4 v0, 0x1

    .line 588
    iput-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loadingFinished:Z

    .line 589
    iput-wide v2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->pendingResetPositionUs:J

    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->seekMap:Lcom/oculus/android/exoplayer2/extractor/SeekMap;

    iget-wide v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 593
    invoke-interface {v0, v4, v5}, Lcom/oculus/android/exoplayer2/extractor/SeekMap;->getSeekPoints(J)Lcom/oculus/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lcom/oculus/android/exoplayer2/extractor/SeekPoint;

    iget-wide v0, v0, Lcom/oculus/android/exoplayer2/extractor/SeekPoint;->position:J

    iget-wide v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 592
    invoke-virtual {v6, v0, v1, v4, v5}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    .line 594
    iput-wide v2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 596
    :cond_1
    invoke-direct {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iput v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 597
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    iget v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    invoke-virtual {v0, v6, p0, v1}, Lcom/oculus/android/exoplayer2/upstream/Loader;->startLoading(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;Lcom/oculus/android/exoplayer2/upstream/Loader$Callback;I)J

    return-void
.end method

.method private suppressRead()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->notifyDiscontinuity:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 0

    .line 286
    iget-boolean p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loadingFinished:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->pendingDeferredRetry:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->prepared:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->enabledTrackCount:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loadCondition:Lcom/oculus/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ConditionVariable;->open()Z

    move-result p1

    .line 290
    iget-object p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p2

    if-nez p2, :cond_1

    .line 291
    invoke-direct {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->startLoading()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 280
    iget-object v2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public endTracks()V
    .locals 2

    const/4 v0, 0x1

    .line 524
    iput-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueuesBuilt:Z

    .line 525
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/oculus/android/exoplayer2/SeekParameters;)J
    .locals 9

    .line 375
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->seekMap:Lcom/oculus/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->seekMap:Lcom/oculus/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/extractor/SeekMap;->getSeekPoints(J)Lcom/oculus/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    .line 380
    iget-object v1, v0, Lcom/oculus/android/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lcom/oculus/android/exoplayer2/extractor/SeekPoint;

    iget-wide v5, v1, Lcom/oculus/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/extractor/SeekMap$SeekPoints;->second:Lcom/oculus/android/exoplayer2/extractor/SeekPoint;

    iget-wide v7, v0, Lcom/oculus/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lcom/oculus/android/exoplayer2/util/Util;->resolveSeekPositionUs(JLcom/oculus/android/exoplayer2/SeekParameters;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 8

    .line 318
    iget-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loadingFinished:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_0

    return-wide v1

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-wide v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->pendingResetPositionUs:J

    return-wide v0

    .line 324
    :cond_1
    iget-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->haveAudioVideoTracks:Z

    if-eqz v0, :cond_3

    const-wide v3, 0x7fffffffffffffffL

    .line 327
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    .line 329
    iget-object v6, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2

    .line 330
    iget-object v6, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object v6, v6, v5

    .line 331
    invoke-virtual {v6}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v6

    .line 330
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 335
    :cond_3
    invoke-direct {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v3

    :cond_4
    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    .line 337
    iget-wide v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->lastSeekPositionUs:J

    :cond_5
    return-wide v3
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 304
    iget v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getTrackGroups()Lcom/oculus/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->tracks:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method isReady(I)Z
    .locals 1

    .line 387
    iget-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

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

.method maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    iget v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    invoke-virtual {v0, v1}, Lcom/oculus/android/exoplayer2/upstream/Loader;->maybeThrowError(I)V

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
    invoke-virtual {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->maybeThrowError()V

    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 44
    check-cast p1, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->onLoadCanceled(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;JJZ)V
    .locals 0

    if-eqz p6, :cond_0

    return-void

    .line 479
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->copyLengthFromLoader(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;)V

    .line 480
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object p4, p1, p3

    .line 481
    invoke-virtual {p4}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 483
    :cond_1
    iget p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->enabledTrackCount:I

    if-lez p1, :cond_2

    .line 484
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 44
    check-cast p1, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p5}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->onLoadCompleted(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;JJ)V
    .locals 1

    .line 462
    iget-wide p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->durationUs:J

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, p4

    if-nez v0, :cond_1

    .line 463
    invoke-direct {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide p2

    const-wide/high16 p4, -0x8000000000000000L

    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    const-wide/16 p2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 p4, 0x2710

    add-long/2addr p2, p4

    .line 464
    :goto_0
    iput-wide p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->durationUs:J

    .line 466
    iget-object p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->listener:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$Listener;

    iget-wide p3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->durationUs:J

    iget-object p5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->seekMap:Lcom/oculus/android/exoplayer2/extractor/SeekMap;

    invoke-interface {p5}, Lcom/oculus/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result p5

    invoke-interface {p2, p3, p4, p5}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$Listener;->onSourceInfoRefreshed(JZ)V

    .line 468
    :cond_1
    invoke-direct {p0, p1}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->copyLengthFromLoader(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;)V

    const/4 p1, 0x1

    .line 469
    iput-boolean p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loadingFinished:Z

    .line 470
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onLoadError(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 0

    .line 44
    check-cast p1, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->onLoadError(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public onLoadError(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;)I
    .locals 0

    .line 491
    invoke-direct {p0, p1}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->copyLengthFromLoader(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;)V

    .line 492
    invoke-direct {p0, p6}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->notifyLoadError(Ljava/io/IOException;)V

    .line 493
    invoke-static {p6}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->isLoadableExceptionFatal(Ljava/io/IOException;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x3

    return p1

    .line 496
    :cond_0
    invoke-direct {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result p2

    .line 497
    iget p3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-le p2, p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 498
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->configureRetry(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;I)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    goto :goto_1

    :cond_3
    const/4 p4, 0x2

    :goto_1
    return p4
.end method

.method public onLoaderReleased()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 184
    invoke-virtual {v3}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->extractorHolder:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;

    invoke-virtual {v0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->release()V

    return-void
.end method

.method public onUpstreamFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V
    .locals 1

    .line 538
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepare(Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    .line 192
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loadCondition:Lcom/oculus/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 193
    invoke-direct {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->startLoading()V

    return-void
.end method

.method readData(ILcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 9

    .line 396
    iget-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->notifyDiscontinuity:Z

    const/4 v1, -0x3

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object v2, v0, p1

    iget-boolean v6, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loadingFinished:Z

    iget-wide v7, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->lastSeekPositionUs:J

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 400
    invoke-virtual/range {v2 .. v8}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->read(Lcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_1

    .line 403
    invoke-direct {p0, p1}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->maybeNotifyTrackFormat(I)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    .line 405
    invoke-direct {p0, p1}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->maybeStartDeferredRetry(I)V

    :cond_2
    :goto_0
    return p2

    :cond_3
    :goto_1
    return v1
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 309
    iget-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->notifyDiscontinuity:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->notifyDiscontinuity:Z

    .line 311
    iget-wide v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->lastSeekPositionUs:J

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 4

    .line 169
    iget-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->prepared:Z

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 173
    invoke-virtual {v3}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/oculus/android/exoplayer2/upstream/Loader;->release(Lcom/oculus/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    .line 177
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->released:Z

    return-void
.end method

.method public seekMap(Lcom/oculus/android/exoplayer2/extractor/SeekMap;)V
    .locals 1

    .line 530
    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->seekMap:Lcom/oculus/android/exoplayer2/extractor/SeekMap;

    .line 531
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->seekMap:Lcom/oculus/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->seekMap:Lcom/oculus/android/exoplayer2/extractor/SeekMap;

    instance-of v1, v0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;

    if-eqz v1, :cond_1

    .line 350
    check-cast v0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->getSyncFrmPosition(J)J

    move-result-wide p1

    .line 353
    :cond_1
    iput-wide p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->lastSeekPositionUs:J

    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->notifyDiscontinuity:Z

    .line 356
    invoke-direct {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->isPendingReset()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->seekInsideBufferUs(J)Z

    move-result v1

    if-eqz v1, :cond_2

    return-wide p1

    .line 360
    :cond_2
    iput-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->pendingDeferredRetry:Z

    .line 361
    iput-wide p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 362
    iput-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loadingFinished:Z

    .line 363
    iget-object v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 364
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_2

    .line 366
    :cond_3
    iget-object v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 367
    invoke-virtual {v3}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-wide p1
.end method

.method public selectTracks([Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/oculus/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 6

    .line 209
    iget-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->prepared:Z

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 210
    iget v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->enabledTrackCount:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 212
    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 213
    aget-object v3, p3, v2

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v2

    if-nez v3, :cond_1

    .line 214
    :cond_0
    aget-object v3, p3, v2

    check-cast v3, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;

    invoke-static {v3}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;->access$300(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;)I

    move-result v3

    .line 215
    iget-object v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v5, v5, v3

    invoke-static {v5}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 216
    iget v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->enabledTrackCount:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->enabledTrackCount:I

    .line 217
    iget-object v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->trackEnabledStates:[Z

    aput-boolean v1, v4, v3

    const/4 v3, 0x0

    .line 218
    aput-object v3, p3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_2
    iget-boolean p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz p2, :cond_3

    if-nez v0, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long p2, p5, v2

    if-eqz p2, :cond_4

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    move v0, p2

    const/4 p2, 0x0

    .line 225
    :goto_3
    array-length v2, p1

    if-ge p2, v2, :cond_9

    .line 226
    aget-object v2, p3, p2

    if-nez v2, :cond_8

    aget-object v2, p1, p2

    if-eqz v2, :cond_8

    .line 227
    aget-object v2, p1, p2

    .line 228
    invoke-interface {v2}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v3

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 229
    invoke-interface {v2, v1}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    invoke-static {v3}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 230
    iget-object v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->tracks:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {v2}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/oculus/android/exoplayer2/source/TrackGroup;)I

    move-result v2

    .line 231
    iget-object v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v3, v3, v2

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 232
    iget v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->enabledTrackCount:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->enabledTrackCount:I

    .line 233
    iget-object v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->trackEnabledStates:[Z

    aput-boolean v4, v3, v2

    .line 234
    new-instance v3, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;

    invoke-direct {v3, p0, v2}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;-><init>(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;I)V

    aput-object v3, p3, p2

    .line 235
    aput-boolean v4, p4, p2

    if-nez v0, :cond_8

    .line 238
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object v0, v0, v2

    .line 239
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 244
    invoke-virtual {v0, p5, p6, v4, v4}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 245
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 249
    :cond_9
    iget p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->enabledTrackCount:I

    if-nez p1, :cond_c

    .line 250
    iput-boolean v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->pendingDeferredRetry:Z

    .line 251
    iput-boolean v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->notifyDiscontinuity:Z

    .line 252
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 254
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length p2, p1

    :goto_7
    if-ge v1, p2, :cond_a

    aget-object p3, p1, v1

    .line 255
    invoke-virtual {p3}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 257
    :cond_a
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_a

    .line 259
    :cond_b
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length p2, p1

    :goto_8
    if-ge v1, p2, :cond_e

    aget-object p3, p1, v1

    .line 260
    invoke-virtual {p3}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    if-eqz v0, :cond_e

    .line 264
    invoke-virtual {p0, p5, p6}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->seekToUs(J)J

    move-result-wide p5

    .line 266
    :goto_9
    array-length p1, p3

    if-ge v1, p1, :cond_e

    .line 267
    aget-object p1, p3, v1

    if-eqz p1, :cond_d

    .line 268
    aput-boolean v4, p4, v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 272
    :cond_e
    :goto_a
    iput-boolean v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->seenFirstTrackSelection:Z

    return-wide p5
.end method

.method skipData(IJ)I
    .locals 5

    .line 411
    invoke-direct {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->suppressRead()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object v0, v0, p1

    .line 416
    iget-boolean v2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->loadingFinished:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    .line 417
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->advanceToEnd()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 419
    invoke-virtual {v0, p2, p3, v2, v2}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    if-lez v1, :cond_3

    .line 425
    invoke-direct {p0, p1}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->maybeNotifyTrackFormat(I)V

    goto :goto_1

    .line 427
    :cond_3
    invoke-direct {p0, p1}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->maybeStartDeferredRetry(I)V

    :goto_1
    return v1
.end method

.method public track(II)Lcom/oculus/android/exoplayer2/extractor/TrackOutput;
    .locals 3

    .line 507
    iget-object p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    array-length p2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 509
    iget-object v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueueTrackIds:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 510
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_1
    new-instance v0, Lcom/oculus/android/exoplayer2/source/SampleQueue;

    iget-object v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->allocator:Lcom/oculus/android/exoplayer2/upstream/Allocator;

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/source/SampleQueue;-><init>(Lcom/oculus/android/exoplayer2/upstream/Allocator;)V

    .line 514
    invoke-virtual {v0, p0}, Lcom/oculus/android/exoplayer2/source/SampleQueue;->setUpstreamFormatChangeListener(Lcom/oculus/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 515
    iget-object v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueueTrackIds:[I

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueueTrackIds:[I

    .line 516
    iget-object v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueueTrackIds:[I

    aput p1, v1, p2

    .line 517
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/oculus/android/exoplayer2/source/SampleQueue;

    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    .line 518
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->sampleQueues:[Lcom/oculus/android/exoplayer2/source/SampleQueue;

    aput-object v0, p1, p2

    return-object v0
.end method
