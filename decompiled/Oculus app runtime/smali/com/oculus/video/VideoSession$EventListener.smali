.class interface abstract Lcom/oculus/video/VideoSession$EventListener;
.super Ljava/lang/Object;
.source "VideoSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/VideoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract getStringPreference(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSubtitleSurface(Lcom/oculus/video/VideoSession;)Landroid/view/Surface;
.end method

.method public abstract onAdaptivePlaylistUpdate(Lcom/oculus/video/VideoSession;Ljava/util/Map;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/video/VideoSession;",
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

.method public abstract onAudioFormatChanged(Lcom/oculus/video/VideoSession;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onBuffering(Lcom/oculus/video/VideoSession;)V
.end method

.method public abstract onCameraMotionData(Lcom/oculus/video/VideoSession;Lcom/oculus/video/metadata/CameraMotionData;)V
.end method

.method public abstract onDroppedFrames(Lcom/oculus/video/VideoSession;JJJJ)V
.end method

.method public abstract onError(Lcom/oculus/video/VideoSession;Ljava/lang/Exception;)V
.end method

.method public abstract onExtractProjectionMetadata(Lcom/oculus/video/VideoSession;Lcom/oculus/video/projection/VideoProjection;)V
.end method

.method public abstract onFinish(Lcom/oculus/video/VideoSession;)V
.end method

.method public abstract onHttpConnect(Lcom/oculus/video/VideoSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
.end method

.method public abstract onReady(Lcom/oculus/video/VideoSession;)V
.end method

.method public abstract onRelease(Lcom/oculus/video/VideoSession;)V
.end method

.method public abstract onSeekComplete(Lcom/oculus/video/VideoSession;)V
.end method

.method public abstract onSoftError(Lcom/oculus/video/VideoSession;Ljava/lang/Throwable;)V
.end method

.method public abstract onStartVideo(Lcom/oculus/video/VideoSession;)V
.end method

.method public abstract onStopBuffering(Lcom/oculus/video/VideoSession;)V
.end method

.method public abstract onStreamingSample(Lcom/oculus/video/VideoSession;JJJJ)V
.end method

.method public abstract onTimelineChanged(Lcom/oculus/video/VideoSession;JJZ)V
.end method

.method public abstract onVideoFormatChanged(Lcom/oculus/video/VideoSession;IIFILcom/oculus/video/projection/VideoProjection;FILjava/lang/String;Ljava/lang/String;D)V
.end method

.method public abstract onVideoPrepared(Lcom/oculus/video/VideoSession;Z)V
.end method

.method public abstract onVideoSizeChanged(Lcom/oculus/video/VideoSession;IIFLandroid/graphics/Rect;)V
.end method

.method public abstract setStringPreference(Ljava/lang/String;Ljava/lang/String;)V
.end method
