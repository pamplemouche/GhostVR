.class public interface abstract Lcom/oculus/video/OculusVideoPlayer$EventListener;
.super Ljava/lang/Object;
.source "OculusVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/OculusVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onAnalyticsEvent(Ljava/lang/String;)V
.end method

.method public abstract onFrameSizeChanged(IIFIIII)V
.end method

.method public abstract onPlayerSelected()V
.end method

.method public abstract onStateChanged(II)V
.end method

.method public abstract onVideoReset(Ljava/lang/String;)V
.end method

.method public abstract onVideoUpdated(Ljava/lang/String;I)V
.end method
