.class Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;
.super Ljava/lang/Object;
.source "RecorderCoordinatorImpl.java"

# interfaces
.implements Lcom/facebook/cameracore/common/StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->runStartRecordingVideoImpl(Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 729
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1100(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/recording/common/RecordingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1100(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/recording/common/RecordingCallback;

    move-result-object v0

    new-instance v1, Lcom/facebook/cameracore/recording/common/RecordingException;

    const-string v2, "Failed to start audio recording"

    invoke-direct {v1, v2, p1}, Lcom/facebook/cameracore/recording/common/RecordingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/facebook/cameracore/recording/common/RecordingCallback;->onCaptureFailed(Lcom/facebook/cameracore/recording/common/RecordingException;)V

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1200(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V

    .line 735
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 703
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1300(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 725
    :goto_0
    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1300(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    move-result-object v0

    new-instance v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10$1;

    invoke-direct {v1, p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10$1;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;)V

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    .line 724
    invoke-static {v2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$500(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Landroid/os/Handler;

    move-result-object v2

    .line 706
    invoke-virtual {v0, v1, v2}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->start(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    goto :goto_0
.end method
