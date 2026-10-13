.class public final Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;
.super Ljava/lang/Object;
.source "OculusHlsPlaylistTracker.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/upstream/Loader$Callback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MediaPlaylistBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable<",
        "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
        ">;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private blacklistUntilMs:J

.field private earliestNextLoadTimeMs:J

.field private lastSnapshotChangeMs:J

.field private lastSnapshotLoadMs:J

.field private loadPending:Z

.field private final mediaPlaylistLoadable:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPlaylistLoader:Lcom/oculus/android/exoplayer2/upstream/Loader;

.field private playlistError:Ljava/io/IOException;

.field private playlistSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

.field private final playlistUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field final synthetic this$0:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;


# direct methods
.method public constructor <init>(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 4

    .line 489
    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput-object p2, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 491
    new-instance v0, Lcom/oculus/android/exoplayer2/upstream/Loader;

    const-string v1, "OculusHlsPlaylistTracker:MediaPlaylist"

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    .line 492
    new-instance v0, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    .line 493
    invoke-static {p1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->access$300(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;->createDataSource(I)Lcom/oculus/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    .line 494
    invoke-static {p1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->access$400(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v3

    iget-object v3, v3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->baseUri:Ljava/lang/String;

    iget-object p2, p2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->url:Ljava/lang/String;

    invoke-static {v3, p2}, Lcom/oculus/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 495
    invoke-static {p1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->access$500(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    move-result-object p1

    invoke-direct {v0, v1, p2, v2, p1}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    iput-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoadable:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 0

    .line 474
    invoke-direct {p0, p1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->processLoadedPlaylist(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;)J
    .locals 2

    .line 474
    iget-wide v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->blacklistUntilMs:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    return-object p0
.end method

.method private blacklistPlaylist()Z
    .locals 4

    .line 632
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->blacklistUntilMs:J

    .line 634
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    iget-object v1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->access$1400(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V

    .line 635
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-static {v0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->access$1300(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-static {v0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->access$1500(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadPlaylistImmediately()V
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    iget-object v1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoadable:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v2, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-static {v2}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->access$800(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)I

    move-result v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/oculus/android/exoplayer2/upstream/Loader;->startLoading(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;Lcom/oculus/android/exoplayer2/upstream/Loader$Callback;I)J

    return-void
.end method

.method private processLoadedPlaylist(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 11

    .line 593
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 594
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 595
    iput-wide v1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->lastSnapshotLoadMs:J

    .line 596
    iget-object v3, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-static {v3, v0, p1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->access$900(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v3

    iput-object v3, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 597
    iget-object v3, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    const/4 v4, 0x0

    if-eq v3, v0, :cond_0

    .line 598
    iput-object v4, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    .line 599
    iput-wide v1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->lastSnapshotChangeMs:J

    .line 600
    iget-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    iget-object v4, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-static {p1, v4, v3}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->access$1000(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    goto :goto_0

    .line 601
    :cond_0
    iget-boolean v3, v3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v3, :cond_2

    .line 602
    iget-wide v5, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v7, p1

    add-long/2addr v5, v7

    iget-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-wide v7, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long p1, v5, v7

    if-gez p1, :cond_1

    .line 605
    new-instance p1, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistResetException;

    iget-object v3, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v3, v3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->url:Ljava/lang/String;

    invoke-direct {p1, v3, v4}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistResetException;-><init>(Ljava/lang/String;Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$1;)V

    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    goto :goto_0

    .line 606
    :cond_1
    iget-wide v5, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->lastSnapshotChangeMs:J

    sub-long v5, v1, v5

    long-to-double v5, v5

    iget-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-wide v7, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    .line 607
    invoke-static {v7, v8}, Lcom/oculus/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v7

    long-to-double v7, v7

    const-wide/high16 v9, 0x400c000000000000L    # 3.5

    mul-double v7, v7, v9

    cmpl-double p1, v5, v7

    if-lez p1, :cond_2

    .line 610
    new-instance p1, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistStuckException;

    iget-object v3, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v3, v3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->url:Ljava/lang/String;

    invoke-direct {p1, v3, v4}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistStuckException;-><init>(Ljava/lang/String;Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$1;)V

    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    .line 611
    invoke-direct {p0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->blacklistPlaylist()Z

    .line 616
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eq p1, v0, :cond_3

    iget-wide v3, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    goto :goto_1

    :cond_3
    iget-wide v3, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    :goto_1
    invoke-static {v3, v4}, Lcom/oculus/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->earliestNextLoadTimeMs:J

    .line 621
    iget-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-static {v0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->access$1300(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-boolean p1, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez p1, :cond_4

    .line 622
    invoke-virtual {p0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    :cond_4
    return-void
.end method


# virtual methods
.method public getPlaylistSnapshot()Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    return-object v0
.end method

.method public isSnapshotValid()Z
    .locals 9

    .line 503
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 506
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    .line 507
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-wide v6, v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    invoke-static {v6, v7}, Lcom/oculus/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 508
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-boolean v0, v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    const/4 v6, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget v0, v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    const/4 v7, 0x2

    if-eq v0, v7, :cond_1

    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget v0, v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    if-eq v0, v6, :cond_1

    iget-wide v7, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->lastSnapshotLoadMs:J

    add-long/2addr v7, v4

    cmp-long v0, v7, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public loadPlaylist()V
    .locals 5

    const-wide/16 v0, 0x0

    .line 519
    iput-wide v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->blacklistUntilMs:J

    .line 520
    iget-boolean v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->loadPending:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 525
    iget-wide v2, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->earliestNextLoadTimeMs:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v2, 0x1

    .line 526
    iput-boolean v2, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->loadPending:Z

    .line 527
    iget-object v2, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-static {v2}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->access$600(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)Landroid/os/Handler;

    move-result-object v2

    iget-wide v3, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->earliestNextLoadTimeMs:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 529
    :cond_1
    invoke-direct {p0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylistImmediately()V

    :cond_2
    :goto_0
    return-void
.end method

.method public maybeThrowPlaylistRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 535
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 536
    :cond_0
    throw v0
.end method

.method public bridge synthetic onLoadCanceled(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 474
    check-cast p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->onLoadCanceled(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJZ)V

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

    .line 558
    iget-object p6, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-static {p6}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->access$700(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    iget-object v1, p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    .line 559
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v7

    const/4 v2, 0x4

    move-wide v3, p2

    move-wide v5, p4

    .line 558
    invoke-virtual/range {v0 .. v8}, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IJJJ)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 474
    check-cast p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p5}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->onLoadCompleted(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ)V"
        }
    .end annotation

    .line 545
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    .line 546
    instance-of v1, v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v1, :cond_0

    .line 547
    check-cast v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    invoke-direct {p0, v0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->processLoadedPlaylist(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    .line 548
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-static {v0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->access$700(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iget-object v2, p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    const/4 v3, 0x4

    .line 549
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 548
    invoke-virtual/range {v1 .. v9}, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IJJJ)V

    goto :goto_0

    .line 551
    :cond_0
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    const-string p2, "Loaded playlist has unexpected type."

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadError(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 0

    .line 474
    check-cast p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->onLoadError(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public onLoadError(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 14
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

    move-object/from16 v11, p6

    .line 565
    instance-of v12, v11, Lcom/oculus/android/exoplayer2/ParserException;

    move-object v13, p0

    .line 566
    iget-object v0, v13, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-static {v0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->access$700(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;)Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    move-object v1, p1

    iget-object v2, v1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    .line 567
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v7

    const/4 v3, 0x4

    move-object v1, v2

    move v2, v3

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v9, p6

    move v10, v12

    .line 566
    invoke-virtual/range {v0 .. v10}, Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    if-eqz v12, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 572
    invoke-static/range {p6 .. p6}, Lcom/oculus/android/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->shouldBlacklist(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 573
    invoke-direct {p0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->blacklistPlaylist()Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public release()V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lcom/oculus/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/upstream/Loader;->release()V

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 582
    iput-boolean v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->loadPending:Z

    .line 583
    invoke-direct {p0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylistImmediately()V

    return-void
.end method
