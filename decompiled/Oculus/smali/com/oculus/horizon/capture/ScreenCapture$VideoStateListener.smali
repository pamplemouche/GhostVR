.class public interface abstract Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;
.super Ljava/lang/Object;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/capture/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoStateListener"
.end annotation


# virtual methods
.method public abstract addOutputSurface(Landroid/view/Surface;)V
.end method

.method public abstract getAudio()V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onStartRecording()V
.end method

.method public abstract onStopRecording(Ljava/io/File;)V
.end method
