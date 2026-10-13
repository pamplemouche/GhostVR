.class Lcom/oculus/horizon/capture/VideoCapture$3;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Lcom/facebook/cameracore/common/StateCallback;


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
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 99
    const-string v0, "VideoCapture"

    const-string v1, "MP: Error in preparing video recorder"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture$3;->this$0:Lcom/oculus/horizon/capture/VideoCapture;

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/oculus/horizon/capture/VideoCapture;->access$600(Lcom/oculus/horizon/capture/VideoCapture;Ljava/lang/Exception;)V

    .line 101
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 93
    const-string v0, "VideoCapture"

    const-string v1, "onSuccess prepared recorder"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture$3;->this$0:Lcom/oculus/horizon/capture/VideoCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/VideoCapture;->access$800(Lcom/oculus/horizon/capture/VideoCapture;)Lcom/facebook/cameracore/recording/RecordingController;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/capture/VideoCapture$3;->this$0:Lcom/oculus/horizon/capture/VideoCapture;

    invoke-static {v1}, Lcom/oculus/horizon/capture/VideoCapture;->access$400(Lcom/oculus/horizon/capture/VideoCapture;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/capture/VideoCapture$3;->this$0:Lcom/oculus/horizon/capture/VideoCapture;

    invoke-static {v2}, Lcom/oculus/horizon/capture/VideoCapture;->access$700(Lcom/oculus/horizon/capture/VideoCapture;)Lcom/facebook/cameracore/recording/common/RecordingCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/cameracore/recording/RecordingController;->startRecording(Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V

    .line 95
    return-void
.end method
