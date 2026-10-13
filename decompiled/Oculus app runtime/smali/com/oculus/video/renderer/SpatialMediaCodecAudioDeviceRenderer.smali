.class public Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;
.super Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "SpatialMediaCodecAudioDeviceRenderer.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/util/MediaClock;
.implements Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;


# static fields
.field private static final TRACK_NUMBER_UNDEFINED:I = -0x1


# instance fields
.field private mAllowPositionDiscontinuity:Z

.field private mCurrentPositionUs:J

.field private final mEventDispatcher:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private final mIsPrimaryTrack:Z

.field private final mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

.field private volatile movieMetadataXml:Ljava/lang/String;

.field private playbackParameters:Lcom/oculus/android/exoplayer2/PlaybackParameters;


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;Lcom/oculus/video/audio/AudioSpatializer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/oculus/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;",
            "Lcom/oculus/video/audio/AudioSpatializer;",
            ")V"
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 73
    invoke-direct/range {v0 .. v7}, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;-><init>(Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;Lcom/oculus/video/audio/AudioSpatializer;IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;Lcom/oculus/video/audio/AudioSpatializer;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/oculus/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;",
            "Lcom/oculus/video/audio/AudioSpatializer;",
            "IZ)V"
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;Z)V

    .line 47
    sget-object p1, Lcom/oculus/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/oculus/android/exoplayer2/PlaybackParameters;

    iput-object p1, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->playbackParameters:Lcom/oculus/android/exoplayer2/PlaybackParameters;

    .line 109
    new-instance p1, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {p1, p3, p4}, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;)V

    iput-object p1, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mEventDispatcher:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 111
    new-instance p1, Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-direct {p1, p5, p6}, Lcom/oculus/video/audio/SpatialAudioTrack;-><init>(Lcom/oculus/video/audio/AudioSpatializer;I)V

    iput-object p1, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    .line 112
    iput-boolean p7, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mIsPrimaryTrack:Z

    return-void
.end method


