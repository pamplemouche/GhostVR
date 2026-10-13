.class public interface abstract Lcom/oculus/video/VideoPlayer$EventListener;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract getStringPreference(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSubtitleSurface()Landroid/view/Surface;
.end method

.method public abstract onAdaptivePlaylistUpdate(Ljava/util/Map;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract onAudioFormatChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onBuffering()V
.end method

.method public abstract onCameraMotionData(Lcom/oculus/video/metadata/CameraMotionData;)V
.end method

.method public abstract onDroppedFrames(JJJJ)V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onExtractProjectionMetadata(Lcom/oculus/video/projection/VideoProjection;)V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onHttpConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
.end method

.method public abstract onReady()V
.end method

.method public abstract onRelease()V
.end method

.method public abstract onSeekProcessed()V
.end method

.method public abstract onSoftError(Ljava/lang/Throwable;)V
.end method

.method public abstract onStartVideo()V
.end method

.method public abstract onStopBuffering()V
.end method

.method public abstract onStreamingSample(JJJJ)V
.end method

.method public abstract onTimelineChanged(JJZ)V
.end method

.method public abstract onVideoFormatChanged(IIFILcom/oculus/video/projection/VideoProjection;FILjava/lang/String;Ljava/lang/String;D)V
.end method

.method public abstract onVideoSizeChanged(IIFLandroid/graphics/Rect;)V
.end method

.method public abstract setStringPreference(Ljava/lang/String;Ljava/lang/String;)V
.end method
