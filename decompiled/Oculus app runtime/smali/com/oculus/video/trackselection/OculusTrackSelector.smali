.class public Lcom/oculus/video/trackselection/OculusTrackSelector;
.super Lcom/oculus/android/exoplayer2/trackselection/DefaultTrackSelector;
.source "OculusTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;
    }
.end annotation


# instance fields
.field private final audioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

.field private currentVideoResolution:Landroid/util/Size;

.field private frameDropInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;",
            ">;"
        }
    .end annotation
.end field

.field private smallestVideoResolution:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/trackselection/TrackSelection$Factory;Lcom/oculus/video/audio/AudioChannelLayout;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/oculus/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/oculus/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/oculus/video/trackselection/OculusTrackSelector;->smallestVideoResolution:Landroid/util/Size;

    .line 35
    iput-object p1, p0, Lcom/oculus/video/trackselection/OculusTrackSelector;->currentVideoResolution:Landroid/util/Size;

    .line 43
    iput-object p2, p0, Lcom/oculus/video/trackselection/OculusTrackSelector;->audioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/trackselection/OculusTrackSelector;->frameDropInfo:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onDroppedDelayedFrame(JJJ)V
    .locals 11

    move-object v0, p0

    .line 52
    iget-object v1, v0, Lcom/oculus/video/trackselection/OculusTrackSelector;->currentVideoResolution:Landroid/util/Size;

    if-nez v1, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v2, v0, Lcom/oculus/video/trackselection/OculusTrackSelector;->frameDropInfo:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    iget-object v1, v0, Lcom/oculus/video/trackselection/OculusTrackSelector;->frameDropInfo:Ljava/util/Map;

    iget-object v2, v0, Lcom/oculus/video/trackselection/OculusTrackSelector;->currentVideoResolution:Landroid/util/Size;

    new-instance v10, Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;

    move-object v3, v10

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;-><init>(JJJ)V

    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_1
    iget-object v1, v0, Lcom/oculus/video/trackselection/OculusTrackSelector;->frameDropInfo:Ljava/util/Map;

    iget-object v2, v0, Lcom/oculus/video/trackselection/OculusTrackSelector;->currentVideoResolution:Landroid/util/Size;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;

    .line 62
    iget-wide v2, v1, Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;->frameDrops:J

    add-long/2addr v2, p1

    iput-wide v2, v1, Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;->frameDrops:J

    .line 63
    iget-wide v2, v1, Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;->decodedFrameCount:J

    add-long/2addr v2, p3

    iput-wide v2, v1, Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;->decodedFrameCount:J

    .line 64
    iget-wide v2, v1, Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;->elapsedMs:J

    add-long v2, v2, p5

    iput-wide v2, v1, Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;->elapsedMs:J

    .line 67
    :goto_0
    iget-object v1, v0, Lcom/oculus/video/trackselection/OculusTrackSelector;->frameDropInfo:Ljava/util/Map;

    iget-object v2, v0, Lcom/oculus/video/trackselection/OculusTrackSelector;->currentVideoResolution:Landroid/util/Size;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;

    .line 68
    iget-wide v2, v1, Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;->frameDrops:J

    long-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    iget-wide v3, v1, Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;->decodedFrameCount:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    .line 73
    iget-wide v3, v1, Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;->elapsedMs:J

    invoke-static {v3, v4, v2}, Lcom/oculus/video/Settings;->useFrameDropBasedTrackSelection(JF)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/oculus/video/trackselection/OculusTrackSelector;->smallestVideoResolution:Landroid/util/Size;

    if-eqz v1, :cond_3

    .line 75
    new-instance v1, Lcom/oculus/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {v1}, Lcom/oculus/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/oculus/video/trackselection/OculusTrackSelector;->getParameters()Lcom/oculus/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    .line 80
    iget-object v3, v0, Lcom/oculus/video/trackselection/OculusTrackSelector;->currentVideoResolution:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget v4, v2, Lcom/oculus/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 81
    iget-object v4, v0, Lcom/oculus/video/trackselection/OculusTrackSelector;->currentVideoResolution:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget v5, v2, Lcom/oculus/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 82
    iget-object v5, v0, Lcom/oculus/video/trackselection/OculusTrackSelector;->smallestVideoResolution:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 83
    iget-object v5, v0, Lcom/oculus/video/trackselection/OculusTrackSelector;->smallestVideoResolution:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 86
    iget v5, v2, Lcom/oculus/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    if-lt v3, v5, :cond_2

    iget v2, v2, Lcom/oculus/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    if-ge v4, v2, :cond_3

    .line 90
    :cond_2
    invoke-virtual {v1, v3, v4}, Lcom/oculus/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoSize(II)Lcom/oculus/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 91
    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/oculus/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oculus/video/trackselection/OculusTrackSelector;->setParameters(Lcom/oculus/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    :cond_3
    return-void
.end method

.method public onVideoSizeChange(II)V
    .locals 1

    .line 48
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oculus/video/trackselection/OculusTrackSelector;->currentVideoResolution:Landroid/util/Size;

    return-void
.end method

.method protected selectTracks([Lcom/oculus/android/exoplayer2/RendererCapabilities;[Lcom/oculus/android/exoplayer2/source/TrackGroupArray;[[[I)[Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 105
    iget-object v2, v0, Lcom/oculus/video/trackselection/OculusTrackSelector;->smallestVideoResolution:Landroid/util/Size;

    const/4 v3, 0x0

    if-nez v2, :cond_5

    const-wide v4, 0x7fffffffffffffffL

    const/4 v2, 0x0

    .line 107
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_5

    const/4 v6, 0x2

    .line 108
    aget-object v7, v1, v2

    invoke-interface {v7}, Lcom/oculus/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 109
    aget-object v6, p2, v2

    move-wide v7, v4

    const/4 v4, 0x0

    .line 110
    :goto_1
    iget v5, v6, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v4, v5, :cond_3

    .line 111
    invoke-virtual {v6, v4}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    move-wide v8, v7

    const/4 v7, 0x0

    .line 112
    :goto_2
    iget v10, v5, Lcom/oculus/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v7, v10, :cond_2

    .line 113
    invoke-virtual {v5, v7}, Lcom/oculus/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v10

    if-nez v10, :cond_0

    goto :goto_3

    .line 117
    :cond_0
    iget v11, v10, Lcom/oculus/android/exoplayer2/Format;->width:I

    iget v12, v10, Lcom/oculus/android/exoplayer2/Format;->height:I

    mul-int v11, v11, v12

    int-to-long v11, v11

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_1

    cmp-long v13, v8, v11

    if-lez v13, :cond_1

    .line 119
    new-instance v8, Landroid/util/Size;

    iget v9, v10, Lcom/oculus/android/exoplayer2/Format;->width:I

    iget v10, v10, Lcom/oculus/android/exoplayer2/Format;->height:I

    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    iput-object v8, v0, Lcom/oculus/video/trackselection/OculusTrackSelector;->smallestVideoResolution:Landroid/util/Size;

    move-wide v8, v11

    :cond_1
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move-wide v7, v8

    goto :goto_1

    :cond_3
    move-wide v4, v7

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_5
    invoke-super/range {p0 .. p3}, Lcom/oculus/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTracks([Lcom/oculus/android/exoplayer2/RendererCapabilities;[Lcom/oculus/android/exoplayer2/source/TrackGroupArray;[[[I)[Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    .line 130
    iget-object v4, v0, Lcom/oculus/video/trackselection/OculusTrackSelector;->audioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    sget-object v5, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_4_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

    if-ne v4, v5, :cond_a

    const/4 v4, 0x0

    move-object v6, v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 134
    :goto_4
    array-length v8, v1

    if-ge v5, v8, :cond_a

    .line 135
    aget-object v8, v1, v5

    invoke-interface {v8}, Lcom/oculus/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_6

    goto :goto_7

    :cond_6
    if-nez v6, :cond_7

    .line 140
    aget-object v6, p2, v5

    .line 143
    :cond_7
    iget v8, v6, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v7, v8, :cond_8

    add-int/lit8 v8, v7, 0x1

    .line 144
    invoke-virtual {v6, v7}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    goto :goto_5

    :cond_8
    move v8, v7

    move-object v7, v4

    :goto_5
    if-eqz v7, :cond_9

    .line 148
    new-instance v9, Lcom/oculus/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v9, v7, v3}, Lcom/oculus/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/oculus/android/exoplayer2/source/TrackGroup;I)V

    aput-object v9, v2, v5

    goto :goto_6

    .line 150
    :cond_9
    aput-object v4, v2, v5

    :goto_6
    move v7, v8

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    return-object v2
.end method
