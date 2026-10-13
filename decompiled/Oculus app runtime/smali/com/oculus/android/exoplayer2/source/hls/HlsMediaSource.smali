.class public final Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;
.super Ljava/lang/Object;
.source "HlsMediaSource.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/source/MediaSource;
.implements Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3


# instance fields
.field private final allowChunklessPreparation:Z

.field private final compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final dataSourceFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;

.field private final eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final extractorFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private final manifestUri:Landroid/net/Uri;

.field private final minLoadableRetryCount:I

.field private final playlistParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private playlistTracker:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private sourceListener:Lcom/oculus/android/exoplayer2/source/MediaSource$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.hls"

    .line 56
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;ILandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;",
            "Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;",
            "I",
            "Landroid/os/Handler;",
            "Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    new-instance v4, Lcom/oculus/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {v4}, Lcom/oculus/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;ILandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;ILandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;",
            "Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;",
            "Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;",
            "I",
            "Landroid/os/Handler;",
            "Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;Z)V"
        }
    .end annotation

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->manifestUri:Landroid/net/Uri;

    .line 320
    iput-object p2, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->dataSourceFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 321
    iput-object p3, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->extractorFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 322
    iput-object p4, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 323
    iput p5, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->minLoadableRetryCount:I

    .line 324
    iput-object p8, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->playlistParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 325
    iput-boolean p9, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->allowChunklessPreparation:Z

    .line 326
    new-instance p1, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p1, p6, p7}, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;ILandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;ZLcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$1;)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p9}, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;ILandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;ILandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    new-instance v2, Lcom/oculus/android/exoplayer2/source/hls/DefaultHlsDataSourceFactory;

    invoke-direct {v2, p2}, Lcom/oculus/android/exoplayer2/source/hls/DefaultHlsDataSourceFactory;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V

    sget-object v3, Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;->DEFAULT:Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;

    new-instance v7, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v7}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;ILandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 248
    invoke-direct/range {v0 .. v5}, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;ILandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/oculus/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/oculus/android/exoplayer2/upstream/Allocator;)Lcom/oculus/android/exoplayer2/source/MediaPeriod;
    .locals 9

    .line 344
    iget p1, p1, Lcom/oculus/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 345
    new-instance p1, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaPeriod;

    iget-object v1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->extractorFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v2, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v3, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->dataSourceFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iget v4, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->minLoadableRetryCount:I

    iget-object v5, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v7, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-boolean v8, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->allowChunklessPreparation:Z

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaPeriod;-><init>(Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;ILcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/oculus/android/exoplayer2/upstream/Allocator;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Z)V

    return-object p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->maybeThrowPrimaryPlaylistRefreshError()V

    return-void
.end method

.method public onPrimaryPlaylistRefreshed(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 373
    iget-boolean v2, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_0
    move-wide v8, v5

    .line 374
    :goto_0
    iget-boolean v2, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    if-eqz v2, :cond_1

    iget-wide v10, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    invoke-static {v10, v11}, Lcom/oculus/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v10

    goto :goto_1

    :cond_1
    move-wide v10, v5

    .line 376
    :goto_1
    iget-wide v12, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    .line 377
    iget-object v2, v0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v2}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 378
    iget-boolean v2, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v2, :cond_2

    iget-wide v14, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-wide v3, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v2, v14, v3

    goto :goto_2

    :cond_2
    move-wide v2, v5

    .line 380
    :goto_2
    iget-object v4, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    cmp-long v7, v12, v5

    if-nez v7, :cond_4

    .line 382
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    const-wide/16 v16, 0x0

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 383
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v4, v4, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    move-wide/from16 v16, v4

    :goto_3
    move-wide/from16 v18, v16

    goto :goto_4

    :cond_4
    move-wide/from16 v18, v12

    .line 385
    :goto_4
    new-instance v4, Lcom/oculus/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v14, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    iget-wide v5, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    const/16 v20, 0x1

    iget-boolean v7, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    xor-int/lit8 v21, v7, 0x1

    move-object v7, v4

    move-wide v12, v2

    move-wide/from16 v16, v5

    invoke-direct/range {v7 .. v21}, Lcom/oculus/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJJJZZ)V

    move-object v2, v4

    goto :goto_6

    :cond_5
    cmp-long v2, v12, v5

    if-nez v2, :cond_6

    const-wide/16 v18, 0x0

    goto :goto_5

    :cond_6
    move-wide/from16 v18, v12

    .line 392
    :goto_5
    new-instance v2, Lcom/oculus/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v3, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-wide v5, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v12, v3, v5

    iget-wide v14, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    iget-wide v3, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v7, v2

    move-wide/from16 v16, v3

    invoke-direct/range {v7 .. v21}, Lcom/oculus/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJJJZZ)V

    .line 396
    :goto_6
    iget-object v3, v0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->sourceListener:Lcom/oculus/android/exoplayer2/source/MediaSource$Listener;

    new-instance v4, Lcom/oculus/android/exoplayer2/source/hls/HlsManifest;

    iget-object v5, v0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 397
    invoke-virtual {v5}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getMasterPlaylist()Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/oculus/android/exoplayer2/source/hls/HlsManifest;-><init>(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    .line 396
    invoke-interface {v3, v0, v2, v4}, Lcom/oculus/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/oculus/android/exoplayer2/source/MediaSource;Lcom/oculus/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public prepareSource(Lcom/oculus/android/exoplayer2/ExoPlayer;ZLcom/oculus/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 7

    .line 331
    iput-object p3, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->sourceListener:Lcom/oculus/android/exoplayer2/source/MediaSource$Listener;

    .line 332
    new-instance p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->manifestUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->dataSourceFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iget-object v3, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v4, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->minLoadableRetryCount:I

    iget-object v6, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->playlistParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    move-object v0, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;-><init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;ILcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 334
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->start()V

    return-void
.end method

.method public releasePeriod(Lcom/oculus/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 358
    check-cast p1, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaPeriod;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaPeriod;->release()V

    return-void
.end method

.method public releaseSource()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->release()V

    .line 365
    iput-object v1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 367
    :cond_0
    iput-object v1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;->sourceListener:Lcom/oculus/android/exoplayer2/source/MediaSource$Listener;

    return-void
.end method
