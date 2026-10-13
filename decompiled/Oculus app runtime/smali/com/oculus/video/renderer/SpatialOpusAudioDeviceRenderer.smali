.class public Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;
.super Lcom/oculus/video/renderer/OpusAudioRenderer;
.source "SpatialOpusAudioDeviceRenderer.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/util/MediaClock;
.implements Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private mAllowPositionDiscontinuity:Z

.field private mCurrentPositionUs:J

.field private final mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

.field private volatile movieMetadataXml:Ljava/lang/String;

.field private playbackParameters:Lcom/oculus/android/exoplayer2/PlaybackParameters;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;Lcom/oculus/video/audio/AudioSpatializer;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 41
    invoke-interface {p3}, Lcom/oculus/video/audio/AudioSpatializer;->getController()Lcom/oculus/video/audio/AudioSpatializerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {p3}, Lcom/oculus/video/audio/AudioSpatializer;->getController()Lcom/oculus/video/audio/AudioSpatializerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/video/audio/AudioSpatializerController;->getUseAsyncConsumer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/oculus/video/renderer/OpusAudioRenderer;-><init>(ZLandroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;)V

    .line 33
    sget-object p1, Lcom/oculus/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/oculus/android/exoplayer2/PlaybackParameters;

    iput-object p1, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->playbackParameters:Lcom/oculus/android/exoplayer2/PlaybackParameters;

    .line 45
    new-instance p1, Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-direct {p1, p3}, Lcom/oculus/video/audio/SpatialAudioTrack;-><init>(Lcom/oculus/video/audio/AudioSpatializer;)V

    iput-object p1, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    return-void
.end method


# virtual methods
.method public getMediaClock()Lcom/oculus/android/exoplayer2/util/MediaClock;
    .locals 0

    return-object p0
.end method

.method public getPlaybackParameters()Lcom/oculus/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->playbackParameters:Lcom/oculus/android/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method public getPositionUs()J
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->getCurrentPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 155
    iget-boolean v2, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mAllowPositionDiscontinuity:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mCurrentPositionUs:J

    .line 157
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mCurrentPositionUs:J

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mAllowPositionDiscontinuity:Z

    .line 160
    :cond_1
    iget-wide v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mCurrentPositionUs:J

    return-wide v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 186
    invoke-super {p0, p1, p2}, Lcom/oculus/video/renderer/OpusAudioRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oculus/video/audio/SpatialAudioTrack;->setVolume(F)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDisabled()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->release()V

    .line 93
    invoke-super {p0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->onDisabled()V

    return-void
.end method

.method protected onDiscontinuity(J)V
    .locals 1

    .line 108
    invoke-super {p0, p1, p2}, Lcom/oculus/video/renderer/OpusAudioRenderer;->onDiscontinuity(J)V

    .line 109
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->reset()V

    .line 110
    iput-wide p1, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mCurrentPositionUs:J

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mAllowPositionDiscontinuity:Z

    return-void
.end method

.method public onFindVideoSeekTimestamp(J)V
    .locals 0

    return-void
.end method

.method public onMovieMetadataXml(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->movieMetadataXml:Ljava/lang/String;

    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/video/audio/SpatialAudioTrack;->configure(Landroid/media/MediaFormat;Z)V

    .line 58
    iget-object p1, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->movieMetadataXml:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->movieMetadataXml:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catch Lcom/oculus/video/audio/AudioSpatializer$InitializationException; {:try_start_0 .. :try_end_0} :catch_1

    if-lez p1, :cond_1

    .line 60
    :try_start_1
    iget-object p1, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {p1}, Lcom/oculus/video/audio/SpatialAudioTrack;->getAudioSpatializer()Lcom/oculus/video/audio/AudioSpatializer;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/oculus/video/audio/Mp4Parser;

    iget-object v1, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->movieMetadataXml:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/oculus/video/audio/Mp4Parser;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lcom/oculus/video/audio/Mp4Parser;->getFocusEnabled()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/oculus/video/audio/AudioSpatializer;->enableFocus(Z)V

    .line 63
    invoke-virtual {v0}, Lcom/oculus/video/audio/Mp4Parser;->getOffFocusLeveldB()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/oculus/video/audio/Mp4Parser;->getOffFocusLeveldB()F

    move-result v1

    invoke-interface {p1, v1}, Lcom/oculus/video/audio/AudioSpatializer;->setOffFocusLeveldB(F)V

    .line 65
    invoke-virtual {v0}, Lcom/oculus/video/audio/Mp4Parser;->getFocusWidthDegrees()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/oculus/video/audio/AudioSpatializer;->setFocusWidthDegrees(F)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/video/audio/Mp4Parser;->getOffFocusLevel()F

    move-result v1

    invoke-virtual {v0}, Lcom/oculus/video/audio/Mp4Parser;->getFocusWidthDegrees()F

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/oculus/video/audio/AudioSpatializer;->setFocusProperties(FF)V
    :try_end_1
    .catch Lcom/oculus/video/audio/Mp4Parser$ParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/oculus/video/audio/AudioSpatializer$InitializationException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_1
    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 74
    invoke-virtual {p0}, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected onOutputStreamEnded()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->handleEndOfStream()V

    return-void
.end method

.method public onSphericalV1Xml(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onStarted()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->onStarted()V

    .line 81
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->play()V

    return-void
.end method

.method protected onStopped()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->pause()V

    .line 87
    invoke-super {p0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->onStopped()V

    return-void
.end method

.method protected renderOutputBuffer(Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->getPlayState()Lcom/oculus/video/audio/AudioSpatializer$PlayState;

    move-result-object v0

    sget-object v2, Lcom/oculus/video/audio/AudioSpatializer$PlayState;->PLAYING:Lcom/oculus/video/audio/AudioSpatializer$PlayState;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 123
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->play()V

    .line 128
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    iget-object v5, p1, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v0, p1, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 130
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget-object v0, p1, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 131
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    iget-wide v8, p1, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;->timeUs:J

    .line 128
    invoke-virtual/range {v4 .. v9}, Lcom/oculus/video/audio/SpatialAudioTrack;->handleBuffer(Ljava/nio/ByteBuffer;IIJ)I

    move-result p1
    :try_end_0
    .catch Lcom/oculus/video/audio/AudioSpatializer$WriteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/oculus/video/audio/AudioSpatializer$UnsupportedAudioChannelLayoutException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 139
    iput-boolean v2, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mAllowPositionDiscontinuity:Z

    :cond_2
    and-int/2addr p1, v3

    if-eqz p1, :cond_3

    .line 144
    iget-object p1, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p1, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    return v2

    :cond_3
    return v1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public setPlaybackParameters(Lcom/oculus/android/exoplayer2/PlaybackParameters;)Lcom/oculus/android/exoplayer2/PlaybackParameters;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->playbackParameters:Lcom/oculus/android/exoplayer2/PlaybackParameters;

    .line 166
    iget-object p1, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->playbackParameters:Lcom/oculus/android/exoplayer2/PlaybackParameters;

    return-object p1
.end method

.method public supportsFormat(Lcom/oculus/android/exoplayer2/Format;)I
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->getAudioSpatializer()Lcom/oculus/video/audio/AudioSpatializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oculus/video/audio/AudioSpatializer;->supportsFormat(Lcom/oculus/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-super {p0, p1}, Lcom/oculus/video/renderer/OpusAudioRenderer;->supportsFormat(Lcom/oculus/android/exoplayer2/Format;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
