.class Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;
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
    .line 481
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    iput-object p2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;->val$pendingStartCallbacks:Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;

    iput-object p3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iput-object p4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    .line 502
    return-void
.end method

.method public onSuccess()V
    .locals 7

    .prologue
    .line 484
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 485
    new-instance v0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 487
    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$1100(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/audio/encoder/AudioEncoder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 488
    invoke-static {v2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$1000(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 489
    invoke-static {v3}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$1200(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 490
    invoke-static {v4}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$1300(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 491
    invoke-static {v5}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$1400(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;-><init>(Lcom/facebook/cameracore/common/MediaFormatProvider;Lcom/facebook/cameracore/common/MediaFormatProvider;Landroid/content/Context;Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;Z)V

    .line 485
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    new-instance v1, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    invoke-direct {v1, v6}, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$602(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/muxing/MuxerWrapperManager;)Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    .line 493
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;->val$pendingStartCallbacks:Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;

    invoke-virtual {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$302(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Z)Z

    .line 495
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifySuccess(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 497
    :cond_0
    return-void
.end method
