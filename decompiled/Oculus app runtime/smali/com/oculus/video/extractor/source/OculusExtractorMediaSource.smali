.class public Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;
.super Ljava/lang/Object;
.source "OculusExtractorMediaSource.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/source/MediaSource;
.implements Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOADING_CHECK_INTERVAL_BYTES:I = 0x100000

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE:I = 0x6

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_ON_DEMAND:I = 0x3

.field public static final MIN_RETRY_COUNT_DEFAULT_FOR_MEDIA:I = -0x1


# instance fields
.field private context:Landroid/content/Context;

.field private final continueLoadingCheckIntervalBytes:I

.field private final customCacheKey:Ljava/lang/String;

.field private final dataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;

.field private final extractorsFactory:Lcom/oculus/android/exoplayer2/extractor/ExtractorsFactory;

.field private final minLoadableRetryCount:I

.field private final period:Lcom/oculus/android/exoplayer2/Timeline$Period;

.field private sourceListener:Lcom/oculus/android/exoplayer2/source/MediaSource$Listener;

.field private timelineDurationUs:J

.field private timelineIsSeekable:Z

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 91
    invoke-direct/range {v0 .. v6}, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/extractor/ExtractorsFactory;ILandroid/os/Handler;Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;Ljava/lang/String;I)V
    .locals 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->context:Landroid/content/Context;

    .line 145
    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->uri:Landroid/net/Uri;

    .line 146
    iput-object p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->dataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

    .line 147
    iput-object p3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->extractorsFactory:Lcom/oculus/android/exoplayer2/extractor/ExtractorsFactory;

    .line 148
    iput p4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->minLoadableRetryCount:I

    .line 149
    iput-object p5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->eventHandler:Landroid/os/Handler;

    .line 150
    iput-object p6, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->eventListener:Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;

    .line 151
    iput-object p7, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->customCacheKey:Ljava/lang/String;

    .line 152
    iput p8, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->continueLoadingCheckIntervalBytes:I

    .line 153
    new-instance p1, Lcom/oculus/android/exoplayer2/Timeline$Period;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->period:Lcom/oculus/android/exoplayer2/Timeline$Period;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 106
    invoke-direct/range {v0 .. v6}, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;Ljava/lang/String;)V
    .locals 9

    const/4 v4, -0x1

    const/high16 v8, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 123
    invoke-direct/range {v0 .. v8}, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/extractor/ExtractorsFactory;ILandroid/os/Handler;Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;Ljava/lang/String;I)V

    return-void
.end method

.method private notifySourceInfoRefreshed(JZ)V
    .locals 3

    .line 202
    iput-wide p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->timelineDurationUs:J

    .line 203
    iput-boolean p3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->timelineIsSeekable:Z

    .line 204
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->sourceListener:Lcom/oculus/android/exoplayer2/source/MediaSource$Listener;

    new-instance p2, Lcom/oculus/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->timelineDurationUs:J

    iget-boolean p3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->timelineIsSeekable:Z

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, p3, v2}, Lcom/oculus/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZ)V

    const/4 p3, 0x0

    invoke-interface {p1, p0, p2, p3}, Lcom/oculus/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/oculus/android/exoplayer2/source/MediaSource;Lcom/oculus/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/oculus/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/oculus/android/exoplayer2/upstream/Allocator;)Lcom/oculus/android/exoplayer2/source/MediaPeriod;
    .locals 12

    .line 169
    iget p1, p1, Lcom/oculus/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 170
    new-instance p1, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    iget-object v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->uri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->dataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/oculus/android/exoplayer2/upstream/DataSource;

    move-result-object v3

    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->extractorsFactory:Lcom/oculus/android/exoplayer2/extractor/ExtractorsFactory;

    .line 171
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/extractor/ExtractorsFactory;->createExtractors()[Lcom/oculus/android/exoplayer2/extractor/Extractor;

    move-result-object v4

    iget v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->minLoadableRetryCount:I

    iget-object v6, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->eventHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->eventListener:Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;

    iget-object v10, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->customCacheKey:Ljava/lang/String;

    iget v11, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->continueLoadingCheckIntervalBytes:I

    move-object v0, p1

    move-object v8, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v11}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource;[Lcom/oculus/android/exoplayer2/extractor/Extractor;ILandroid/os/Handler;Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$Listener;Lcom/oculus/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V

    return-object p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public onSourceInfoRefreshed(JZ)V
    .locals 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 190
    iget-wide p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->timelineDurationUs:J

    .line 191
    :cond_0
    iget-wide v2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->timelineDurationUs:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_1

    iget-boolean v2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->timelineIsSeekable:Z

    if-eq v2, p3, :cond_2

    :cond_1
    iget-wide v2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->timelineDurationUs:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3

    cmp-long v2, p1, v0

    if-nez v2, :cond_3

    :cond_2
    return-void

    .line 196
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->notifySourceInfoRefreshed(JZ)V

    return-void
.end method

.method public prepareSource(Lcom/oculus/android/exoplayer2/ExoPlayer;ZLcom/oculus/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 0

    .line 158
    iput-object p3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->sourceListener:Lcom/oculus/android/exoplayer2/source/MediaSource$Listener;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p3, 0x0

    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->notifySourceInfoRefreshed(JZ)V

    return-void
.end method

.method public releasePeriod(Lcom/oculus/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 177
    check-cast p1, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    invoke-virtual {p1}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->release()V

    return-void
.end method

.method public releaseSource()V
    .locals 1

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;->sourceListener:Lcom/oculus/android/exoplayer2/source/MediaSource$Listener;

    return-void
.end method
