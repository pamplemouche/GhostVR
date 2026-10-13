.class public interface abstract Lcom/oculus/video/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/VideoPlayer$EventListener;
    }
.end annotation


# virtual methods
.method public abstract getBufferedPositionMs()J
.end method

.method public abstract getCurrentEpochTimePositionMs()J
.end method

.method public abstract getCurrentPositionMs()J
.end method

.method public abstract getDurationMs()J
.end method

.method public abstract getLastPresentationTimeUs()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getVolume()F
.end method

.method public abstract isBuffering()Z
.end method

.method public abstract isMuted()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isSeekable()Z
.end method

.method public abstract onRender(Z)V
.end method

.method public abstract pause()V
.end method

.method public abstract release()V
.end method

.method public abstract resume()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract selectSubtitle(Ljava/lang/String;)Z
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract start(Lcom/oculus/video/Video;ZLandroid/view/Surface;Lcom/oculus/video/VideoPlayer$EventListener;)V
.end method

.method public abstract stop()V
.end method