# virtual methods
.method protected configureCodec(Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/oculus/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 1

    .line 338
    invoke-virtual {p3}, Lcom/oculus/android/exoplayer2/Format;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object p1

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method protected getDecoderInfo(Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/oculus/android/exoplayer2/Format;Z)Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 332
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfo(Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/oculus/android/exoplayer2/Format;Z)Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p1

    return-object p1
.end method

.method public getMediaClock()Lcom/oculus/android/exoplayer2/util/MediaClock;
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mIsPrimaryTrack:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPlaybackParameters()Lcom/oculus/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->playbackParameters:Lcom/oculus/android/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method public getPositionUs()J
    .locals 5

    .line 247
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->getCurrentPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 249
    iget-boolean v2, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mAllowPositionDiscontinuity:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mCurrentPositionUs:J

    .line 251
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mCurrentPositionUs:J

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mAllowPositionDiscontinuity:Z

    .line 254
    :cond_1
    iget-wide v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mCurrentPositionUs:J

    return-wide v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 275
    iget-boolean v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mIsPrimaryTrack:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 281
    invoke-super {p0, p1, p2}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object p1, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oculus/video/audio/SpatialAudioTrack;->setVolume(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mIsPrimaryTrack:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mIsPrimaryTrack:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    .line 165
    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

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

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 6

    .line 344
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mEventDispatcher:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected onDisabled()V
    .locals 3

    .line 181
    :try_start_0
    invoke-super {p0}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V

    .line 182
    iget-boolean v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mIsPrimaryTrack:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 187
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mEventDispatcher:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v0

    .line 186
    iget-object v1, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 187
    iget-object v1, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mEventDispatcher:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 355
    invoke-super {p0, p1}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecRenderer;->onEnabled(Z)V

    .line 356
    iget-object p1, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mEventDispatcher:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, v0}, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public onFindVideoSeekTimestamp(J)V
    .locals 0

    return-void
.end method

.method protected onInputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 349
    invoke-super {p0, p1}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V

    .line 350
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mEventDispatcher:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V

    return-void
.end method

.method public onMovieMetadataXml(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->movieMetadataXml:Ljava/lang/String;

    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 119
    :try_start_0
    iget-object p1, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    iget-boolean v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mIsPrimaryTrack:Z

    invoke-virtual {p1, p2, v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->configure(Landroid/media/MediaFormat;Z)V

    .line 120
    iget-object p1, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->movieMetadataXml:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->movieMetadataXml:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catch Lcom/oculus/video/audio/AudioSpatializer$InitializationException; {:try_start_0 .. :try_end_0} :catch_1

    if-lez p1, :cond_1

    .line 122
    :try_start_1
    iget-object p1, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {p1}, Lcom/oculus/video/audio/SpatialAudioTrack;->getAudioSpatializer()Lcom/oculus/video/audio/AudioSpatializer;

    move-result-object p1

    .line 123
    new-instance p2, Lcom/oculus/video/audio/Mp4Parser;

    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->movieMetadataXml:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/oculus/video/audio/Mp4Parser;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Lcom/oculus/video/audio/Mp4Parser;->getFocusEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/oculus/video/audio/AudioSpatializer;->enableFocus(Z)V

    .line 125
    invoke-virtual {p2}, Lcom/oculus/video/audio/Mp4Parser;->getOffFocusLeveldB()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 126
    invoke-virtual {p2}, Lcom/oculus/video/audio/Mp4Parser;->getOffFocusLeveldB()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/oculus/video/audio/AudioSpatializer;->setOffFocusLeveldB(F)V

    .line 127
    invoke-virtual {p2}, Lcom/oculus/video/audio/Mp4Parser;->getFocusWidthDegrees()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/oculus/video/audio/AudioSpatializer;->setFocusWidthDegrees(F)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p2}, Lcom/oculus/video/audio/Mp4Parser;->getOffFocusLevel()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/oculus/video/audio/AudioSpatializer;->setOffFocusLeveldB(F)V

    .line 130
    invoke-virtual {p2}, Lcom/oculus/video/audio/Mp4Parser;->getFocusWidthDegrees()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/oculus/video/audio/AudioSpatializer;->setFocusWidthDegrees(F)V
    :try_end_1
    .catch Lcom/oculus/video/audio/Mp4Parser$ParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/oculus/video/audio/AudioSpatializer$InitializationException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_1
    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 137
    invoke-virtual {p0}, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 170
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 171
    iget-boolean p3, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mIsPrimaryTrack:Z

    if-eqz p3, :cond_0

    .line 172
    iget-object p3, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {p3}, Lcom/oculus/video/audio/SpatialAudioTrack;->reset()V

    .line 173
    iput-wide p1, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mCurrentPositionUs:J

    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mAllowPositionDiscontinuity:Z

    :cond_0
    return-void
.end method

.method public onSphericalV1Xml(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onStarted()V
    .locals 1

    .line 143
    invoke-super {p0}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStarted()V

    .line 144
    iget-boolean v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mIsPrimaryTrack:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->play()V

    :cond_0
    return-void
.end method

.method protected onStopped()V
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mIsPrimaryTrack:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->pause()V

    .line 154
    :cond_0
    invoke-super {p0}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStopped()V

    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p5

    move/from16 v2, p7

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p11, :cond_1

    .line 202
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 203
    iget-object v0, v1, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 204
    iget-boolean v0, v1, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mIsPrimaryTrack:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, v1, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v0}, Lcom/oculus/video/audio/SpatialAudioTrack;->handleDiscontinuity()V

    :cond_0
    return v4

    .line 210
    :cond_1
    iget-object v5, v1, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v5}, Lcom/oculus/video/audio/SpatialAudioTrack;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_2

    return v3

    .line 214
    :cond_2
    iget-object v5, v1, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v5}, Lcom/oculus/video/audio/SpatialAudioTrack;->getPlayState()Lcom/oculus/video/audio/AudioSpatializer$PlayState;

    move-result-object v5

    sget-object v6, Lcom/oculus/video/audio/AudioSpatializer$PlayState;->PLAYING:Lcom/oculus/video/audio/AudioSpatializer$PlayState;

    const/4 v7, 0x2

    if-eq v5, v6, :cond_3

    .line 215
    invoke-virtual {p0}, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->getState()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 216
    iget-object v5, v1, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {v5}, Lcom/oculus/video/audio/SpatialAudioTrack;->play()V

    .line 221
    :cond_3
    :try_start_0
    iget-object v8, v1, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    .line 223
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 224
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    move-object/from16 v9, p6

    move-wide/from16 v12, p9

    .line 221
    invoke-virtual/range {v8 .. v13}, Lcom/oculus/video/audio/SpatialAudioTrack;->handleBuffer(Ljava/nio/ByteBuffer;IIJ)I

    move-result v5
    :try_end_0
    .catch Lcom/oculus/video/audio/AudioSpatializer$WriteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/oculus/video/audio/AudioSpatializer$UnsupportedAudioChannelLayoutException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_4

    .line 232
    iput-boolean v4, v1, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mAllowPositionDiscontinuity:Z

    :cond_4
    and-int/2addr v5, v7

    if-eqz v5, :cond_5

    .line 237
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 238
    iget-object v0, v1, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    return v4

    :cond_5
    return v3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 227
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->getIndex()I

    move-result v2

    invoke-static {v0, v2}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public setPlaybackParameters(Lcom/oculus/android/exoplayer2/PlaybackParameters;)Lcom/oculus/android/exoplayer2/PlaybackParameters;
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->playbackParameters:Lcom/oculus/android/exoplayer2/PlaybackParameters;

    .line 260
    invoke-virtual {p0}, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->getPlaybackParameters()Lcom/oculus/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    return-object p1
.end method

.method protected supportsFormat(Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;Lcom/oculus/android/exoplayer2/Format;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/oculus/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/oculus/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;",
            "Lcom/oculus/android/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 304
    iget-object p2, p0, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;->mSpatialAudioTrack:Lcom/oculus/video/audio/SpatialAudioTrack;

    invoke-virtual {p2}, Lcom/oculus/video/audio/SpatialAudioTrack;->getAudioSpatializer()Lcom/oculus/video/audio/AudioSpatializer;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 305
    invoke-interface {p2, p3}, Lcom/oculus/video/audio/AudioSpatializer;->supportsFormat(Lcom/oculus/android/exoplayer2/Format;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 309
    :cond_0
    iget-object p2, p3, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 310
    invoke-static {p2}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 314
    :cond_1
    invoke-interface {p1, p2, v0}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    return p2

    .line 319
    :cond_2
    sget v1, Lcom/oculus/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    iget v1, p3, Lcom/oculus/android/exoplayer2/Format;->sampleRate:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p3, Lcom/oculus/android/exoplayer2/Format;->sampleRate:I

    .line 321
    invoke-virtual {p1, v1}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;->isAudioSampleRateSupportedV21(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget v1, p3, Lcom/oculus/android/exoplayer2/Format;->channelCount:I

    if-eq v1, v2, :cond_5

    iget p3, p3, Lcom/oculus/android/exoplayer2/Format;->channelCount:I

    .line 323
    invoke-virtual {p1, p3}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;->isAudioChannelCountSupportedV21(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    const/4 p1, 0x4

    goto :goto_1

    :cond_6
    const/4 p1, 0x3

    :goto_1
    or-int/lit8 p1, p1, 0x8

    return p1

    :cond_7
    :goto_2
    return v0
.end method
