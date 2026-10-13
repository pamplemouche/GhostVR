.class public Lcom/oculus/video/source/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/source/hls/HlsChunkSource$EncryptionKeyChunk;,
        Lcom/oculus/video/source/hls/HlsChunkSource$InitializationTrackSelection;,
        Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;
    }
.end annotation


# instance fields
.field private final encryptionDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

.field private encryptionIv:[B

.field private encryptionIvString:Ljava/lang/String;

.field private encryptionKey:[B

.field private encryptionKeyUri:Landroid/net/Uri;

.field private expectedPlaylistUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field private final extractorFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private fatalError:Ljava/io/IOException;

.field private independentSegments:Z

.field private isTimestampMaster:Z

.field private liveEdgeTimeUs:J

.field private final mediaDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

.field private final muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final playlistTracker:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

.field private scratchSpace:[B

.field private final timestampAdjusterProvider:Lcom/oculus/android/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private final trackGroup:Lcom/oculus/android/exoplayer2/source/TrackGroup;

.field private trackSelection:Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

.field private final variants:[Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;[Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/oculus/android/exoplayer2/source/hls/TimestampAdjusterProvider;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;",
            "Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;",
            "[",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;",
            "Lcom/oculus/android/exoplayer2/source/hls/TimestampAdjusterProvider;",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->extractorFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 132
    iput-object p2, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->playlistTracker:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    .line 133
    iput-object p3, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->variants:[Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 134
    iput-object p5, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/oculus/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    .line 135
    iput-object p6, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 136
    iput-wide p1, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->liveEdgeTimeUs:J

    .line 137
    array-length p1, p3

    new-array p1, p1, [Lcom/oculus/android/exoplayer2/Format;

    .line 138
    array-length p2, p3

    new-array p2, p2, [I

    const/4 p5, 0x0

    .line 139
    :goto_0
    array-length p6, p3

    if-ge p5, p6, :cond_0

    .line 140
    aget-object p6, p3, p5

    iget-object p6, p6, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    aput-object p6, p1, p5

    .line 141
    aput p5, p2, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 143
    invoke-interface {p4, p3}, Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;->createDataSource(I)Lcom/oculus/android/exoplayer2/upstream/DataSource;

    move-result-object p3

    iput-object p3, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->mediaDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    const/4 p3, 0x3

    .line 144
    invoke-interface {p4, p3}, Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;->createDataSource(I)Lcom/oculus/android/exoplayer2/upstream/DataSource;

    move-result-object p3

    iput-object p3, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->encryptionDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    .line 145
    new-instance p3, Lcom/oculus/android/exoplayer2/source/TrackGroup;

    invoke-direct {p3, p1}, Lcom/oculus/android/exoplayer2/source/TrackGroup;-><init>([Lcom/oculus/android/exoplayer2/Format;)V

    iput-object p3, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->trackGroup:Lcom/oculus/android/exoplayer2/source/TrackGroup;

    .line 146
    new-instance p1, Lcom/oculus/video/source/hls/HlsChunkSource$InitializationTrackSelection;

    iget-object p3, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->trackGroup:Lcom/oculus/android/exoplayer2/source/TrackGroup;

    invoke-direct {p1, p3, p2}, Lcom/oculus/video/source/hls/HlsChunkSource$InitializationTrackSelection;-><init>(Lcom/oculus/android/exoplayer2/source/TrackGroup;[I)V

    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->trackSelection:Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    return-void
.end method

.method private clearEncryptionData()V
    .locals 1

    const/4 v0, 0x0

    .line 446
    iput-object v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 447
    iput-object v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->encryptionKey:[B

    .line 448
    iput-object v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 449
    iput-object v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->encryptionIv:[B

    return-void
.end method

.method private newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/oculus/video/source/hls/HlsChunkSource$EncryptionKeyChunk;
    .locals 9

    .line 420
    new-instance v8, Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/oculus/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 421
    new-instance p1, Lcom/oculus/video/source/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v1, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->encryptionDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->variants:[Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object p3, v0, p3

    iget-object v3, p3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v6, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->scratchSpace:[B

    move-object v0, p1

    move-object v2, v8

    move v4, p4

    move-object v5, p5

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/oculus/video/source/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/upstream/DataSpec;Lcom/oculus/android/exoplayer2/Format;ILjava/lang/Object;[BLjava/lang/String;)V

    return-object p1
.end method

.method private resolveTimeToLiveEdgeUs(J)J
    .locals 5

    .line 410
    iget-wide v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->liveEdgeTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 411
    iget-wide v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->liveEdgeTimeUs:J

    sub-long v2, v0, p1

    :cond_1
    return-wide v2
.end method

.method private setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 5

    .line 427
    invoke-static {p2}, Lcom/oculus/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 428
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 433
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 434
    new-array v1, v2, [B

    .line 435
    array-length v3, v0

    if-le v3, v2, :cond_1

    array-length v3, v0

    sub-int/2addr v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 436
    :goto_1
    array-length v2, v1

    array-length v4, v0

    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    array-length v4, v0

    sub-int/2addr v4, v3

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 440
    iput-object p3, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->encryptionKey:[B

    .line 441
    iput-object p2, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 442
    iput-object v1, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->encryptionIv:[B

    return-void
.end method

.method private updateLiveEdgeTimeUs(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 2

    .line 415
    iget-boolean v0, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->liveEdgeTimeUs:J

    return-void
.end method


# virtual methods
.method public getNextChunk(Lcom/oculus/video/source/hls/HlsMediaChunk;JJLcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;)V
    .locals 35

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move-object/from16 v15, p6

    if-nez v0, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    .line 224
    :cond_0
    iget-object v3, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->trackGroup:Lcom/oculus/android/exoplayer2/source/TrackGroup;

    iget-object v4, v0, Lcom/oculus/video/source/hls/HlsMediaChunk;->trackFormat:Lcom/oculus/android/exoplayer2/Format;

    .line 225
    invoke-virtual {v3, v4}, Lcom/oculus/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/oculus/android/exoplayer2/Format;)I

    move-result v3

    :goto_0
    const/4 v4, 0x0

    .line 226
    iput-object v4, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    sub-long v7, p4, v1

    .line 229
    invoke-direct {v6, v1, v2}, Lcom/oculus/video/source/hls/HlsChunkSource;->resolveTimeToLiveEdgeUs(J)J

    move-result-wide v9

    if-eqz v0, :cond_1

    .line 230
    iget-boolean v5, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->independentSegments:Z

    if-nez v5, :cond_1

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/video/source/hls/HlsMediaChunk;->getDurationUs()J

    move-result-wide v11

    sub-long/2addr v7, v11

    const-wide/16 v13, 0x0

    .line 238
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v9, v16

    if-eqz v5, :cond_1

    sub-long/2addr v9, v11

    .line 240
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    :cond_1
    move-wide v12, v9

    move-wide v10, v7

    .line 245
    iget-object v7, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->trackSelection:Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    move-wide/from16 v8, p2

    invoke-interface/range {v7 .. v13}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(JJJ)V

    .line 246
    iget-object v1, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->trackSelection:Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v1}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eq v3, v1, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 249
    :goto_1
    iget-object v8, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->variants:[Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v8, v8, v1

    .line 250
    iget-object v9, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->playlistTracker:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-virtual {v9, v8}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->isSnapshotValid(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 251
    iput-object v8, v15, Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 252
    iput-object v8, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    return-void

    .line 256
    :cond_3
    iget-object v9, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->playlistTracker:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-virtual {v9, v8}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->getPlaylistSnapshot(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v9

    .line 257
    iget-boolean v10, v9, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasIndependentSegmentsTag:Z

    iput-boolean v10, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->independentSegments:Z

    .line 259
    invoke-direct {v6, v9}, Lcom/oculus/video/source/hls/HlsChunkSource;->updateLiveEdgeTimeUs(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    if-eqz v0, :cond_5

    if-eqz v7, :cond_4

    goto :goto_2

    .line 283
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/video/source/hls/HlsMediaChunk;->getNextChunkIndex()J

    move-result-wide v2

    move-wide/from16 v20, v2

    move-object v12, v8

    move v3, v1

    move-object v1, v9

    goto/16 :goto_6

    :cond_5
    :goto_2
    if-eqz v0, :cond_7

    .line 264
    iget-boolean v7, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->independentSegments:Z

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    iget-wide v10, v0, Lcom/oculus/video/source/hls/HlsMediaChunk;->startTimeUs:J

    goto :goto_4

    :cond_7
    :goto_3
    move-wide/from16 v10, p4

    .line 266
    :goto_4
    iget-boolean v7, v9, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v7, :cond_8

    invoke-virtual {v9}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-ltz v7, :cond_8

    .line 268
    iget-wide v2, v9, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-object v7, v9, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    int-to-long v10, v7

    add-long/2addr v2, v10

    move-wide/from16 v33, v2

    move v3, v1

    move-object v1, v9

    move-wide/from16 v9, v33

    goto :goto_5

    .line 270
    :cond_8
    iget-object v7, v9, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    iget-wide v12, v9, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    sub-long/2addr v10, v12

    .line 271
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->playlistTracker:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    .line 272
    invoke-virtual {v11}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->isLive()Z

    move-result v11

    if-eqz v11, :cond_9

    if-nez v0, :cond_a

    :cond_9
    const/4 v2, 0x1

    .line 270
    :cond_a
    invoke-static {v7, v10, v5, v2}, Lcom/oculus/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v2

    int-to-long v10, v2

    iget-wide v12, v9, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    add-long/2addr v10, v12

    .line 273
    iget-wide v12, v9, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v2, v10, v12

    if-gez v2, :cond_b

    if-eqz v0, :cond_b

    .line 277
    iget-object v1, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->variants:[Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v8, v1, v3

    .line 278
    iget-object v1, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->playlistTracker:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-virtual {v1, v8}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->getPlaylistSnapshot(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v1

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/video/source/hls/HlsMediaChunk;->getNextChunkIndex()J

    move-result-wide v9

    goto :goto_5

    :cond_b
    move v3, v1

    move-object v1, v9

    move-wide v9, v10

    :goto_5
    move-object v12, v8

    move-wide/from16 v20, v9

    .line 285
    :goto_6
    iget-wide v7, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v2, v20, v7

    if-gez v2, :cond_c

    .line 286
    new-instance v0, Lcom/oculus/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    iput-object v0, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    return-void

    .line 290
    :cond_c
    iget-wide v7, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long v7, v20, v7

    long-to-int v2, v7

    .line 291
    iget-object v7, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v2, v7, :cond_e

    .line 292
    iget-boolean v0, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v0, :cond_d

    .line 293
    iput-boolean v5, v15, Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    goto :goto_7

    .line 295
    :cond_d
    iput-object v12, v15, Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 296
    iput-object v12, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    :goto_7
    return-void

    .line 302
    :cond_e
    iget-object v5, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 305
    iget-object v5, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    if-eqz v5, :cond_10

    .line 306
    iget-object v5, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v7, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/oculus/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 307
    iget-object v7, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 309
    iget-object v2, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    iget-object v0, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->trackSelection:Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    .line 310
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v4

    iget-object v0, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->trackSelection:Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v5, v7

    .line 309
    invoke-direct/range {v0 .. v5}, Lcom/oculus/video/source/hls/HlsChunkSource;->newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/oculus/video/source/hls/HlsChunkSource$EncryptionKeyChunk;

    move-result-object v0

    iput-object v0, v15, Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/oculus/android/exoplayer2/source/chunk/Chunk;

    return-void

    .line 313
    :cond_f
    iget-object v3, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    iget-object v7, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/oculus/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 314
    iget-object v3, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    iget-object v7, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->encryptionKey:[B

    invoke-direct {v6, v5, v3, v7}, Lcom/oculus/video/source/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_8

    .line 317
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/oculus/video/source/hls/HlsChunkSource;->clearEncryptionData()V

    .line 321
    :cond_11
    :goto_8
    iget-object v3, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->initializationSegment:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    if-eqz v3, :cond_12

    .line 323
    iget-object v4, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v5, v3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/oculus/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 324
    new-instance v4, Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    iget-wide v7, v3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    iget-wide v9, v3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/16 v28, 0x0

    move-object/from16 v22, v4

    move-wide/from16 v24, v7

    move-wide/from16 v26, v9

    invoke-direct/range {v22 .. v28}, Lcom/oculus/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    :cond_12
    move-object v11, v4

    .line 329
    iget-wide v3, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-wide v7, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    add-long/2addr v3, v7

    move-wide/from16 v16, v3

    .line 330
    iget v5, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    iget v7, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    add-int/2addr v5, v7

    move/from16 v22, v5

    .line 332
    iget-object v7, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/oculus/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v7, v5}, Lcom/oculus/android/exoplayer2/source/hls/TimestampAdjusterProvider;->getAdjuster(I)Lcom/oculus/android/exoplayer2/util/TimestampAdjuster;

    move-result-object v25

    .line 336
    iget-object v5, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v7, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/oculus/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 337
    new-instance v26, Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v10, v26

    iget-wide v7, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    iget-wide v13, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/16 v32, 0x0

    move-wide/from16 v28, v7

    move-wide/from16 v30, v13

    invoke-direct/range {v26 .. v32}, Lcom/oculus/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 339
    new-instance v5, Lcom/oculus/video/source/hls/HlsMediaChunk;

    move-object v7, v5

    iget-object v8, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->extractorFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v9, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->mediaDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    iget-object v13, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    iget-object v14, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->trackSelection:Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    .line 347
    invoke-interface {v14}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v14

    iget-object v0, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->trackSelection:Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    .line 348
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 p2, v5

    move-object v5, v15

    move-object v15, v0

    move-object/from16 p3, v7

    move-object/from16 p4, v8

    iget-wide v7, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long v18, v3, v7

    iget-boolean v0, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->hasGapTag:Z

    move/from16 v23, v0

    iget-boolean v0, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->isTimestampMaster:Z

    move/from16 v24, v0

    iget-object v0, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    iget-object v0, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v28, v0

    iget-object v0, v6, Lcom/oculus/video/source/hls/HlsChunkSource;->encryptionIv:[B

    move-object/from16 v29, v0

    move-object/from16 v26, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v7 .. v29}, Lcom/oculus/video/source/hls/HlsMediaChunk;-><init>(Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/upstream/DataSpec;Lcom/oculus/android/exoplayer2/upstream/DataSpec;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/util/List;ILjava/lang/Object;JJJIZZLcom/oculus/android/exoplayer2/util/TimestampAdjuster;Lcom/oculus/video/source/hls/HlsMediaChunk;Lcom/oculus/android/exoplayer2/drm/DrmInitData;[B[B)V

    move-object/from16 v0, p2

    iput-object v0, v5, Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/oculus/android/exoplayer2/source/chunk/Chunk;

    return-void
.end method

.method public getTrackGroup()Lcom/oculus/android/exoplayer2/source/TrackGroup;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->trackGroup:Lcom/oculus/android/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public getTrackSelection()Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->trackSelection:Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    return-object v0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-eqz v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->playlistTracker:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-virtual {v1, v0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->maybeThrowPlaylistRefreshError(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    :cond_0
    return-void

    .line 157
    :cond_1
    throw v0
.end method

.method public onChunkLoadCompleted(Lcom/oculus/android/exoplayer2/source/chunk/Chunk;)V
    .locals 2

    .line 369
    instance-of v0, p1, Lcom/oculus/video/source/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v0, :cond_0

    .line 370
    check-cast p1, Lcom/oculus/video/source/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 371
    invoke-virtual {p1}, Lcom/oculus/video/source/hls/HlsChunkSource$EncryptionKeyChunk;->getDataHolder()[B

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->scratchSpace:[B

    .line 372
    iget-object v0, p1, Lcom/oculus/video/source/hls/HlsChunkSource$EncryptionKeyChunk;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/oculus/video/source/hls/HlsChunkSource$EncryptionKeyChunk;->iv:Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Lcom/oculus/video/source/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object p1

    .line 372
    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/video/source/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public onChunkLoadError(Lcom/oculus/android/exoplayer2/source/chunk/Chunk;ZLjava/io/IOException;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 387
    iget-object p2, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->trackSelection:Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->trackGroup:Lcom/oculus/android/exoplayer2/source/TrackGroup;

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/oculus/android/exoplayer2/Format;

    .line 388
    invoke-virtual {v0, p1}, Lcom/oculus/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/oculus/android/exoplayer2/Format;)I

    move-result p1

    invoke-interface {p2, p1}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result p1

    .line 387
    invoke-static {p2, p1, p3}, Lcom/oculus/android/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->maybeBlacklistTrack(Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onPlaylistBlacklisted(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->trackGroup:Lcom/oculus/android/exoplayer2/source/TrackGroup;

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-virtual {v0, p1}, Lcom/oculus/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/oculus/android/exoplayer2/Format;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 400
    iget-object v1, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->trackSelection:Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v1, p1}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->trackSelection:Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->blacklist(IJ)Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    return-void
.end method

.method public selectTracks(Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->trackSelection:Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    return-void
.end method

.method public setIsTimestampMaster(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/oculus/video/source/hls/HlsChunkSource;->isTimestampMaster:Z

    return-void
.end method
