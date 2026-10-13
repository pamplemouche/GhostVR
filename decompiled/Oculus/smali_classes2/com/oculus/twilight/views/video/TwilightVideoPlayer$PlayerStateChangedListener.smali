.class public interface abstract Lcom/oculus/twilight/views/video/TwilightVideoPlayer$PlayerStateChangedListener;
.super Ljava/lang/Object;
.source "TwilightVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/twilight/views/video/TwilightVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerStateChangedListener"
.end annotation


# virtual methods
.method public abstract onProgress(II)V
.end method

.method public abstract onStateChanged(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)V
.end method

.method public abstract onVideoSizeDetected(II)V
.end method
