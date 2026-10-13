.class public Lcom/oculus/video/OculusExoPlayer$PrimaryHlsPlaylistListener;
.super Ljava/lang/Object;
.source "OculusExoPlayer.java"

# interfaces
.implements Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PrimaryPlaylistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/OculusExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PrimaryHlsPlaylistListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/OculusExoPlayer;


# direct methods
.method protected constructor <init>(Lcom/oculus/video/OculusExoPlayer;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer$PrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryPlaylistRefreshed(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;)V
    .locals 4

    if-eqz p2, :cond_4

    .line 653
    iget-object v0, p2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    if-nez v0, :cond_0

    goto :goto_2

    .line 657
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 658
    iget-object p3, p3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    const/4 v1, 0x0

    .line 659
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 660
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 661
    iget-object v2, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-static {v2}, Lcom/oculus/video/OculusExoPlayer;->access$2300(Lcom/oculus/android/exoplayer2/Format;)Ljava/util/Map;

    move-result-object v2

    .line 662
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 665
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 668
    :cond_2
    iget-object p2, p2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-static {p2}, Lcom/oculus/video/OculusExoPlayer;->access$2300(Lcom/oculus/android/exoplayer2/Format;)Ljava/util/Map;

    move-result-object p2

    .line 669
    iget-object p3, p0, Lcom/oculus/video/OculusExoPlayer$PrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {p3, p1}, Lcom/oculus/video/OculusExoPlayer;->access$2400(Lcom/oculus/video/OculusExoPlayer;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 670
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 674
    :cond_3
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer$PrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Lcom/oculus/video/VideoPlayer$EventListener;->onAdaptivePlaylistUpdate(Ljava/util/Map;Ljava/util/List;)V

    :cond_4
    :goto_2
    return-void
.end method
