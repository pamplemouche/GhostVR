.class public interface abstract Lcom/oculus/video/audio/AudioSpatializer;
.super Ljava/lang/Object;
.source "AudioSpatializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/audio/AudioSpatializer$UnsupportedAudioChannelLayoutException;,
        Lcom/oculus/video/audio/AudioSpatializer$WriteException;,
        Lcom/oculus/video/audio/AudioSpatializer$InitializationException;,
        Lcom/oculus/video/audio/AudioSpatializer$PlayState;
    }
.end annotation


# virtual methods
.method public abstract configure(Landroid/media/MediaFormat;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/video/audio/AudioSpatializer$InitializationException;
        }
    .end annotation
.end method

.method public abstract enableFocus(Z)V
.end method

.method public abstract getAudioMix(Ljava/nio/ByteBuffer;)I
.end method

.method public abstract getAudioMixBufferSize()I
.end method

.method public abstract getController()Lcom/oculus/video/audio/AudioSpatializerController;
.end method

.method public abstract getPlayState()Lcom/oculus/video/audio/AudioSpatializer$PlayState;
.end method

.method public abstract getPlaybackHeadPosition()J
.end method

.method public abstract handleEndOfStream()V
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract processBuffer(Ljava/nio/ByteBuffer;JII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/video/audio/AudioSpatializer$WriteException;,
            Lcom/oculus/video/audio/AudioSpatializer$UnsupportedAudioChannelLayoutException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract setAudioSpatializerController(Lcom/oculus/video/audio/AudioSpatializerController;)V
.end method

.method public abstract setFocusProperties(FF)V
.end method

.method public abstract setFocusWidthDegrees(F)V
.end method

.method public abstract setOffFocusLeveldB(F)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract supportsFormat(Lcom/oculus/android/exoplayer2/Format;)Z
.end method
