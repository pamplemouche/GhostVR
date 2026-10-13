.class final Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/source/MediaPeriod;
.implements Lcom/oculus/android/exoplayer2/source/SequenceableLoader$Callback;
.implements Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/android/exoplayer2/source/MediaPeriod;",
        "Lcom/oculus/android/exoplayer2/source/SequenceableLoader$Callback<",
        "Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream<",
        "Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource;",
        ">;>;",
        "Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback<",
        "Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource;",
        ">;"
    }
.end annotation


# instance fields
.field private final allocator:Lcom/oculus/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

.field private final chunkSourceFactory:Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;

.field private compositeSequenceableLoader:Lcom/oculus/android/exoplayer2/source/SequenceableLoader;

.field private final compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final elapsedRealtimeOffset:J

.field private final eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private eventSampleStreams:[Lcom/oculus/android/exoplayer2/source/dash/EventSampleStream;

.field private eventStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/EventStream;",
            ">;"
        }
    .end annotation
.end field

.field final id:I

.field private manifest:Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final minLoadableRetryCount:I

.field private periodIndex:I

.field private final playerEmsgHandler:Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler;

.field private sampleStreams:[Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation
.end field

.field private final trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource;",
            ">;",
            "Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final trackGroupInfos:[Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

.field private final trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(ILcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;ILcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;ILcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;JLcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/oculus/android/exoplayer2/upstream/Allocator;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    .line 96
    iput-object p2, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 97
    iput p3, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    .line 98
    iput-object p4, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;

    .line 99
    iput p5, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->minLoadableRetryCount:I

    .line 100
    iput-object p6, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 101
    iput-wide p7, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffset:J

    .line 102
    iput-object p9, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 103
    iput-object p10, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lcom/oculus/android/exoplayer2/upstream/Allocator;

    .line 104
    iput-object p11, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 105
    new-instance p1, Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler;

    invoke-direct {p1, p2, p12, p10}, Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler;-><init>(Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;Lcom/oculus/android/exoplayer2/upstream/Allocator;)V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->playerEmsgHandler:Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler;

    const/4 p1, 0x0

    .line 106
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object p4

    iput-object p4, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 107
    new-array p1, p1, [Lcom/oculus/android/exoplayer2/source/dash/EventSampleStream;

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->eventSampleStreams:[Lcom/oculus/android/exoplayer2/source/dash/EventSampleStream;

    .line 108
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;

    .line 109
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 110
    invoke-interface {p11, p1}, Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)Lcom/oculus/android/exoplayer2/source/SequenceableLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/oculus/android/exoplayer2/source/SequenceableLoader;

    .line 111
    invoke-virtual {p2, p3}, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    .line 112
    iget-object p2, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;->eventStreams:Ljava/util/List;

    iput-object p2, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    .line 113
    iget-object p1, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iget-object p2, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->buildTrackGroups(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    .line 115
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    iput-object p2, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    .line 116
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    return-void
.end method

.method private static buildManifestEventTrackGroupInfos(Ljava/util/List;[Lcom/oculus/android/exoplayer2/source/TrackGroup;[Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/EventStream;",
            ">;[",
            "Lcom/oculus/android/exoplayer2/source/TrackGroup;",
            "[",
            "Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, p3

    const/4 p3, 0x0

    .line 510
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 511
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/EventStream;

    .line 512
    invoke-virtual {v2}, Lcom/oculus/android/exoplayer2/source/dash/manifest/EventStream;->id()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v5, "application/x-emsg"

    invoke-static {v2, v5, v4, v3, v4}, Lcom/oculus/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/oculus/android/exoplayer2/drm/DrmInitData;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v2

    .line 514
    new-instance v3, Lcom/oculus/android/exoplayer2/source/TrackGroup;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/oculus/android/exoplayer2/Format;

    aput-object v2, v4, v0

    invoke-direct {v3, v4}, Lcom/oculus/android/exoplayer2/source/TrackGroup;-><init>([Lcom/oculus/android/exoplayer2/Format;)V

    aput-object v3, p1, v1

    add-int/lit8 v2, v1, 0x1

    .line 515
    invoke-static {p3}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->mpdEventTrack(I)Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v3

    aput-object v3, p2, v1

    add-int/lit8 p3, p3, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static buildPrimaryAndEmbeddedTrackGroupInfos(Ljava/util/List;[[II[Z[Z[Lcom/oculus/android/exoplayer2/source/TrackGroup;[Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[[II[Z[Z[",
            "Lcom/oculus/android/exoplayer2/source/TrackGroup;",
            "[",
            "Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 465
    aget-object v5, p1, v3

    .line 466
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 467
    array-length v7, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget v9, v5, v8

    .line 468
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v9, v9, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 470
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/oculus/android/exoplayer2/Format;

    const/4 v8, 0x0

    .line 471
    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_1

    .line 472
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v9, v9, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 475
    :cond_1
    aget v6, v5, v1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;

    add-int/lit8 v8, v4, 0x1

    .line 477
    aget-boolean v9, p3, v3

    const/4 v10, -0x1

    if-eqz v9, :cond_2

    add-int/lit8 v9, v8, 0x1

    goto :goto_3

    :cond_2
    move v9, v8

    const/4 v8, -0x1

    .line 479
    :goto_3
    aget-boolean v11, p4, v3

    if-eqz v11, :cond_3

    add-int/lit8 v11, v9, 0x1

    goto :goto_4

    :cond_3
    move v11, v9

    const/4 v9, -0x1

    .line 482
    :goto_4
    new-instance v12, Lcom/oculus/android/exoplayer2/source/TrackGroup;

    invoke-direct {v12, v7}, Lcom/oculus/android/exoplayer2/source/TrackGroup;-><init>([Lcom/oculus/android/exoplayer2/Format;)V

    aput-object v12, p5, v4

    .line 483
    iget v7, v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    .line 484
    invoke-static {v7, v5, v4, v8, v9}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrack(I[IIII)Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v7

    aput-object v7, p6, v4

    const/4 v7, 0x0

    const/4 v12, 0x1

    if-eq v8, v10, :cond_4

    .line 491
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ":emsg"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "application/x-emsg"

    invoke-static {v13, v14, v7, v10, v7}, Lcom/oculus/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/oculus/android/exoplayer2/drm/DrmInitData;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v13

    .line 493
    new-instance v14, Lcom/oculus/android/exoplayer2/source/TrackGroup;

    new-array v15, v12, [Lcom/oculus/android/exoplayer2/Format;

    aput-object v13, v15, v1

    invoke-direct {v14, v15}, Lcom/oculus/android/exoplayer2/source/TrackGroup;-><init>([Lcom/oculus/android/exoplayer2/Format;)V

    aput-object v14, p5, v8

    .line 495
    invoke-static {v5, v4}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEmsgTrack([II)Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v13

    aput-object v13, p6, v8

    :cond_4
    if-eq v9, v10, :cond_5

    .line 498
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":cea608"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "application/cea-608"

    invoke-static {v6, v8, v1, v7}, Lcom/oculus/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v6

    .line 500
    new-instance v7, Lcom/oculus/android/exoplayer2/source/TrackGroup;

    new-array v8, v12, [Lcom/oculus/android/exoplayer2/Format;

    aput-object v6, v8, v1

    invoke-direct {v7, v8}, Lcom/oculus/android/exoplayer2/source/TrackGroup;-><init>([Lcom/oculus/android/exoplayer2/Format;)V

    aput-object v7, p5, v9

    .line 502
    invoke-static {v5, v4}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedCea608Track([II)Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v4

    aput-object v4, p6, v9

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v4, v11

    goto/16 :goto_0

    :cond_6
    return v4
.end method

.method private buildSampleStream(Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;J)Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            "Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;",
            "J)",
            "Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    const/4 v1, 0x2

    .line 522
    new-array v2, v1, [I

    .line 523
    new-array v1, v1, [Lcom/oculus/android/exoplayer2/Format;

    .line 524
    iget v3, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEventMessageTrackGroupIndex:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_0

    const/16 v22, 0x1

    goto :goto_0

    :cond_0
    const/16 v22, 0x0

    :goto_0
    if-eqz v22, :cond_1

    .line 527
    iget-object v3, v12, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    iget v7, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEventMessageTrackGroupIndex:I

    .line 528
    invoke-virtual {v3, v7}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/oculus/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v1, v6

    const/4 v3, 0x4

    aput v3, v2, v6

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 531
    :goto_1
    iget v7, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedCea608TrackGroupIndex:I

    if-eq v7, v4, :cond_2

    const/16 v23, 0x1

    goto :goto_2

    :cond_2
    const/16 v23, 0x0

    :goto_2
    if-eqz v23, :cond_3

    .line 533
    iget-object v4, v12, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    iget v5, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedCea608TrackGroupIndex:I

    .line 534
    invoke-virtual {v4, v5}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/oculus/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x3

    .line 535
    aput v5, v2, v3

    move v3, v4

    .line 537
    :cond_3
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 538
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oculus/android/exoplayer2/Format;

    .line 539
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    :cond_4
    move-object v4, v1

    move-object v3, v2

    .line 541
    iget-object v1, v12, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v1, v1, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v1, :cond_5

    if-eqz v22, :cond_5

    iget-object v1, v12, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->playerEmsgHandler:Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler;

    .line 543
    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler;->newPlayerTrackEmsgHandler()Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    move-result-object v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    move-object v11, v1

    .line 545
    iget-object v13, v12, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iget-object v14, v12, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;

    iget-object v15, v12, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v1, v12, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    iget-object v2, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->adaptationSetIndices:[I

    iget v5, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    iget-wide v6, v12, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffset:J

    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, p2

    move/from16 v19, v5

    move-wide/from16 v20, v6

    move-object/from16 v24, v11

    .line 546
    invoke-interface/range {v13 .. v24}, Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;->createDashChunkSource(Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;I[ILcom/oculus/android/exoplayer2/trackselection/TrackSelection;IJZZLcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;)Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource;

    move-result-object v5

    .line 557
    new-instance v13, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget v2, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    iget-object v7, v12, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lcom/oculus/android/exoplayer2/upstream/Allocator;

    iget v10, v12, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->minLoadableRetryCount:I

    iget-object v0, v12, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->eventDispatcher:Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-object v1, v13

    move-object/from16 v6, p0

    move-wide/from16 v8, p3

    move-object v14, v11

    move-object v11, v0

    invoke-direct/range {v1 .. v11}, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;-><init>(I[I[Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/source/chunk/ChunkSource;Lcom/oculus/android/exoplayer2/source/SequenceableLoader$Callback;Lcom/oculus/android/exoplayer2/upstream/Allocator;JILcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)V

    .line 568
    monitor-enter p0

    .line 570
    :try_start_0
    iget-object v0, v12, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v13, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    monitor-exit p0

    return-object v13

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static buildTrackGroups(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/EventStream;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/oculus/android/exoplayer2/source/TrackGroupArray;",
            "[",
            "Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            ">;"
        }
    .end annotation

    .line 368
    invoke-static {p0}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->getGroupedAdaptationSetIndices(Ljava/util/List;)[[I

    move-result-object v1

    .line 370
    array-length v2, v1

    .line 371
    new-array v3, v2, [Z

    .line 372
    new-array v4, v2, [Z

    .line 373
    invoke-static {v2, p0, v1, v3, v4}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->identifyEmbeddedTracks(ILjava/util/List;[[I[Z[Z)I

    move-result v0

    add-int/2addr v0, v2

    .line 377
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v0, v5

    .line 378
    new-array v7, v0, [Lcom/oculus/android/exoplayer2/source/TrackGroup;

    .line 379
    new-array v8, v0, [Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-object v0, p0

    move-object v5, v7

    move-object v6, v8

    .line 381
    invoke-static/range {v0 .. v6}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->buildPrimaryAndEmbeddedTrackGroupInfos(Ljava/util/List;[[II[Z[Z[Lcom/oculus/android/exoplayer2/source/TrackGroup;[Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;)I

    move-result p0

    .line 385
    invoke-static {p1, v7, v8, p0}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->buildManifestEventTrackGroupInfos(Ljava/util/List;[Lcom/oculus/android/exoplayer2/source/TrackGroup;[Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;I)V

    .line 387
    new-instance p0, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {p0, v7}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/oculus/android/exoplayer2/source/TrackGroup;)V

    invoke-static {p0, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static findAdaptationSetSwitchingProperty(Ljava/util/List;)Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 576
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 577
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 578
    iget-object v2, v1, Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v3, "urn:mpeg:dash:adaptation-set-switching:2016"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getGroupedAdaptationSetIndices(Ljava/util/List;)[[I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;)[[I"
        }
    .end annotation

    .line 391
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 392
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 394
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget v4, v4, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 397
    :cond_0
    new-array v3, v0, [[I

    .line 398
    new-array v4, v0, [Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v0, :cond_4

    .line 402
    aget-boolean v7, v4, v5

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    const/4 v7, 0x1

    .line 406
    aput-boolean v7, v4, v5

    .line 408
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v8, v8, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->supplementalProperties:Ljava/util/List;

    .line 407
    invoke-static {v8}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->findAdaptationSetSwitchingProperty(Ljava/util/List;)Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v8

    if-nez v8, :cond_2

    add-int/lit8 v8, v6, 0x1

    .line 410
    new-array v7, v7, [I

    aput v5, v7, v2

    aput-object v7, v3, v6

    move v6, v8

    goto :goto_3

    .line 412
    :cond_2
    iget-object v8, v8, Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 413
    array-length v9, v8

    add-int/2addr v9, v7

    new-array v9, v9, [I

    .line 414
    aput v5, v9, v2

    const/4 v10, 0x0

    .line 415
    :goto_2
    array-length v11, v8

    if-ge v10, v11, :cond_3

    .line 416
    aget-object v11, v8, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 417
    aput-boolean v7, v4, v11

    add-int/lit8 v10, v10, 0x1

    .line 418
    aput v11, v9, v10

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v6, 0x1

    .line 420
    aput-object v9, v3, v6

    move v6, v7

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-ge v6, v0, :cond_5

    .line 425
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, [[I

    :cond_5
    return-object v3
.end method

.method private static hasCea608Track(Ljava/util/List;[I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[I)Z"
        }
    .end annotation

    .line 601
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    .line 602
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v3, v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->accessibilityDescriptors:Ljava/util/List;

    const/4 v4, 0x0

    .line 603
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 604
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 605
    iget-object v5, v5, Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v6, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static hasEventMessageTrack(Ljava/util/List;[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[I)Z"
        }
    .end annotation

    .line 587
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    .line 588
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v3, v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    const/4 v4, 0x0

    .line 589
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 590
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    .line 591
    iget-object v5, v5, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->inbandEventStreams:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static identifyEmbeddedTracks(ILjava/util/List;[[I[Z[Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[[I[Z[Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    .line 447
    aget-object v2, p2, v0

    invoke-static {p1, v2}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->hasEventMessageTrack(Ljava/util/List;[I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 448
    aput-boolean v3, p3, v0

    add-int/lit8 v1, v1, 0x1

    .line 451
    :cond_0
    aget-object v2, p2, v0

    invoke-static {p1, v2}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->hasCea608Track(Ljava/util/List;[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    aput-boolean v3, p4, v0

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static newSampleStreamArray(I)[Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    .line 615
    new-array p0, p0, [Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    return-object p0
.end method

.method private static releaseIfEmbeddedSampleStream(Lcom/oculus/android/exoplayer2/source/SampleStream;)V
    .locals 1

    .line 619
    instance-of v0, p0, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v0, :cond_0

    .line 620
    check-cast p0, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->release()V

    :cond_0
    return-void
.end method

.method private selectEmbeddedSampleStreams([Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/oculus/android/exoplayer2/source/SampleStream;[ZJLandroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;",
            "[Z[",
            "Lcom/oculus/android/exoplayer2/source/SampleStream;",
            "[ZJ",
            "Landroid/util/SparseArray<",
            "Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 274
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_7

    .line 275
    aget-object v2, p3, v1

    instance-of v2, v2, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-nez v2, :cond_0

    aget-object v2, p3, v1

    instance-of v2, v2, Lcom/oculus/android/exoplayer2/source/EmptySampleStream;

    if-eqz v2, :cond_2

    :cond_0
    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    aget-boolean v2, p2, v1

    if-nez v2, :cond_2

    .line 278
    :cond_1
    aget-object v2, p3, v1

    invoke-static {v2}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->releaseIfEmbeddedSampleStream(Lcom/oculus/android/exoplayer2/source/SampleStream;)V

    const/4 v2, 0x0

    .line 279
    aput-object v2, p3, v1

    .line 283
    :cond_2
    aget-object v2, p1, v1

    if-eqz v2, :cond_6

    .line 284
    iget-object v2, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    aget-object v3, p1, v1

    invoke-interface {v3}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/oculus/android/exoplayer2/source/TrackGroup;)I

    move-result v2

    .line 285
    iget-object v3, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v2, v3, v2

    .line 286
    iget v3, v2, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 287
    iget v3, v2, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrackGroupIndex:I

    invoke-virtual {p7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 289
    aget-object v5, p3, v1

    if-nez v3, :cond_3

    .line 290
    instance-of v6, v5, Lcom/oculus/android/exoplayer2/source/EmptySampleStream;

    goto :goto_1

    :cond_3
    instance-of v6, v5, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v6, :cond_4

    move-object v6, v5

    check-cast v6, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object v6, v6, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-ne v6, v3, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_6

    .line 294
    invoke-static {v5}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->releaseIfEmbeddedSampleStream(Lcom/oculus/android/exoplayer2/source/SampleStream;)V

    if-nez v3, :cond_5

    .line 295
    new-instance v2, Lcom/oculus/android/exoplayer2/source/EmptySampleStream;

    invoke-direct {v2}, Lcom/oculus/android/exoplayer2/source/EmptySampleStream;-><init>()V

    goto :goto_2

    :cond_5
    iget v2, v2, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    .line 296
    invoke-virtual {v3, p5, p6, v2}, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;->selectEmbeddedTrack(JI)Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    move-result-object v2

    :goto_2
    aput-object v2, p3, v1

    .line 297
    aput-boolean v4, p4, v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private selectEventSampleStreams([Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/oculus/android/exoplayer2/source/SampleStream;[ZLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;",
            "[Z[",
            "Lcom/oculus/android/exoplayer2/source/SampleStream;",
            "[Z",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/EventSampleStream;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 242
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 243
    aget-object v2, p3, v1

    instance-of v2, v2, Lcom/oculus/android/exoplayer2/source/dash/EventSampleStream;

    if-eqz v2, :cond_2

    .line 244
    aget-object v2, p3, v1

    check-cast v2, Lcom/oculus/android/exoplayer2/source/dash/EventSampleStream;

    .line 245
    aget-object v3, p1, v1

    if-eqz v3, :cond_1

    aget-boolean v3, p2, v1

    if-nez v3, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 246
    aput-object v2, p3, v1

    .line 252
    :cond_2
    :goto_2
    aget-object v2, p3, v1

    if-nez v2, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_3

    .line 253
    iget-object v2, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    aget-object v3, p1, v1

    invoke-interface {v3}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/oculus/android/exoplayer2/source/TrackGroup;)I

    move-result v2

    .line 254
    iget-object v3, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v2, v3, v2

    .line 255
    iget v3, v2, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 256
    iget-object v3, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    iget v2, v2, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->eventStreamGroupIndex:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/EventStream;

    .line 257
    aget-object v3, p1, v1

    invoke-interface {v3}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oculus/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v3

    .line 258
    new-instance v4, Lcom/oculus/android/exoplayer2/source/dash/EventSampleStream;

    iget-object v5, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v5, v5, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    invoke-direct {v4, v2, v3, v5}, Lcom/oculus/android/exoplayer2/source/dash/EventSampleStream;-><init>(Lcom/oculus/android/exoplayer2/source/dash/manifest/EventStream;Lcom/oculus/android/exoplayer2/Format;Z)V

    .line 259
    aput-object v4, p3, v1

    const/4 v2, 0x1

    .line 260
    aput-boolean v2, p4, v1

    .line 261
    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private selectPrimarySampleStreams([Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/oculus/android/exoplayer2/source/SampleStream;[ZJLandroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;",
            "[Z[",
            "Lcom/oculus/android/exoplayer2/source/SampleStream;",
            "[ZJ",
            "Landroid/util/SparseArray<",
            "Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 212
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 213
    aget-object v1, p3, v0

    instance-of v1, v1, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v1, :cond_2

    .line 215
    aget-object v1, p3, v0

    check-cast v1, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 216
    aget-object v2, p1, v0

    if-eqz v2, :cond_1

    aget-boolean v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    aget-object v3, p1, v0

    invoke-interface {v3}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/oculus/android/exoplayer2/source/TrackGroup;)I

    move-result v2

    .line 221
    invoke-virtual {p7, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 217
    :cond_1
    :goto_1
    invoke-virtual {v1, p0}, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;->release(Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    const/4 v1, 0x0

    .line 218
    aput-object v1, p3, v0

    .line 225
    :cond_2
    :goto_2
    aget-object v1, p3, v0

    if-nez v1, :cond_3

    aget-object v1, p1, v0

    if-eqz v1, :cond_3

    .line 226
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/oculus/android/exoplayer2/source/TrackGroup;)I

    move-result v1

    .line 227
    iget-object v2, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v2, v2, v1

    .line 228
    iget v3, v2, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    if-nez v3, :cond_3

    .line 229
    aget-object v3, p1, v0

    invoke-direct {p0, v2, v3, p5, p6}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->buildSampleStream(Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;J)Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v2

    .line 231
    invoke-virtual {p7, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    aput-object v2, p3, v0

    const/4 v1, 0x1

    .line 233
    aput-boolean v1, p4, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/oculus/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 307
    invoke-virtual {v3, p1, p2, p3}, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;->discardBuffer(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/oculus/android/exoplayer2/SeekParameters;)J
    .locals 6

    .line 349
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 350
    iget v4, v3, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 351
    invoke-virtual {v3, p1, p2, p3}, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;->getAdjustedSeekPositionUs(JLcom/oculus/android/exoplayer2/SeekParameters;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/oculus/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/oculus/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lcom/oculus/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 56
    check-cast p1, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {p0, p1}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    .line 361
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public declared-synchronized onSampleStreamReleased(Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public prepare(Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    .line 168
    invoke-interface {p1, p0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/oculus/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/oculus/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/source/SequenceableLoader;->reevaluateBuffer(J)V

    return-void
.end method

.method public release()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->playerEmsgHandler:Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler;->release()V

    .line 148
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 149
    invoke-virtual {v3, p0}, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;->release(Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 5

    .line 338
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 339
    invoke-virtual {v4, p1, p2}, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;->seekToUs(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->eventSampleStreams:[Lcom/oculus/android/exoplayer2/source/dash/EventSampleStream;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 342
    invoke-virtual {v3, p1, p2}, Lcom/oculus/android/exoplayer2/source/dash/EventSampleStream;->seekToUs(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-wide p1
.end method

.method public selectTracks([Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/oculus/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 11

    move-object v8, p0

    .line 184
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 185
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move-object v7, v9

    .line 187
    invoke-direct/range {v0 .. v7}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->selectPrimarySampleStreams([Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/oculus/android/exoplayer2/source/SampleStream;[ZJLandroid/util/SparseArray;)V

    move-object v5, v10

    .line 189
    invoke-direct/range {v0 .. v5}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->selectEventSampleStreams([Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/oculus/android/exoplayer2/source/SampleStream;[ZLjava/util/List;)V

    move-wide/from16 v5, p5

    .line 191
    invoke-direct/range {v0 .. v7}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->selectEmbeddedSampleStreams([Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/oculus/android/exoplayer2/source/SampleStream;[ZJLandroid/util/SparseArray;)V

    .line 194
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v0

    iput-object v0, v8, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    const/4 v0, 0x0

    .line 195
    :goto_0
    iget-object v1, v8, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 196
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/oculus/android/exoplayer2/source/dash/EventSampleStream;

    iput-object v0, v8, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->eventSampleStreams:[Lcom/oculus/android/exoplayer2/source/dash/EventSampleStream;

    .line 199
    iget-object v0, v8, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->eventSampleStreams:[Lcom/oculus/android/exoplayer2/source/dash/EventSampleStream;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 200
    iget-object v0, v8, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v1, v8, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 201
    invoke-interface {v0, v1}, Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)Lcom/oculus/android/exoplayer2/source/SequenceableLoader;

    move-result-object v0

    iput-object v0, v8, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/oculus/android/exoplayer2/source/SequenceableLoader;

    return-wide p5
.end method

.method public updateManifest(Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;I)V
    .locals 7

    .line 126
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 127
    iput p2, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    .line 128
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->playerEmsgHandler:Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler;

    invoke-virtual {v0, p1}, Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler;->updateManifest(Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;)V

    .line 129
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 130
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 131
    invoke-virtual {v4}, Lcom/oculus/android/exoplayer2/source/chunk/ChunkSampleStream;->getChunkSource()Lcom/oculus/android/exoplayer2/source/chunk/ChunkSource;

    move-result-object v4

    check-cast v4, Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource;

    invoke-interface {v4, p1, p2}, Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource;->updateManifest(Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)V

    .line 135
    :cond_1
    invoke-virtual {p1, p2}, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p2

    iget-object p2, p2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;->eventStreams:Ljava/util/List;

    iput-object p2, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    .line 136
    iget-object p2, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->eventSampleStreams:[Lcom/oculus/android/exoplayer2/source/dash/EventSampleStream;

    array-length v0, p2

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v2, p2, v1

    .line 137
    iget-object v3, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/android/exoplayer2/source/dash/manifest/EventStream;

    .line 138
    invoke-virtual {v4}, Lcom/oculus/android/exoplayer2/source/dash/manifest/EventStream;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/oculus/android/exoplayer2/source/dash/EventSampleStream;->eventStreamId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 139
    iget-boolean v3, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    invoke-virtual {v2, v4, v3}, Lcom/oculus/android/exoplayer2/source/dash/EventSampleStream;->updateEventStream(Lcom/oculus/android/exoplayer2/source/dash/manifest/EventStream;Z)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
