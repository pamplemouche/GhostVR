.class public final Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RepresentationHolder"
.end annotation


# instance fields
.field final extractorWrapper:Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private periodDurationUs:J

.field public representation:Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

.field public segmentIndex:Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;

.field private segmentNumShift:J


# direct methods
.method constructor <init>(JILcom/oculus/android/exoplayer2/source/dash/manifest/Representation;ZZLcom/oculus/android/exoplayer2/extractor/TrackOutput;)V
    .locals 8

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-wide p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 501
    iput-object p4, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    .line 502
    iget-object p1, p4, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 503
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 504
    iput-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    goto :goto_3

    :cond_0
    const-string p2, "application/x-rawcc"

    .line 507
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 508
    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/rawcc/RawCcExtractor;

    iget-object p2, p4, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/extractor/rawcc/RawCcExtractor;-><init>(Lcom/oculus/android/exoplayer2/Format;)V

    goto :goto_2

    .line 509
    :cond_1
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->mimeTypeIsWebm(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 510
    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(I)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    if-eqz p5, :cond_3

    const/4 p2, 0x4

    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz p6, :cond_4

    const-string p2, "application/cea-608"

    .line 519
    invoke-static {v0, p2, p1, v0}, Lcom/oculus/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object p1

    .line 518
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 520
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_1
    move-object v6, p1

    .line 522
    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/oculus/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/oculus/android/exoplayer2/util/TimestampAdjuster;Lcom/oculus/android/exoplayer2/extractor/mp4/Track;Lcom/oculus/android/exoplayer2/drm/DrmInitData;Ljava/util/List;Lcom/oculus/android/exoplayer2/extractor/TrackOutput;)V

    .line 528
    :goto_2
    new-instance p2, Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iget-object p5, p4, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-direct {p2, p1, p3, p5}, Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;-><init>(Lcom/oculus/android/exoplayer2/extractor/Extractor;ILcom/oculus/android/exoplayer2/Format;)V

    iput-object p2, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .line 530
    :goto_3
    invoke-virtual {p4}, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;

    return-void
.end method

.method private static mimeTypeIsRawText(Ljava/lang/String;)Z
    .locals 1

    .line 607
    invoke-static {p0}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static mimeTypeIsWebm(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "video/webm"

    .line 602
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/webm"

    .line 603
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getFirstSegmentNum()J
    .locals 4

    .line 577
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSegmentCount()I
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v1, v2}, Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result v0

    return v0
.end method

.method public getSegmentEndTimeUs(J)J
    .locals 5

    .line 589
    invoke-virtual {p0, p1, p2}, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v3, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long/2addr p1, v3

    iget-wide v3, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 590
    invoke-interface {v2, p1, p2, v3, v4}, Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public getSegmentNum(J)J
    .locals 3

    .line 594
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getSegmentStartTimeUs(J)J
    .locals 3

    .line 585
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getSegmentUrl(J)Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 3

    .line 598
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentUrl(J)Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method updateRepresentation(JLcom/oculus/android/exoplayer2/source/dash/manifest/Representation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/source/BehindLiveWindowException;
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v0

    .line 536
    invoke-virtual {p3}, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v1

    .line 538
    iput-wide p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 539
    iput-object p3, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    if-nez v0, :cond_0

    return-void

    .line 545
    :cond_0
    iput-object v1, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;

    .line 546
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 551
    :cond_1
    iget-wide p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 557
    :cond_2
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide p2

    int-to-long v2, p1

    add-long/2addr p2, v2

    const-wide/16 v2, 0x1

    sub-long/2addr p2, v2

    .line 558
    invoke-interface {v0, p2, p3}, Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 559
    invoke-interface {v0, p2, p3, v6, v7}, Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 560
    invoke-interface {v1}, Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v6

    .line 561
    invoke-interface {v1, v6, v7}, Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v8

    cmp-long p1, v4, v8

    if-nez p1, :cond_3

    .line 564
    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    add-long/2addr p2, v2

    sub-long/2addr p2, v6

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    goto :goto_0

    :cond_3
    if-ltz p1, :cond_4

    .line 571
    iget-wide p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    iget-wide v1, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v8, v9, v1, v2}, Lcom/oculus/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v0

    sub-long/2addr v0, v6

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    :goto_0
    return-void

    .line 568
    :cond_4
    new-instance p1, Lcom/oculus/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    throw p1
.end method
