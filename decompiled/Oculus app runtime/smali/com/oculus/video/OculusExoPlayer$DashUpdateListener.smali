.class Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;
.super Ljava/lang/Object;
.source "OculusExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/OculusExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DashUpdateListener"
.end annotation


# instance fields
.field latestManifest:Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

.field final synthetic this$0:Lcom/oculus/video/OculusExoPlayer;


# direct methods
.method private constructor <init>(Lcom/oculus/video/OculusExoPlayer;)V
    .locals 0

    .line 713
    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/video/OculusExoPlayer;Lcom/oculus/video/OculusExoPlayer$1;)V
    .locals 0

    .line 713
    invoke-direct {p0, p1}, Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;-><init>(Lcom/oculus/video/OculusExoPlayer;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    .line 713
    invoke-direct {p0, p1}, Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;->reportDashUpdate(Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method private reportDashUpdate(Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 8

    .line 717
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;->latestManifest:Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    if-eqz v0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 721
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;->getAll()[Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    move-result-object p1

    .line 723
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 724
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    if-nez v4, :cond_1

    goto :goto_3

    .line 728
    :cond_1
    invoke-interface {v4}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    const/4 v5, 0x0

    .line 729
    :goto_1
    iget v6, v4, Lcom/oculus/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v5, v6, :cond_3

    .line 730
    invoke-virtual {v4, v5}, Lcom/oculus/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v6

    invoke-static {v6}, Lcom/oculus/video/OculusExoPlayer;->access$2300(Lcom/oculus/android/exoplayer2/Format;)Ljava/util/Map;

    move-result-object v6

    .line 731
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 734
    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 737
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 742
    array-length v3, p1

    :goto_4
    if-ge v2, v3, :cond_8

    aget-object v4, p1, v2

    if-nez v4, :cond_6

    goto :goto_5

    .line 746
    :cond_6
    invoke-interface {v4}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/oculus/android/exoplayer2/Format;

    move-result-object v5

    invoke-static {v5}, Lcom/oculus/video/OculusExoPlayer;->access$2300(Lcom/oculus/android/exoplayer2/Format;)Ljava/util/Map;

    move-result-object v5

    .line 747
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 748
    invoke-interface {v4}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/oculus/android/exoplayer2/Format;

    move-result-object v1

    goto :goto_6

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 753
    :cond_8
    :goto_6
    invoke-static {v1}, Lcom/oculus/video/OculusExoPlayer;->access$2300(Lcom/oculus/android/exoplayer2/Format;)Ljava/util/Map;

    move-result-object p1

    .line 754
    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    iget-object v2, p0, Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;->latestManifest:Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-static {v1, v2}, Lcom/oculus/video/OculusExoPlayer;->access$2500(Lcom/oculus/video/OculusExoPlayer;Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 755
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 759
    :cond_9
    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v1}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/oculus/video/VideoPlayer$EventListener;->onAdaptivePlaylistUpdate(Ljava/util/Map;Ljava/util/List;)V

    :cond_a
    :goto_7
    return-void
.end method
