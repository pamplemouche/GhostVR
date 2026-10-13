.class public final Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;
.super Ljava/lang/Object;
.source "SsMediaSource.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/source/MediaSource;
.implements Lcom/oculus/android/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/android/exoplayer2/source/MediaSource;",
        "Lcom/oculus/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable<",
        "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_MS:J = 0x7530L

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field private static final MINIMUM_MANIFEST_REFRESH_PERIOD_MS:I = 0x1388

.field private static final MIN_LIVE_DEFAULT_START_POSITION_US:J = 0x4c4b40L


# instance fields
.field private final chunkSourceFactory:Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

.field private final compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final livePresentationDelayMs:J

.field private manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

.field private manifestDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

.field private final manifestDataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

.field private manifestLoadStartTimestamp:J

.field private manifestLoader:Lcom/oculus/android/exoplayer2/upstream/Loader;

.field private manifestLoaderErrorThrower:Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final manifestParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;"
        }
    .end annotation
.end field

.field private manifestRefreshHandler:Landroid/os/Handler;

.field private final manifestUri:Landroid/net/Uri;

.field private final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final minLoadableRetryCount:I

.field private final sideloadedManifest:Z

.field private sourceListener:Lcom/oculus/android/exoplayer2/source/MediaSource$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.smoothstreaming"

    .line 56
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    new-instance v3, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v3}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x3

    const-wide/16 v5, 0x7530

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    move-object v8, p5

    .line 329
    invoke-direct/range {v0 .. v8}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;",
            "Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;",
            "IJ",
            "Landroid/os/Handler;",
            "Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 388
    new-instance v6, Lcom/oculus/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {v6}, Lcom/oculus/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V

    return-void
.end method

.method private constructor <init>(Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            "Landroid/net/Uri;",
            "Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;",
            "Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;",
            "Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;",
            "IJ",
            "Landroid/os/Handler;",
            "Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;",
            ")V"
        }
    .end annotation

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 404
    iget-boolean v2, p1, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 405
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    .line 406
    :cond_2
    invoke-static {p2}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsUtil;->fixManifestUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestUri:Landroid/net/Uri;

    .line 407
    iput-object p3, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

    .line 408
    iput-object p4, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 409
    iput-object p5, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->chunkSourceFactory:Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    .line 410
    iput-object p6, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 411
    iput p7, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->minLoadableRetryCount:I

    .line 412
    iput-wide p8, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->livePresentationDelayMs:J

    .line 413
    new-instance p2, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p2, p10, p11}, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V

    iput-object p2, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 414
    :cond_3
    iput-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->sideloadedManifest:Z

    .line 415
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p11}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;ILandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    new-instance v6, Lcom/oculus/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {v6}, Lcom/oculus/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v8, 0x7530

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v7, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 284
    invoke-direct/range {v0 .. v5}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;ILandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->startLoadingManifest()V

    return-void
.end method

