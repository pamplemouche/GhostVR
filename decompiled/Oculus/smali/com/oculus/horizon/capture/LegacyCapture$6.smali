.class Lcom/oculus/horizon/capture/LegacyCapture$6;
.super Ljava/lang/Object;
.source "LegacyCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/capture/LegacyCapture;->startRecordVideoInternal()V
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
    .line 268
    iput-object p1, p0, Lcom/oculus/horizon/capture/LegacyCapture$6;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture$6;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/LegacyCapture;->access$900(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinator;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/capture/LegacyCapture$6;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    .line 272
    invoke-static {v1}, Lcom/oculus/horizon/capture/LegacyCapture;->access$600(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/capture/LegacyCapture$6;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v2}, Lcom/oculus/horizon/capture/LegacyCapture;->access$700(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/capture/LegacyCapture$6;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v3}, Lcom/oculus/horizon/capture/LegacyCapture;->access$800(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/facebook/cameracore/common/StateCallback;

    move-result-object v3

    .line 271
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinator;->prepareRecordingVideo(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;Lcom/facebook/cameracore/common/StateCallback;)V

    .line 273
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture$6;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/LegacyCapture;->access$900(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinator;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/capture/LegacyCapture$6;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v1}, Lcom/oculus/horizon/capture/LegacyCapture;->access$400(Lcom/oculus/horizon/capture/LegacyCapture;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/capture/LegacyCapture$6;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v2}, Lcom/oculus/horizon/capture/LegacyCapture;->access$1000(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/facebook/cameracore/recording/common/RecordingCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinator;->startRecordingVideo(Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V

    .line 274
    return-void
.end method
