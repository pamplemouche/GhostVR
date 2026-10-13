.class Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$7;
.super Ljava/lang/Object;
.source "RecorderCoordinatorImpl.java"

# interfaces
.implements Lcom/facebook/cameracore/common/StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->runPrepareRecordingVideo(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/common/StateCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

.field final synthetic val$pendingPrepareCallbacks:Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;

.field final synthetic val$runNextOperation:Z

.field final synthetic val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;Lcom/facebook/cameracore/common/StateCallback;Z)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$7;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    iput-object p2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$7;->val$pendingPrepareCallbacks:Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;

    iput-object p3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$7;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iput-boolean p4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$7;->val$runNextOperation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$7;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$7;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$7;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$500(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$900(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    .line 615
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    .line 607
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$7;->val$pendingPrepareCallbacks:Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;

    invoke-virtual {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$7;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$7;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$7;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$500(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Landroid/os/Handler;

    move-result-object v2

    iget-boolean v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$7;->val$runNextOperation:Z

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$600(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Z)V

    .line 610
    :cond_0
    return-void
.end method
