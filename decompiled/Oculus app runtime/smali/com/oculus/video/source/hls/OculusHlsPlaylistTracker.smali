.class public final Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;
.super Ljava/lang/Object;
.source "OculusHlsPlaylistTracker.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;,
        Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistEventListener;,
        Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PrimaryPlaylistListener;,
        Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistResetException;,
        Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistStuckException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable<",
        "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final PLAYLIST_STUCK_TARGET_DURATION_COEFFICIENT:D = 3.5


# instance fields
.field private final dataSourceFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;

.field private final eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final initialPlaylistLoader:Lcom/oculus/android/exoplayer2/upstream/Loader;

.field private final initialPlaylistUri:Landroid/net/Uri;

.field private initialStartTimeUs:J

.field private isLive:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private masterPlaylist:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

.field private final minRetryCount:I

.field private final playlistBundles:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;",
            ">;"
        }
    .end annotation
.end field

.field private final playlistParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final playlistRefreshHandler:Landroid/os/Handler;

.field private primaryHlsUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field private final primaryPlaylistListener:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PrimaryPlaylistListener;

.field private primaryUrlSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;ILcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PrimaryPlaylistListener;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;",
            "Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;",
            "I",
            "Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PrimaryPlaylistListener;",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->initialPlaylistUri:Landroid/net/Uri;

    .line 153
    iput-object p2, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->dataSourceFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 154
    iput-object p3, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 155
    iput p4, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->minRetryCount:I

    .line 156
    iput-object p5, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->primaryPlaylistListener:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PrimaryPlaylistListener;

    .line 157
    iput-object p6, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 158
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->listeners:Ljava/util/List;

    .line 159
    new-instance p1, Lcom/oculus/android/exoplayer2/upstream/Loader;

    const-string p2, "OculusHlsPlaylistTracker:MasterPlaylist"

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->initialPlaylistLoader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    .line 160
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    .line 161
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 162
    iput-wide p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->initialStartTimeUs:J

    return-void
.end method

