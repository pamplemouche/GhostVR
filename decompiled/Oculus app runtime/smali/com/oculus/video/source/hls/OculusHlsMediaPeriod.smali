.class public final Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;
.super Ljava/lang/Object;
.source "OculusHlsMediaPeriod.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/source/MediaPeriod;
.implements Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;
.implements Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistEventListener;


# instance fields
.field private final allocator:Lcom/oculus/android/exoplayer2/upstream/Allocator;

.field private final allowChunklessPreparation:Z

.field private callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

.field private compositeSequenceableLoader:Lcom/oculus/android/exoplayer2/source/SequenceableLoader;

.field private final compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final continueLoadingHandler:Landroid/os/Handler;

.field private final dataSourceFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;

.field private enabledSampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

.field private final eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final extractorFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private final minLoadableRetryCount:I

.field private pendingPrepareCount:I

.field private playlistEventListener:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistEventListener;

.field private final playlistTracker:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

.field private sampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

.field private final streamWrapperIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/oculus/android/exoplayer2/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjusterProvider:Lcom/oculus/android/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;ILcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/oculus/android/exoplayer2/upstream/Allocator;Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistEventListener;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Z)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->extractorFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 81
    iput-object p2, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->playlistTracker:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    .line 82
    iput-object p3, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->dataSourceFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 83
    iput p4, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->minLoadableRetryCount:I

    .line 84
    iput-object p5, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 85
    iput-object p6, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->allocator:Lcom/oculus/android/exoplayer2/upstream/Allocator;

    .line 86
    iput-object p8, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 87
    iput-boolean p9, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->allowChunklessPreparation:Z

    .line 88
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    .line 89
    new-instance p1, Lcom/oculus/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/source/hls/TimestampAdjusterProvider;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->timestampAdjusterProvider:Lcom/oculus/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    .line 90
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->continueLoadingHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 91
    new-array p2, p1, [Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    iput-object p2, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->sampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    .line 92
    new-array p1, p1, [Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    .line 94
    iput-object p7, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->playlistEventListener:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistEventListener;

    return-void
.end method

.method private buildAndPrepareMainSampleStreamWrapper(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;J)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v8, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 372
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v3, v4, :cond_3

    .line 373
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 374
    iget-object v5, v4, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    .line 375
    iget v6, v5, Lcom/oculus/android/exoplayer2/Format;->height:I

    if-gtz v6, :cond_1

    iget-object v6, v5, Lcom/oculus/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/oculus/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 377
    :cond_0
    iget-object v5, v5, Lcom/oculus/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v5, v11}, Lcom/oculus/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 378
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 376
    :cond_1
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 381
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v12, v1

    goto :goto_3

    .line 386
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 389
    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_5
    move-object v12, v0

    .line 393
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v11

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 394
    new-array v0, v9, [Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 395
    aget-object v0, v13, v9

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v14, v0, Lcom/oculus/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    const/4 v1, 0x0

    .line 396
    iget-object v3, v8, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Lcom/oculus/android/exoplayer2/Format;

    iget-object v4, v8, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedCaptionFormats:Ljava/util/List;

    move-object v0, p0

    move-object v2, v13

    move-wide/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->buildSampleStreamWrapper(I[Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/oculus/android/exoplayer2/Format;Ljava/util/List;J)Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    move-result-object v0

    .line 398
    iget-object v1, v7, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->sampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    aput-object v0, v1, v9

    .line 399
    iget-boolean v1, v7, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->allowChunklessPreparation:Z

    if-eqz v1, :cond_f

    if-eqz v14, :cond_f

    .line 400
    invoke-static {v14, v10}, Lcom/oculus/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 401
    :goto_4
    invoke-static {v14, v11}, Lcom/oculus/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    .line 402
    :goto_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_b

    .line 404
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/oculus/android/exoplayer2/Format;

    const/4 v4, 0x0

    .line 405
    :goto_6
    array-length v5, v1

    if-ge v4, v5, :cond_8

    .line 406
    aget-object v5, v13, v4

    iget-object v5, v5, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-static {v5}, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->deriveVideoFormat(Lcom/oculus/android/exoplayer2/Format;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 408
    :cond_8
    new-instance v4, Lcom/oculus/android/exoplayer2/source/TrackGroup;

    invoke-direct {v4, v1}, Lcom/oculus/android/exoplayer2/source/TrackGroup;-><init>([Lcom/oculus/android/exoplayer2/Format;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_a

    .line 410
    iget-object v1, v8, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Lcom/oculus/android/exoplayer2/Format;

    if-nez v1, :cond_9

    iget-object v1, v8, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    .line 411
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 412
    :cond_9
    new-instance v1, Lcom/oculus/android/exoplayer2/source/TrackGroup;

    new-array v2, v11, [Lcom/oculus/android/exoplayer2/Format;

    aget-object v4, v13, v9

    iget-object v4, v4, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v5, v8, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Lcom/oculus/android/exoplayer2/Format;

    const/4 v6, -0x1

    .line 414
    invoke-static {v4, v5, v6}, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->deriveMuxedAudioFormat(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/Format;I)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v4

    aput-object v4, v2, v9

    invoke-direct {v1, v2}, Lcom/oculus/android/exoplayer2/source/TrackGroup;-><init>([Lcom/oculus/android/exoplayer2/Format;)V

    .line 412
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_a
    iget-object v1, v8, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedCaptionFormats:Ljava/util/List;

    if-eqz v1, :cond_d

    const/4 v2, 0x0

    .line 419
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_d

    .line 420
    new-instance v4, Lcom/oculus/android/exoplayer2/source/TrackGroup;

    new-array v5, v11, [Lcom/oculus/android/exoplayer2/Format;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oculus/android/exoplayer2/Format;

    aput-object v6, v5, v9

    invoke-direct {v4, v5}, Lcom/oculus/android/exoplayer2/source/TrackGroup;-><init>([Lcom/oculus/android/exoplayer2/Format;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    if-eqz v2, :cond_e

    .line 425
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/oculus/android/exoplayer2/Format;

    const/4 v2, 0x0

    .line 426
    :goto_8
    array-length v4, v1

    if-ge v2, v4, :cond_c

    .line 427
    aget-object v4, v13, v2

    iget-object v4, v4, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    .line 428
    iget-object v5, v8, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Lcom/oculus/android/exoplayer2/Format;

    iget v6, v4, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    .line 429
    invoke-static {v4, v5, v6}, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->deriveMuxedAudioFormat(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/Format;I)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 432
    :cond_c
    new-instance v2, Lcom/oculus/android/exoplayer2/source/TrackGroup;

    invoke-direct {v2, v1}, Lcom/oculus/android/exoplayer2/source/TrackGroup;-><init>([Lcom/oculus/android/exoplayer2/Format;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_d
    new-instance v1, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    new-array v2, v9, [Lcom/oculus/android/exoplayer2/source/TrackGroup;

    .line 438
    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/oculus/android/exoplayer2/source/TrackGroup;

    invoke-direct {v1, v2}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/oculus/android/exoplayer2/source/TrackGroup;)V

    .line 437
    invoke-virtual {v0, v1, v9}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->prepareWithMasterPlaylistInfo(Lcom/oculus/android/exoplayer2/source/TrackGroupArray;I)V

    goto :goto_9

    .line 435
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected codecs attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_f
    invoke-virtual {v0, v11}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    .line 441
    invoke-virtual {v0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    :goto_9
    return-void
.end method

.method private buildAndPrepareSampleStreamWrappers(J)V
    .locals 16

    move-object/from16 v7, p0

    .line 315
    iget-object v0, v7, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->playlistTracker:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-virtual {v0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->getMasterPlaylist()Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v0

    .line 316
    iget-object v8, v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    .line 317
    iget-object v9, v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    .line 319
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x1

    add-int/2addr v1, v10

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 320
    new-array v2, v1, [Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    iput-object v2, v7, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->sampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    .line 321
    iput v1, v7, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->pendingPrepareCount:I

    move-wide/from16 v11, p1

    .line 323
    invoke-direct {v7, v0, v11, v12}, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->buildAndPrepareMainSampleStreamWrapper(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;J)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 329
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_1

    .line 330
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v1, 0x1

    .line 331
    new-array v2, v10, [Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aput-object v5, v2, v13

    const/4 v3, 0x0

    .line 336
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v13, v5

    move-wide/from16 v5, p1

    .line 332
    invoke-direct/range {v0 .. v6}, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->buildSampleStreamWrapper(I[Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/oculus/android/exoplayer2/Format;Ljava/util/List;J)Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    move-result-object v0

    .line 338
    iget-object v1, v7, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->sampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    add-int/lit8 v2, v15, 0x1

    aput-object v0, v1, v15

    .line 339
    iget-object v1, v13, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    .line 340
    iget-boolean v3, v7, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->allowChunklessPreparation:Z

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 341
    new-instance v1, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    new-array v3, v10, [Lcom/oculus/android/exoplayer2/source/TrackGroup;

    new-instance v4, Lcom/oculus/android/exoplayer2/source/TrackGroup;

    new-array v5, v10, [Lcom/oculus/android/exoplayer2/Format;

    iget-object v6, v13, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    const/4 v13, 0x0

    aput-object v6, v5, v13

    invoke-direct {v4, v5}, Lcom/oculus/android/exoplayer2/source/TrackGroup;-><init>([Lcom/oculus/android/exoplayer2/Format;)V

    aput-object v4, v3, v13

    invoke-direct {v1, v3}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/oculus/android/exoplayer2/source/TrackGroup;)V

    invoke-virtual {v0, v1, v13}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->prepareWithMasterPlaylistInfo(Lcom/oculus/android/exoplayer2/source/TrackGroupArray;I)V

    goto :goto_1

    .line 344
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    :goto_1
    add-int/lit8 v14, v14, 0x1

    move v15, v2

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 349
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 350
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v1, 0x3

    .line 351
    new-array v2, v10, [Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v0, 0x0

    aput-object v13, v2, v0

    const/4 v3, 0x0

    .line 356
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    .line 352
    invoke-direct/range {v0 .. v6}, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->buildSampleStreamWrapper(I[Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/oculus/android/exoplayer2/Format;Ljava/util/List;J)Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    move-result-object v0

    .line 358
    iget-object v1, v7, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->sampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    add-int/lit8 v2, v15, 0x1

    aput-object v0, v1, v15

    .line 359
    new-instance v1, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    new-array v3, v10, [Lcom/oculus/android/exoplayer2/source/TrackGroup;

    new-instance v4, Lcom/oculus/android/exoplayer2/source/TrackGroup;

    new-array v5, v10, [Lcom/oculus/android/exoplayer2/Format;

    iget-object v6, v13, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    const/4 v13, 0x0

    aput-object v6, v5, v13

    invoke-direct {v4, v5}, Lcom/oculus/android/exoplayer2/source/TrackGroup;-><init>([Lcom/oculus/android/exoplayer2/Format;)V

    aput-object v4, v3, v13

    invoke-direct {v1, v3}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/oculus/android/exoplayer2/source/TrackGroup;)V

    invoke-virtual {v0, v1, v13}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->prepareWithMasterPlaylistInfo(Lcom/oculus/android/exoplayer2/source/TrackGroupArray;I)V

    add-int/lit8 v8, v8, 0x1

    move v15, v2

    goto :goto_2

    .line 364
    :cond_2
    iget-object v0, v7, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->sampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    iput-object v0, v7, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    return-void
.end method

.method private buildSampleStreamWrapper(I[Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/oculus/android/exoplayer2/Format;Ljava/util/List;J)Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Lcom/oculus/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/Format;",
            ">;J)",
            "Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;"
        }
    .end annotation

    move-object v10, p0

    .line 447
    new-instance v7, Lcom/oculus/video/source/hls/HlsChunkSource;

    iget-object v1, v10, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->extractorFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v2, v10, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->playlistTracker:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    iget-object v4, v10, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->dataSourceFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iget-object v5, v10, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->timestampAdjusterProvider:Lcom/oculus/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    move-object v0, v7

    move-object v3, p2

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/oculus/video/source/hls/HlsChunkSource;-><init>(Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;[Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/oculus/android/exoplayer2/source/hls/TimestampAdjusterProvider;Ljava/util/List;)V

    .line 449
    new-instance v11, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    iget-object v4, v10, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->allocator:Lcom/oculus/android/exoplayer2/upstream/Allocator;

    iget v8, v10, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->minLoadableRetryCount:I

    iget-object v9, v10, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-object v0, v11

    move v1, p1

    move-object v2, p0

    move-object v3, v7

    move-wide/from16 v5, p5

    move-object v7, p3

    invoke-direct/range {v0 .. v9}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;-><init>(ILcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;Lcom/oculus/video/source/hls/HlsChunkSource;Lcom/oculus/android/exoplayer2/upstream/Allocator;JLcom/oculus/android/exoplayer2/Format;ILcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)V

    return-object v11
.end method

.method private continuePreparingOrLoading()V
    .locals 4

    .line 454
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)V

    goto :goto_1

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->sampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 459
    invoke-virtual {v3}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static deriveMuxedAudioFormat(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/Format;I)Lcom/oculus/android/exoplayer2/Format;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    .line 487
    iget-object v2, v1, Lcom/oculus/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 488
    iget v3, v1, Lcom/oculus/android/exoplayer2/Format;->channelCount:I

    .line 489
    iget v4, v1, Lcom/oculus/android/exoplayer2/Format;->selectionFlags:I

    .line 490
    iget-object v1, v1, Lcom/oculus/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object v15, v1

    move-object v7, v2

    move v10, v3

    move v14, v4

    goto :goto_0

    .line 492
    :cond_0
    iget-object v1, v0, Lcom/oculus/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oculus/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v15, v1

    move-object v7, v2

    const/4 v10, -0x1

    const/4 v14, 0x0

    .line 494
    :goto_0
    invoke-static {v7}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 495
    iget-object v5, v0, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    const/4 v9, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v8, p2

    invoke-static/range {v5 .. v15}, Lcom/oculus/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/oculus/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method private static deriveVideoFormat(Lcom/oculus/android/exoplayer2/Format;)Lcom/oculus/android/exoplayer2/Format;
    .locals 12

    .line 465
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/oculus/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 466
    invoke-static {v4}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 467
    iget-object v2, p0, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget v5, p0, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    iget v7, p0, Lcom/oculus/android/exoplayer2/Format;->width:I

    iget v8, p0, Lcom/oculus/android/exoplayer2/Format;->height:I

    iget v9, p0, Lcom/oculus/android/exoplayer2/Format;->frameRate:F

    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/oculus/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;Lcom/oculus/android/exoplayer2/drm/DrmInitData;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->compositeSequenceableLoader:Lcom/oculus/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 207
    invoke-virtual {v3, p1, p2, p3}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->discardBuffer(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/oculus/android/exoplayer2/SeekParameters;)J
    .locals 0

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->compositeSequenceableLoader:Lcom/oculus/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->compositeSequenceableLoader:Lcom/oculus/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lcom/oculus/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->sampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 115
    invoke-virtual {v3}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->maybeThrowPrepareError()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 50
    check-cast p1, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {p0, p1}, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->onContinueLoadingRequested(Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;)V
    .locals 0

    .line 288
    iget-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    if-nez p1, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public onPlaylistBlacklisted(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->sampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 307
    invoke-virtual {v3, p1, p2, p3}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->onPlaylistBlacklisted(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->continuePreparingOrLoading()V

    return-void
.end method

.method public onPlaylistChanged(Ljava/util/IdentityHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap<",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;",
            ">;)V"
        }
    .end annotation

    .line 300
    invoke-direct {p0}, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->continuePreparingOrLoading()V

    .line 301
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->playlistEventListener:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistEventListener;

    invoke-interface {v0, p1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistEventListener;->onPlaylistChanged(Ljava/util/IdentityHashMap;)V

    return-void
.end method

.method public onPlaylistRefreshRequired(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->playlistTracker:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-virtual {v0, p1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->refreshPlaylist(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    return-void
.end method

.method public onPrepared()V
    .locals 11

    .line 261
    iget v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->pendingPrepareCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->pendingPrepareCount:I

    if-lez v0, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->sampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 267
    invoke-virtual {v5}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    iget v5, v5, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    :cond_1
    new-array v0, v4, [Lcom/oculus/android/exoplayer2/source/TrackGroup;

    .line 271
    iget-object v1, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->sampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    .line 272
    invoke-virtual {v6}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    move-result-object v7

    iget v7, v7, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->length:I

    move v8, v5

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_2

    add-int/lit8 v9, v8, 0x1

    .line 274
    invoke-virtual {v6}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v10

    aput-object v10, v0, v8

    add-int/lit8 v5, v5, 0x1

    move v8, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_1

    .line 277
    :cond_3
    new-instance v1, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v1, v0}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/oculus/android/exoplayer2/source/TrackGroup;)V

    iput-object v1, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    .line 278
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/oculus/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public prepare(Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    .line 108
    iget-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->playlistTracker:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-virtual {p1, p0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->addListener(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistEventListener;)V

    .line 109
    invoke-direct {p0, p2, p3}, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->buildAndPrepareSampleStreamWrappers(J)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->compositeSequenceableLoader:Lcom/oculus/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/source/SequenceableLoader;->reevaluateBuffer(J)V

    return-void
.end method

.method public release()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->playlistTracker:Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;

    invoke-virtual {v0, p0}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;->removeListener(Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistEventListener;)V

    .line 99
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->continueLoadingHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->sampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 101
    invoke-virtual {v3}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 241
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    move-result v0

    const/4 v1, 0x1

    .line 242
    :goto_0
    iget-object v2, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 243
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->timestampAdjusterProvider:Lcom/oculus/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/source/hls/TimestampAdjusterProvider;->reset()V

    :cond_1
    return-wide p1
.end method

.method public selectTracks([Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/oculus/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 128
    array-length v3, v1

    new-array v3, v3, [I

    .line 129
    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 130
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 131
    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_0

    const/4 v7, -0x1

    goto :goto_1

    :cond_0
    iget-object v7, v0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v9, v2, v6

    .line 132
    invoke-virtual {v7, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    aput v7, v3, v6

    .line 133
    aput v8, v4, v6

    .line 134
    aget-object v7, v1, v6

    if-eqz v7, :cond_2

    .line 135
    aget-object v7, v1, v6

    invoke-interface {v7}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    const/4 v9, 0x0

    .line 136
    :goto_2
    iget-object v10, v0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->sampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    array-length v11, v10

    if-ge v9, v11, :cond_2

    .line 137
    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/oculus/android/exoplayer2/source/TrackGroup;)I

    move-result v10

    if-eq v10, v8, :cond_1

    .line 138
    aput v9, v4, v6

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 146
    :cond_3
    iget-object v6, v0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 148
    array-length v6, v1

    new-array v6, v6, [Lcom/oculus/android/exoplayer2/source/SampleStream;

    .line 149
    array-length v7, v1

    new-array v7, v7, [Lcom/oculus/android/exoplayer2/source/SampleStream;

    .line 150
    array-length v8, v1

    new-array v15, v8, [Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    .line 152
    iget-object v8, v0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->sampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    array-length v8, v8

    new-array v13, v8, [Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 154
    :goto_4
    iget-object v8, v0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->sampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    array-length v8, v8

    if-ge v14, v8, :cond_10

    const/4 v8, 0x0

    .line 155
    :goto_5
    array-length v9, v1

    if-ge v8, v9, :cond_6

    .line 156
    aget v9, v3, v8

    const/4 v10, 0x0

    if-ne v9, v14, :cond_4

    aget-object v9, v2, v8

    goto :goto_6

    :cond_4
    move-object v9, v10

    :goto_6
    aput-object v9, v7, v8

    .line 157
    aget v9, v4, v8

    if-ne v9, v14, :cond_5

    aget-object v10, v1, v8

    :cond_5
    aput-object v10, v15, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 159
    :cond_6
    iget-object v8, v0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->sampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    aget-object v11, v8, v14

    move-object v8, v11

    move-object v9, v15

    move-object/from16 v10, p2

    move-object v5, v11

    move-object v11, v7

    move v2, v12

    move-object/from16 v12, p4

    move/from16 v17, v2

    move-object/from16 v18, v13

    move v2, v14

    move-wide/from16 v13, p5

    move-object/from16 v19, v15

    move/from16 v15, v16

    .line 160
    invoke-virtual/range {v8 .. v15}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->selectTracks([Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/oculus/android/exoplayer2/source/SampleStream;[ZJZ)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 163
    :goto_7
    array-length v11, v1

    const/4 v12, 0x1

    if-ge v9, v11, :cond_b

    .line 164
    aget v11, v4, v9

    if-ne v11, v2, :cond_8

    .line 166
    aget-object v10, v7, v9

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    goto :goto_8

    :cond_7
    const/4 v10, 0x0

    :goto_8
    invoke-static {v10}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 167
    aget-object v10, v7, v9

    aput-object v10, v6, v9

    .line 169
    iget-object v10, v0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v11, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    goto :goto_a

    .line 170
    :cond_8
    aget v11, v3, v9

    if-ne v11, v2, :cond_a

    .line 172
    aget-object v11, v7, v9

    if-nez v11, :cond_9

    goto :goto_9

    :cond_9
    const/4 v12, 0x0

    :goto_9
    invoke-static {v12}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    :cond_a
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_b
    if-eqz v10, :cond_f

    .line 176
    aput-object v5, v18, v17

    add-int/lit8 v9, v17, 0x1

    if-nez v17, :cond_d

    .line 180
    invoke-virtual {v5, v12}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    if-nez v8, :cond_c

    .line 181
    iget-object v8, v0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    array-length v10, v8

    if-eqz v10, :cond_c

    const/4 v10, 0x0

    aget-object v8, v8, v10

    if-eq v5, v8, :cond_e

    goto :goto_b

    :cond_c
    const/4 v10, 0x0

    .line 185
    :goto_b
    iget-object v5, v0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->timestampAdjusterProvider:Lcom/oculus/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v5}, Lcom/oculus/android/exoplayer2/source/hls/TimestampAdjusterProvider;->reset()V

    move v12, v9

    const/16 v16, 0x1

    goto :goto_c

    :cond_d
    const/4 v10, 0x0

    .line 189
    invoke-virtual {v5, v10}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    :cond_e
    move v12, v9

    goto :goto_c

    :cond_f
    const/4 v10, 0x0

    move/from16 v12, v17

    :goto_c
    add-int/lit8 v14, v2, 0x1

    move-object/from16 v2, p3

    move-object/from16 v13, v18

    move-object/from16 v15, v19

    goto/16 :goto_4

    :cond_10
    move/from16 v17, v12

    move-object/from16 v18, v13

    const/4 v10, 0x0

    .line 194
    array-length v1, v6

    move-object/from16 v2, p3

    invoke-static {v6, v10, v2, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v1, v18

    .line 196
    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    iput-object v1, v0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    .line 198
    iget-object v1, v0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v2, v0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    .line 199
    invoke-interface {v1, v2}, Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)Lcom/oculus/android/exoplayer2/source/SequenceableLoader;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/video/source/hls/OculusHlsMediaPeriod;->compositeSequenceableLoader:Lcom/oculus/android/exoplayer2/source/SequenceableLoader;

    return-wide p5
.end method
