.class Lcom/oculus/horizon/capture/VideoCapture$2;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Lcom/facebook/cameracore/recording/common/RecordingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/capture/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/capture/VideoCapture;


# virtual methods
.method public onCaptureFailed(Lcom/facebook/cameracore/recording/common/RecordingException;)V
    .locals 2

    .prologue
    .line 84
    const-string v0, "VideoCapture"

    const-string v1, "MP: Failed in recording video"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture$2;->this$0:Lcom/oculus/horizon/capture/VideoCapture;

    invoke-static {v0, p1}, Lcom/oculus/horizon/capture/VideoCapture;->access$600(Lcom/oculus/horizon/capture/VideoCapture;Ljava/lang/Exception;)V

    .line 86
    return-void
.end method

.method public onCaptureFinished()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture$2;->this$0:Lcom/oculus/horizon/capture/VideoCapture;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/capture/VideoCapture;->access$102(Lcom/oculus/horizon/capture/VideoCapture;Z)Z

    .line 77
    const-string v0, "VideoCapture"

    const-string v1, "onCaptureFinished"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture$2;->this$0:Lcom/oculus/horizon/capture/VideoCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/VideoCapture;->access$000(Lcom/oculus/horizon/capture/VideoCapture;)Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/capture/VideoCapture$2;->this$0:Lcom/oculus/horizon/capture/VideoCapture;

    invoke-static {v1}, Lcom/oculus/horizon/capture/VideoCapture;->access$400(Lcom/oculus/horizon/capture/VideoCapture;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;->onStopRecording(Ljava/io/File;)V

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture$2;->this$0:Lcom/oculus/horizon/capture/VideoCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/VideoCapture;->access$500(Lcom/oculus/horizon/capture/VideoCapture;)V

    .line 80
    return-void
.end method

.method public onCaptureStarted()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "VideoCapture"

    const-string v1, "onCaptureStarted"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture$2;->this$0:Lcom/oculus/horizon/capture/VideoCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/VideoCapture;->access$000(Lcom/oculus/horizon/capture/VideoCapture;)Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;->onStartRecording()V

    .line 69
    return-void
.end method
