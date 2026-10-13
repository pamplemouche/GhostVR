.class interface abstract Lcom/oculus/horizon/capture/CaptureDelegate;
.super Ljava/lang/Object;
.source "CaptureDelegate.java"


# virtual methods
.method public abstract onAudioSampleAvailable([BI)V
.end method

.method public abstract startRecordVideo(Ljava/io/File;IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stopRecordVideo()V
.end method
