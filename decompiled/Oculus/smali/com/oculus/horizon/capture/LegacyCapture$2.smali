.class Lcom/oculus/horizon/capture/LegacyCapture$2;
.super Ljava/lang/Object;
.source "LegacyCapture.java"

# interfaces
.implements Lcom/facebook/cameracore/recording/common/RecordingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/capture/LegacyCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/capture/LegacyCapture;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/capture/LegacyCapture;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/oculus/horizon/capture/LegacyCapture$2;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureFailed(Lcom/facebook/cameracore/recording/common/RecordingException;)V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/oculus/horizon/capture/LegacyCapture;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MP: Failed in recording video"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture$2;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v0, p1}, Lcom/oculus/horizon/capture/LegacyCapture;->access$100(Lcom/oculus/horizon/capture/LegacyCapture;Ljava/lang/Exception;)V

    .line 76
    return-void
.end method

.method public onCaptureFinished()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-static {}, Lcom/oculus/horizon/capture/LegacyCapture;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCaptureFinished"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture$2;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/LegacyCapture;->access$300(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/capture/LegacyCapture$2;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v1}, Lcom/oculus/horizon/capture/LegacyCapture;->access$400(Lcom/oculus/horizon/capture/LegacyCapture;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;->onStopRecording(Ljava/io/File;)V

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture$2;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v0, v2}, Lcom/oculus/horizon/capture/LegacyCapture;->access$402(Lcom/oculus/horizon/capture/LegacyCapture;Ljava/io/File;)Ljava/io/File;

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture$2;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v0, v2}, Lcom/oculus/horizon/capture/LegacyCapture;->access$502(Lcom/oculus/horizon/capture/LegacyCapture;Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;)Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;

    .line 70
    return-void
.end method

.method public onCaptureStarted()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/oculus/horizon/capture/LegacyCapture;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCaptureStarted"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture$2;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/LegacyCapture;->access$200(Lcom/oculus/horizon/capture/LegacyCapture;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture$2;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/LegacyCapture;->access$300(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;->onStartRecording()V

    .line 59
    :cond_0
    return-void
.end method