.method static synthetic access$1000(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->onPlaylistUpdated(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->primaryHlsUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->notifyPlaylistBlacklisting(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)Z
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->maybeSelectNewPrimaryUrl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->dataSourceFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->masterPlaylist:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->minRetryCount:I

    return p0
.end method

.method static synthetic access$900(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->getLatestPlaylistSnapshot(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p0

    return-object p0
.end method

.method private createBundles(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;)V"
        }
    .end annotation

    .line 367
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 369
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 370
    new-instance v3, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-direct {v3, p0, v2}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;-><init>(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    .line 371
    iget-object v4, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getFirstOldOverlappingSegment(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .locals 4

    .line 466
    iget-wide v0, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-wide v2, p0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 467
    iget-object p0, p0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 468
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getLatestPlaylistSnapshot(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 2

    .line 406
    invoke-virtual {p2, p1}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->isNewerThan(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    iget-boolean p2, p2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz p2, :cond_0

    .line 412
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->copyWithEndTag()Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p1

    :cond_0
    return-object p1

    .line 417
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->getLoadedPlaylistStartTimeUs(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)J

    move-result-wide v0

    .line 418
    invoke-direct {p0, p1, p2}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->getLoadedPlaylistDiscontinuitySequence(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)I

    move-result p1

    .line 419
    invoke-virtual {p2, v0, v1, p1}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->copyWith(JI)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p1

    return-object p1
.end method

.method private getLoadedPlaylistDiscontinuitySequence(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)I
    .locals 3

    .line 446
    iget-boolean v0, p2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasDiscontinuitySequence:Z

    if-eqz v0, :cond_0

    .line 447
    iget p1, p2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    return p1

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->primaryUrlSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_2

    return v0

    .line 455
    :cond_2
    invoke-static {p1, p2}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->getFirstOldOverlappingSegment(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 457
    iget p1, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    iget v0, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    add-int/2addr p1, v0

    iget-object p2, p2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 459
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget p2, p2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    sub-int/2addr p1, p2

    return p1

    :cond_3
    return v0
.end method

.method private getLoadedPlaylistStartTimeUs(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)J
    .locals 8

    .line 424
    iget-boolean v0, p2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    if-eqz v0, :cond_0

    .line 425
    iget-wide p1, p2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    return-wide p1

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->primaryUrlSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-wide v0

    .line 432
    :cond_2
    iget-object v2, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 433
    invoke-static {p1, p2}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->getFirstOldOverlappingSegment(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 435
    iget-wide p1, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-wide v0, v3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    add-long/2addr p1, v0

    return-wide p1

    :cond_3
    int-to-long v2, v2

    .line 436
    iget-wide v4, p2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-wide v6, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long/2addr v4, v6

    cmp-long p2, v2, v4

    if-nez p2, :cond_4

    .line 437
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide p1

    return-wide p1

    :cond_4
    return-wide v0
.end method

.method private maybeSelectNewPrimaryUrl()Z
    .locals 10

    .line 340
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->masterPlaylist:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    .line 341
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    .line 344
    iget-object v6, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;

    .line 345
    invoke-static {v6}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->access$100(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;)J

    move-result-wide v7

    cmp-long v9, v2, v7

    if-lez v9, :cond_0

    .line 346
    invoke-static {v6}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->access$200(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->primaryHlsUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 347
    invoke-virtual {v6}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method private maybeSetPrimaryUrl(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->primaryHlsUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->masterPlaylist:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    .line 356
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->primaryUrlSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->primaryHlsUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 363
    iget-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->primaryHlsUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyPlaylistBlacklisting(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 400
    iget-object v2, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistEventListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistEventListener;->onPlaylistBlacklisted(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onPlaylistUpdated(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->primaryHlsUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-ne p1, v0, :cond_1

    .line 383
    iget-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->primaryUrlSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-nez p1, :cond_0

    .line 385
    iget-boolean p1, p2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->isLive:Z

    .line 386
    iget-wide v0, p2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iput-wide v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->initialStartTimeUs:J

    .line 388
    :cond_0
    iput-object p2, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->primaryUrlSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 389
    iget-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->primaryPlaylistListener:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PrimaryPlaylistListener;

    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->primaryHlsUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->masterPlaylist:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    invoke-interface {p1, p2, v0, v1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PrimaryPlaylistListener;->onPrimaryPlaylistRefreshed(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;)V

    .line 391
    :cond_1
    iget-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 393
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistEventListener;

    iget-object v1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-interface {v0, v1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistEventListener;->onPlaylistChanged(Ljava/util/IdentityHashMap;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistEventListener;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getInitialStartTimeUs()J
    .locals 2

    .line 220
    iget-wide v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->initialStartTimeUs:J

    return-wide v0
.end method

.method public getMasterPlaylist()Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->masterPlaylist:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    return-object v0
.end method

.method public getPlaylistSnapshot(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {v0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->getPlaylistSnapshot()Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0, p1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->maybeSetPrimaryUrl(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    :cond_0
    return-object v0
.end method

.method public isLive()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->isLive:Z

    return v0
.end method

.method public isSnapshotValid(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->isSnapshotValid()Z

    move-result p1

    return p1
.end method

.method public maybeThrowPlaylistRefreshError(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->maybeThrowPlaylistRefreshError()V

    return-void
.end method

.method public maybeThrowPrimaryPlaylistRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->initialPlaylistLoader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 256
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->primaryHlsUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0, v0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->maybeThrowPlaylistRefreshError(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 45
    check-cast p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->onLoadCanceled(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJZ)V"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    .line 325
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v7

    const/4 v2, 0x4

    move-wide v3, p2

    move-wide v5, p4

    .line 324
    invoke-virtual/range {v0 .. v8}, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IJJJ)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 45
    check-cast p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p5}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->onLoadCompleted(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 295
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    .line 297
    instance-of v2, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v2, :cond_0

    .line 299
    iget-object v3, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    invoke-static {v3}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->createSingleVariantMasterPlaylist(Ljava/lang/String;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v3

    goto :goto_0

    .line 301
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    .line 303
    :goto_0
    iput-object v3, v0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->masterPlaylist:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    .line 304
    iget-object v4, v3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iput-object v4, v0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->primaryHlsUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 305
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 306
    iget-object v5, v3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 307
    iget-object v5, v3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 308
    iget-object v3, v3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 309
    invoke-direct {p0, v4}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->createBundles(Ljava/util/List;)V

    .line 310
    iget-object v3, v0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    iget-object v4, v0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->primaryHlsUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;

    if-eqz v2, :cond_1

    .line 313
    check-cast v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    invoke-static {v3, v1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->access$000(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    goto :goto_1

    .line 315
    :cond_1
    invoke-virtual {v3}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    .line 317
    :goto_1
    iget-object v4, v0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-object v1, p1

    iget-object v5, v1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    const/4 v6, 0x4

    .line 318
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 317
    invoke-virtual/range {v4 .. v12}, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IJJJ)V

    return-void
.end method

.method public bridge synthetic onLoadError(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 0

    .line 45
    check-cast p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->onLoadError(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public onLoadError(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    move-object/from16 v9, p6

    .line 331
    instance-of v11, v9, Lcom/oculus/android/exoplayer2/ParserException;

    move-object v12, p0

    .line 332
    iget-object v0, v12, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-object v1, p1

    iget-object v2, v1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    .line 333
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v7

    const/4 v3, 0x4

    move-object v1, v2

    move v2, v3

    move-wide v3, p2

    move-wide/from16 v5, p4

    move v10, v11

    .line 332
    invoke-virtual/range {v0 .. v10}, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    if-eqz v11, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public refreshPlaylist(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->initialPlaylistLoader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/upstream/Loader;->release()V

    .line 241
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;

    .line 242
    invoke-virtual {v1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->release()V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public removeListener(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistEventListener;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public start()V
    .locals 5

    .line 187
    new-instance v0, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->dataSourceFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;

    const/4 v2, 0x4

    .line 188
    invoke-interface {v1, v2}, Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;->createDataSource(I)Lcom/oculus/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    iget-object v3, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->initialPlaylistUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->playlistParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    .line 190
    iget-object v1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->initialPlaylistLoader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    iget v2, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->minRetryCount:I

    invoke-virtual {v1, v0, p0, v2}, Lcom/oculus/android/exoplayer2/upstream/Loader;->startLoading(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;Lcom/oculus/android/exoplayer2/upstream/Loader$Callback;I)J

    return-void
.end method
