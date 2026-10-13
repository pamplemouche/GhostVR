.class Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;
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
    .line 737
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1100(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/recording/common/RecordingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1100(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/recording/common/RecordingCallback;

    move-result-object v0

    new-instance v1, Lcom/facebook/cameracore/recording/common/RecordingException;

    const-string v2, "Failed to start video recording"

    invoke-direct {v1, v2, p1}, Lcom/facebook/cameracore/recording/common/RecordingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/facebook/cameracore/recording/common/RecordingCallback;->onCaptureFailed(Lcom/facebook/cameracore/recording/common/RecordingException;)V

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$700(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;I)V

    .line 791
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    const-string/jumbo v1, "start_recording_video_failed"

    invoke-static {v0, v1, p1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2400(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 794
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1200(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V

    .line 795
    return-void
.end method

.method public onSuccess()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 740
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1400(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cameracore/mediapipeline/filterlib/VideoOutputProvider;

    .line 741
    if-nez v0, :cond_0

    .line 782
    :goto_0
    return-void

    .line 746
    :cond_0
    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1600(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1600(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->getVideoInputSurface()Landroid/view/Surface;

    move-result-object v1

    :goto_1
    invoke-static {v3, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1502(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Landroid/view/Surface;)Landroid/view/Surface;

    .line 747
    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    .line 748
    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1600(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1600(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->getSegmentedVideoInputSurface()Landroid/view/Surface;

    move-result-object v1

    .line 747
    :goto_2
    invoke-static {v3, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1702(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Landroid/view/Surface;)Landroid/view/Surface;

    .line 750
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1500(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    .line 751
    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1600(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    .line 752
    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1600(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->getUseSegmentedVideoEncoder()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    .line 753
    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1700(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Landroid/view/Surface;

    move-result-object v1

    if-nez v1, :cond_4

    .line 755
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording surface not available. Make sure prepare is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 746
    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 748
    goto :goto_2

    .line 760
    :cond_4
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1800(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 761
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    new-instance v3, Lcom/facebook/cameracore/recording/video/timelapse/TimelapseOutput;

    iget-object v4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    .line 763
    invoke-static {v4}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1500(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Landroid/view/Surface;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v5}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2000(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/common/Size;

    move-result-object v5

    iget v5, v5, Lcom/facebook/cameracore/common/Size;->width:I

    iget-object v6, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v6}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2000(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/common/Size;

    move-result-object v6

    iget v6, v6, Lcom/facebook/cameracore/common/Size;->height:I

    invoke-direct {v3, v4, v5, v6}, Lcom/facebook/cameracore/recording/video/timelapse/TimelapseOutput;-><init>(Landroid/view/Surface;II)V

    .line 761
    invoke-static {v1, v3}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1902(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;)Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;

    .line 764
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1900(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;

    move-result-object v1

    check-cast v1, Lcom/facebook/cameracore/recording/video/timelapse/TimelapseOutput;

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v3}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1800(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/facebook/cameracore/recording/video/timelapse/TimelapseOutput;->setMultiplier(D)V

    .line 770
    :goto_3
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1900(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v3}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1500(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Landroid/view/Surface;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/facebook/cameracore/mediapipeline/filterlib/VideoOutputProvider;->addOutput(Lcom/facebook/cameracore/mediapipeline/filterlib/output/VideoOutput;Landroid/view/Surface;)V

    .line 771
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1700(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 772
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1900(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v3}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1500(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Landroid/view/Surface;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/facebook/cameracore/mediapipeline/filterlib/VideoOutputProvider;->addOutput(Lcom/facebook/cameracore/mediapipeline/filterlib/output/VideoOutput;Landroid/view/Surface;)V

    .line 774
    :cond_5
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    sget-object v1, Lcom/facebook/cameracore/common/VideoRecordingState;->RECORDING:Lcom/facebook/cameracore/common/VideoRecordingState;

    invoke-static {v0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2102(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/common/VideoRecordingState;)Lcom/facebook/cameracore/common/VideoRecordingState;

    .line 775
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1100(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/recording/common/RecordingCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 776
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1100(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/recording/common/RecordingCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cameracore/recording/common/RecordingCallback;->onCaptureStarted()V

    .line 778
    :cond_6
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$400(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;I)V

    .line 779
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    const-string/jumbo v1, "start_recording_video_finished"

    invoke-static {v0, v1, v2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2200(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Ljava/lang/String;Ljava/util/Map;)V

    .line 781
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2300(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V

    goto/16 :goto_0

    .line 766
    :cond_7
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    new-instance v3, Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;

    iget-object v4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    .line 768
    invoke-static {v4}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1500(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Landroid/view/Surface;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v5}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2000(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/common/Size;

    move-result-object v5

    iget v5, v5, Lcom/facebook/cameracore/common/Size;->width:I

    iget-object v6, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v6}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2000(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/common/Size;

    move-result-object v6

    iget v6, v6, Lcom/facebook/cameracore/common/Size;->height:I

    invoke-direct {v3, v4, v5, v6}, Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;-><init>(Landroid/view/Surface;II)V

    .line 766
    invoke-static {v1, v3}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1902(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;)Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;

    goto :goto_3
.end method
