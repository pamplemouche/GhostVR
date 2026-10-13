.class public interface abstract Lcom/oculus/android/exoplayer2/Player$EventListener;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onLoadingChanged(Z)V
.end method

.method public abstract onPlaybackParametersChanged(Lcom/oculus/android/exoplayer2/PlaybackParameters;)V
.end method

.method public abstract onPlayerError(Lcom/oculus/android/exoplayer2/ExoPlaybackException;)V
.end method

.method public abstract onPlayerStateChanged(ZI)V
.end method

.method public abstract onPositionDiscontinuity(I)V
.end method

.method public abstract onRepeatModeChanged(I)V
.end method

.method public abstract onSeekProcessed()V
.end method

.method public abstract onShuffleModeEnabledChanged(Z)V
.end method

.method public abstract onTimelineChanged(Lcom/oculus/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
.end method

.method public abstract onTracksChanged(Lcom/oculus/android/exoplayer2/source/TrackGroupArray;Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;)V
.end method