.method private processManifest()V
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 508
    :goto_0
    iget-object v3, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 509
    iget-object v3, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    iget-object v4, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    invoke-virtual {v3, v4}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->updateManifest(Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    .line 514
    iget-object v4, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v4, v4, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    array-length v5, v4

    const-wide v6, 0x7fffffffffffffffL

    move-wide v8, v2

    move-wide v13, v6

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v3, v4, v2

    .line 515
    iget v10, v3, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-lez v10, :cond_1

    .line 516
    invoke-virtual {v3, v1}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v10

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 517
    iget v12, v3, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v3, v12}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v12

    iget v14, v3, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v14, v14, -0x1

    .line 518
    invoke-virtual {v3, v14}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v14

    add-long/2addr v12, v14

    .line 517
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide v13, v10

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v13, v6

    if-nez v5, :cond_4

    .line 524
    iget-object v5, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v5, v5, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-eqz v5, :cond_3

    move-wide v7, v3

    goto :goto_2

    :cond_3
    move-wide v7, v1

    .line 525
    :goto_2
    new-instance v1, Lcom/oculus/android/exoplayer2/source/SinglePeriodTimeline;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    iget-object v2, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v2, v2, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    move-object v6, v1

    move/from16 v16, v2

    invoke-direct/range {v6 .. v16}, Lcom/oculus/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZ)V

    goto/16 :goto_4

    .line 527
    :cond_4
    iget-object v5, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v5, v5, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-eqz v5, :cond_7

    .line 528
    iget-object v5, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v5, v5, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_5

    iget-object v3, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v3, v3, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_5

    .line 529
    iget-object v1, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v1, v1, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    sub-long v1, v8, v1

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    :cond_5
    move-wide/from16 v20, v13

    sub-long v18, v8, v20

    .line 532
    iget-wide v1, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->livePresentationDelayMs:J

    invoke-static {v1, v2}, Lcom/oculus/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v1

    sub-long v1, v18, v1

    const-wide/32 v3, 0x4c4b40

    cmp-long v5, v1, v3

    if-gez v5, :cond_6

    const-wide/16 v1, 0x2

    .line 537
    div-long v1, v18, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_6
    move-wide/from16 v22, v1

    .line 539
    new-instance v1, Lcom/oculus/android/exoplayer2/source/SinglePeriodTimeline;

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object v15, v1

    invoke-direct/range {v15 .. v25}, Lcom/oculus/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZ)V

    goto :goto_4

    .line 542
    :cond_7
    iget-object v1, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v1, v1, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_8

    iget-object v1, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v1, v1, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    move-wide v11, v1

    goto :goto_3

    :cond_8
    sub-long/2addr v8, v13

    move-wide v11, v8

    .line 544
    :goto_3
    new-instance v1, Lcom/oculus/android/exoplayer2/source/SinglePeriodTimeline;

    add-long v9, v13, v11

    const-wide/16 v15, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v18}, Lcom/oculus/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZ)V

    .line 547
    :goto_4
    iget-object v2, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->sourceListener:Lcom/oculus/android/exoplayer2/source/MediaSource$Listener;

    iget-object v3, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    invoke-interface {v2, v0, v1, v3}, Lcom/oculus/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/oculus/android/exoplayer2/source/MediaSource;Lcom/oculus/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method private scheduleManifestRefresh()V
    .locals 6

    .line 551
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v0, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v0, :cond_0

    return-void

    .line 554
    :cond_0
    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 555
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 556
    iget-object v2, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;

    invoke-direct {v3, p0}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;-><init>(Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startLoadingManifest()V
    .locals 5

    .line 565
    new-instance v0, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    .line 567
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    iget v2, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->minLoadableRetryCount:I

    invoke-virtual {v1, v0, p0, v2}, Lcom/oculus/android/exoplayer2/upstream/Loader;->startLoading(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;Lcom/oculus/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v1

    .line 568
    iget-object v3, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v4, v0, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    iget v0, v0, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IJ)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/oculus/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/oculus/android/exoplayer2/upstream/Allocator;)Lcom/oculus/android/exoplayer2/source/MediaPeriod;
    .locals 8

    .line 442
    iget p1, p1, Lcom/oculus/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 443
    new-instance p1, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    iget-object v1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v2, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->chunkSourceFactory:Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iget-object v3, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget v4, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->minLoadableRetryCount:I

    iget-object v5, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v6, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;-><init>(Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;ILcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/oculus/android/exoplayer2/upstream/Allocator;)V

    .line 446
    iget-object p2, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 52
    check-cast p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadCanceled(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJZ)V"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    iget v2, p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 493
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v7

    move-wide v3, p2

    move-wide v5, p4

    .line 488
    invoke-virtual/range {v0 .. v8}, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IJJJ)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 52
    check-cast p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p5}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadCompleted(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJ)V"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    iget v2, p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 478
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v7

    move-wide v3, p2

    move-wide v5, p4

    .line 477
    invoke-virtual/range {v0 .. v8}, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 479
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    sub-long/2addr p2, p4

    .line 480
    iput-wide p2, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    .line 481
    invoke-direct {p0}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->processManifest()V

    .line 482
    invoke-direct {p0}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->scheduleManifestRefresh()V

    return-void
.end method

.method public bridge synthetic onLoadError(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 0

    .line 52
    check-cast p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadError(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public onLoadError(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v9, p6

    .line 499
    instance-of v11, v9, Lcom/oculus/android/exoplayer2/ParserException;

    move-object v12, p0

    .line 500
    iget-object v1, v12, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, v0, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    iget v3, v0, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 501
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v7

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move-wide v3, p2

    move-wide/from16 v5, p4

    move v10, v11

    .line 500
    invoke-virtual/range {v0 .. v10}, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    if-eqz v11, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepareSource(Lcom/oculus/android/exoplayer2/ExoPlayer;ZLcom/oculus/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 0

    .line 422
    iput-object p3, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->sourceListener:Lcom/oculus/android/exoplayer2/source/MediaSource$Listener;

    .line 423
    iget-boolean p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->sideloadedManifest:Z

    if-eqz p1, :cond_0

    .line 424
    new-instance p1, Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;-><init>()V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 425
    invoke-direct {p0}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->processManifest()V

    goto :goto_0

    .line 427
    :cond_0
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/oculus/android/exoplayer2/upstream/DataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    .line 428
    new-instance p1, Lcom/oculus/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:Manifest"

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    .line 429
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 430
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    .line 431
    invoke-direct {p0}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->startLoadingManifest()V

    :goto_0
    return-void
.end method

.method public releasePeriod(Lcom/oculus/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 452
    move-object v0, p1

    check-cast v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->release()V

    .line 453
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public releaseSource()V
    .locals 3

    const/4 v0, 0x0

    .line 458
    iput-object v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->sourceListener:Lcom/oculus/android/exoplayer2/source/MediaSource$Listener;

    .line 459
    iget-boolean v1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->sideloadedManifest:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 460
    iput-object v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    const-wide/16 v1, 0x0

    .line 461
    iput-wide v1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    .line 462
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    if-eqz v1, :cond_1

    .line 463
    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/upstream/Loader;->release()V

    .line 464
    iput-object v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 467
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 468
    iput-object v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    :cond_2
    return-void
.end method
