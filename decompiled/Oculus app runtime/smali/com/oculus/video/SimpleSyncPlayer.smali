.class public Lcom/oculus/video/SimpleSyncPlayer;
.super Lcom/oculus/video/OculusExoPlayer;
.source "SimpleSyncPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleSyncPlayer"


# instance fields
.field private isFutureSeeking:Z

.field private preFutureSeekPlayWhenReady:Z

.field private targetSyncTimestampMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/oculus/video/audio/AudioSpatializerController;Landroid/os/Handler;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/video/OculusExoPlayer;-><init>(Landroid/content/Context;Lcom/oculus/video/audio/AudioSpatializerController;Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/oculus/video/SimpleSyncPlayer;->isFutureSeeking:Z

    .line 15
    iput-boolean p1, p0, Lcom/oculus/video/SimpleSyncPlayer;->preFutureSeekPlayWhenReady:Z

    const-wide/16 p1, -0x1

    .line 16
    iput-wide p1, p0, Lcom/oculus/video/SimpleSyncPlayer;->targetSyncTimestampMs:J

    return-void
.end method

.method private finishFutureSeek()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->isFutureSeeking:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    iget-boolean v1, p0, Lcom/oculus/video/SimpleSyncPlayer;->preFutureSeekPlayWhenReady:Z

    invoke-interface {v0, v1}, Lcom/oculus/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 118
    sget-object v0, Lcom/oculus/video/SimpleSyncPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resync completed at (futureSeekTimeMS): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oculus/video/SimpleSyncPlayer;->targetSyncTimestampMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " with playWhenReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oculus/video/SimpleSyncPlayer;->preFutureSeekPlayWhenReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Lcom/oculus/video/SimpleSyncPlayer;->resetSyncPlaybackProperties()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initialFutureSeek(J)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 103
    iget-object v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oculus/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->isFutureSeeking:Z

    .line 105
    sget-object v0, Lcom/oculus/video/SimpleSyncPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resync start at (futureSeekTimeMS): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetSyncPlaybackProperties()V
    .locals 2

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->isFutureSeeking:Z

    .line 125
    iput-boolean v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->preFutureSeekPlayWhenReady:Z

    const-wide/16 v0, -0x1

    .line 126
    iput-wide v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->targetSyncTimestampMs:J

    return-void
.end method


# virtual methods
.method public futureSeekTo(JJ)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->isFutureSeeking:Z

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->preFutureSeekPlayWhenReady:Z

    .line 74
    :cond_1
    iput-wide p3, p0, Lcom/oculus/video/SimpleSyncPlayer;->targetSyncTimestampMs:J

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/oculus/video/SimpleSyncPlayer;->initialFutureSeek(J)V

    return-void
.end method

.method public bridge synthetic getBufferedPositionMs()J
    .locals 2

    .line 11
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->getBufferedPositionMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getCurrentEpochTimePositionMs()J
    .locals 2

    .line 11
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->getCurrentEpochTimePositionMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getCurrentPositionMs()J
    .locals 2

    .line 11
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->getCurrentPositionMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDurationMs()J
    .locals 2

    .line 11
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->getDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLastPresentationTimeUs()J
    .locals 2

    .line 11
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->getLastPresentationTimeUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVolume()F
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->getVolume()F

    move-result v0

    return v0
.end method

.method public isBuffering()Z
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->isFutureSeeking:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    .line 57
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public bridge synthetic isMuted()Z
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->isMuted()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPlaying()Z
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isSeekable()Z
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->isSeekable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onRender(Z)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lcom/oculus/video/OculusExoPlayer;->onRender(Z)V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/oculus/video/SimpleSyncPlayer;->finishFutureSeek()V

    .line 35
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->pause()V

    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    .line 11
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->release()V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/oculus/video/SimpleSyncPlayer;->finishFutureSeek()V

    .line 41
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->resume()V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/oculus/video/SimpleSyncPlayer;->finishFutureSeek()V

    .line 47
    iget-object v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/ExoPlayer;->seekTo(J)V

    return-void
.end method

.method public bridge synthetic selectSubtitle(Ljava/lang/String;)Z
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lcom/oculus/video/OculusExoPlayer;->selectSubtitle(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setMute(Z)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lcom/oculus/video/OculusExoPlayer;->setMute(Z)V

    return-void
.end method

.method public bridge synthetic setVolume(F)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lcom/oculus/video/OculusExoPlayer;->setVolume(F)V

    return-void
.end method

.method public start(Lcom/oculus/video/Video;ZLandroid/view/Surface;Lcom/oculus/video/VideoPlayer$EventListener;)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oculus/video/OculusExoPlayer;->start(Lcom/oculus/video/Video;ZLandroid/view/Surface;Lcom/oculus/video/VideoPlayer$EventListener;)V

    .line 29
    invoke-direct {p0}, Lcom/oculus/video/SimpleSyncPlayer;->resetSyncPlaybackProperties()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 11
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->stop()V

    return-void
.end method

.method public updateSyncPlaybackState()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->isFutureSeeking:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->targetSyncTimestampMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Lcom/oculus/video/SimpleSyncPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    .line 88
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/oculus/video/SimpleSyncPlayer;->finishFutureSeek()V

    :cond_1
    return-void
.end method
