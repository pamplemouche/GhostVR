.class public Lcom/oculus/video/trackselection/OculusTrackSelectorManager;
.super Ljava/lang/Object;
.source "OculusTrackSelectorManager.java"


# static fields
.field private static final FIXED_FACTORY:Lcom/oculus/android/exoplayer2/trackselection/TrackSelection$Factory;

.field private static final UNDEFINED_IDX:I = -0x1


# instance fields
.field private audioRendererIdx:I

.field private audioTrackInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private subtitleRendererIdx:I

.field private subtitleTrackInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private trackSelector:Lcom/oculus/video/trackselection/OculusTrackSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/oculus/android/exoplayer2/trackselection/FixedTrackSelection$Factory;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/trackselection/FixedTrackSelection$Factory;-><init>()V

    sput-object v0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->FIXED_FACTORY:Lcom/oculus/android/exoplayer2/trackselection/TrackSelection$Factory;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/android/exoplayer2/upstream/DefaultBandwidthMeter;Lcom/oculus/video/audio/AudioChannelLayout;J)V
    .locals 7

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p4, p3

    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    invoke-static {}, Lcom/oculus/video/Settings;->getMaxInitialBitrate()I

    move-result p4

    :goto_1
    move v2, p4

    .line 46
    new-instance p3, Lcom/oculus/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    const/16 v3, 0x2710

    const/16 v4, 0x61a8

    const/16 v5, 0x61a8

    .line 52
    invoke-static {}, Lcom/oculus/video/Settings;->getTrackSelectionBandwidthFraction()F

    move-result v6

    move-object v0, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/oculus/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/oculus/android/exoplayer2/upstream/BandwidthMeter;IIIIF)V

    .line 53
    new-instance p1, Lcom/oculus/video/trackselection/OculusTrackSelector;

    invoke-direct {p1, p3, p2}, Lcom/oculus/video/trackselection/OculusTrackSelector;-><init>(Lcom/oculus/android/exoplayer2/trackselection/TrackSelection$Factory;Lcom/oculus/video/audio/AudioChannelLayout;)V

    iput-object p1, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->trackSelector:Lcom/oculus/video/trackselection/OculusTrackSelector;

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->subtitleRendererIdx:I

    .line 56
    iput p1, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->audioRendererIdx:I

    .line 57
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->subtitleTrackInfo:Ljava/util/Map;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->audioTrackInfo:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public createTrackInfo()V
    .locals 12

    .line 81
    invoke-virtual {p0}, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->resetInfo()V

    .line 83
    iget-object v0, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->trackSelector:Lcom/oculus/video/trackselection/OculusTrackSelector;

    invoke-virtual {v0}, Lcom/oculus/video/trackselection/OculusTrackSelector;->getCurrentMappedTrackInfo()Lcom/oculus/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 85
    :goto_0
    iget v3, v0, Lcom/oculus/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->length:I

    if-ge v2, v3, :cond_5

    .line 86
    invoke-virtual {v0, v2}, Lcom/oculus/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 87
    :goto_1
    iget v5, v3, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v4, v5, :cond_4

    .line 88
    invoke-virtual {v3, v4}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    const/4 v6, 0x0

    .line 89
    :goto_2
    iget v7, v5, Lcom/oculus/android/exoplayer2/source/TrackGroup;->length:I

    const/4 v8, 0x1

    if-ge v6, v7, :cond_3

    .line 90
    invoke-virtual {v5, v6}, Lcom/oculus/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v7

    .line 91
    iget-object v9, v7, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v9}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 92
    iput v2, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->subtitleRendererIdx:I

    .line 93
    iget-object v8, v7, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 94
    iget-object v8, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->subtitleTrackInfo:Ljava/util/Map;

    iget-object v7, v7, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    new-instance v9, Landroid/util/Pair;

    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 97
    :cond_0
    iget-object v9, v7, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v9}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v8, :cond_2

    .line 98
    iput v2, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->audioRendererIdx:I

    .line 99
    iget-object v8, v7, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 100
    iget-object v8, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->audioTrackInfo:Ljava/util/Map;

    iget-object v7, v7, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    new-instance v9, Landroid/util/Pair;

    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 105
    :cond_2
    iget v4, v3, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->length:I

    :cond_3
    add-int/2addr v4, v8

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public getTrackSelector()Lcom/oculus/video/trackselection/OculusTrackSelector;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->trackSelector:Lcom/oculus/video/trackselection/OculusTrackSelector;

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->trackSelector:Lcom/oculus/video/trackselection/OculusTrackSelector;

    .line 67
    invoke-virtual {p0}, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->resetInfo()V

    return-void
.end method

.method public resetInfo()V
    .locals 1

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->subtitleRendererIdx:I

    .line 72
    iput v0, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->audioRendererIdx:I

    .line 73
    iget-object v0, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->subtitleTrackInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 74
    iget-object v0, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->audioTrackInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public selectAudio(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public selectSubtitle(Ljava/lang/String;)Z
    .locals 7

    .line 122
    iget-object v0, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->trackSelector:Lcom/oculus/video/trackselection/OculusTrackSelector;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oculus/video/trackselection/OculusTrackSelector;->getCurrentMappedTrackInfo()Lcom/oculus/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->subtitleRendererIdx:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 127
    iget-object v2, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->subtitleTrackInfo:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->trackSelector:Lcom/oculus/video/trackselection/OculusTrackSelector;

    invoke-virtual {v2}, Lcom/oculus/video/trackselection/OculusTrackSelector;->getCurrentMappedTrackInfo()Lcom/oculus/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v2

    .line 132
    iget-object v3, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->subtitleTrackInfo:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 133
    iget v3, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->subtitleRendererIdx:I

    invoke-virtual {v2, v3}, Lcom/oculus/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    .line 134
    new-instance v3, Lcom/oculus/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    sget-object v4, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->FIXED_FACTORY:Lcom/oculus/android/exoplayer2/trackselection/TrackSelection$Factory;

    iget-object v5, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 135
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v6, v0, [I

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/oculus/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;-><init>(Lcom/oculus/android/exoplayer2/trackselection/TrackSelection$Factory;I[I)V

    .line 136
    iget-object p1, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->trackSelector:Lcom/oculus/video/trackselection/OculusTrackSelector;

    iget v4, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->subtitleRendererIdx:I

    invoke-virtual {p1, v4, v2, v3}, Lcom/oculus/video/trackselection/OculusTrackSelector;->setSelectionOverride(ILcom/oculus/android/exoplayer2/source/TrackGroupArray;Lcom/oculus/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;)V

    .line 137
    iget-object p1, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->trackSelector:Lcom/oculus/video/trackselection/OculusTrackSelector;

    iget v2, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->subtitleRendererIdx:I

    invoke-virtual {p1, v2, v1}, Lcom/oculus/video/trackselection/OculusTrackSelector;->setRendererDisabled(IZ)V

    return v0

    .line 128
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->trackSelector:Lcom/oculus/video/trackselection/OculusTrackSelector;

    iget v2, p0, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->subtitleRendererIdx:I

    invoke-virtual {p1, v2, v0}, Lcom/oculus/video/trackselection/OculusTrackSelector;->setRendererDisabled(IZ)V

    :cond_3
    :goto_1
    return v1
.end method
