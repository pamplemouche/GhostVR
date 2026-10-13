.class Lcom/oculus/video/OculusExoPlayer$2;
.super Ljava/lang/Object;
.source "OculusExoPlayer.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/OculusExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/OculusExoPlayer;


# direct methods
.method constructor <init>(Lcom/oculus/video/OculusExoPlayer;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/oculus/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lcom/oculus/android/exoplayer2/ExoPlaybackException;)V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    iget-object v0, v0, Lcom/oculus/video/OculusExoPlayer;->videoRendererEventListener:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    .line 348
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oculus/video/VideoPlayer$EventListener;->onError(Ljava/lang/Exception;)V

    .line 349
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-virtual {p1}, Lcom/oculus/video/OculusExoPlayer;->release()V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    iget-object v0, v0, Lcom/oculus/video/OculusExoPlayer;->videoRendererEventListener:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    .line 325
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/video/VideoPlayer$EventListener;->onFinish()V

    .line 326
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-virtual {v0}, Lcom/oculus/video/OculusExoPlayer;->release()V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/video/VideoPlayer$EventListener;->onReady()V

    goto :goto_0

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/video/VideoPlayer$EventListener;->onBuffering()V

    :goto_0
    if-eq p2, p1, :cond_3

    .line 335
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oculus/video/VideoPlayer$EventListener;->onStopBuffering()V

    :cond_3
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onSeekProcessed()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/video/VideoPlayer$EventListener;->onSeekProcessed()V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/oculus/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 6

    .line 294
    instance-of p1, p2, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    if-eqz p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusExoPlayer;->access$300(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;

    move-result-object p1

    if-nez p1, :cond_0

    .line 296
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    new-instance p3, Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0}, Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;-><init>(Lcom/oculus/video/OculusExoPlayer;Lcom/oculus/video/OculusExoPlayer$1;)V

    invoke-static {p1, p3}, Lcom/oculus/video/OculusExoPlayer;->access$302(Lcom/oculus/video/OculusExoPlayer;Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;)Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusExoPlayer;->access$300(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;

    move-result-object p1

    check-cast p2, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    iput-object p2, p1, Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;->latestManifest:Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 300
    :cond_1
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v0

    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-virtual {p1}, Lcom/oculus/video/OculusExoPlayer;->getDurationMs()J

    move-result-wide v1

    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-virtual {p1}, Lcom/oculus/video/OculusExoPlayer;->getCurrentPositionMs()J

    move-result-wide v3

    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-virtual {p1}, Lcom/oculus/video/OculusExoPlayer;->isSeekable()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/oculus/video/VideoPlayer$EventListener;->onTimelineChanged(JJZ)V

    return-void
.end method

.method public onTracksChanged(Lcom/oculus/android/exoplayer2/source/TrackGroupArray;Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    .line 305
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusExoPlayer;->access$600(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/trackselection/OculusTrackSelectorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->createTrackInfo()V

    .line 306
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusExoPlayer;->access$300(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 307
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer$2;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusExoPlayer;->access$300(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;->access$700(Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;)V

    :cond_0
    return-void
.end method
