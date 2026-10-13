.class Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;
.super Ljava/lang/Object;
.source "AvRecorder.java"

# interfaces
.implements Lcom/facebook/cameracore/common/StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->startVideo(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$pendingStartCallbacks:Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;

.field final synthetic val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    iput-object p2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->val$pendingStartCallbacks:Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;

    iput-object p3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iput-object p4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    .line 539
    return-void
.end method

.method public onSuccess()V
    .locals 7

    .prologue
    .line 511
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 512
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 513
    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$400(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 515
    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$1500(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$800(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    move-result-object v1

    .line 514
    invoke-static {v0, v1}, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->createVideoOnlyMuxerWrapper(Ljava/lang/String;Lcom/facebook/cameracore/common/MediaFormatProvider;)Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;

    move-result-object v0

    .line 512
    :goto_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$1600(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$1700(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 521
    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$1100(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/audio/encoder/AudioEncoder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 522
    invoke-static {v2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$800(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 523
    invoke-static {v3}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$1200(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 524
    invoke-static {v4}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$1300(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 525
    invoke-static {v5}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$1400(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;-><init>(Lcom/facebook/cameracore/common/MediaFormatProvider;Lcom/facebook/cameracore/common/MediaFormatProvider;Landroid/content/Context;Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;Z)V

    .line 519
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    new-instance v1, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    invoke-direct {v1, v6}, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$502(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/muxing/MuxerWrapperManager;)Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    .line 528
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$500(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$1800(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->setSlowdownMultiplier(D)V

    .line 529
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$500(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$1900(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->setFixedRotationDegreesHint(I)V

    .line 530
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->val$pendingStartCallbacks:Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;

    invoke-virtual {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$302(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Z)Z

    .line 532
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifySuccess(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 534
    :cond_1
    return-void

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 517
    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$1500(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$1100(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/audio/encoder/AudioEncoder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$800(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    move-result-object v2

    .line 516
    invoke-static {v0, v1, v2}, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->createAudioVideoMuxerWrapper(Ljava/lang/String;Lcom/facebook/cameracore/common/MediaFormatProvider;Lcom/facebook/cameracore/common/MediaFormatProvider;)Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;

    move-result-object v0

    goto/16 :goto_0
.end method
