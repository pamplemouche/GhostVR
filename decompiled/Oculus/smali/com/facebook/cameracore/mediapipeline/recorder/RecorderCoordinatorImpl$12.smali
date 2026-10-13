.class Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;
.super Ljava/lang/Object;
.source "RecorderCoordinatorImpl.java"

# interfaces
.implements Lcom/facebook/cameracore/common/StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->runStopRecordingVideo()V
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
    .line 885
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 940
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    new-instance v1, Lcom/facebook/cameracore/recording/common/RecordingException;

    const-string v2, "Failed to stop audio recorder"

    invoke-direct {v1, v2, p1}, Lcom/facebook/cameracore/recording/common/RecordingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2900(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/recording/common/RecordingException;)V

    .line 941
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 889
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1600(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 936
    :goto_0
    return-void

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1600(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    move-result-object v0

    new-instance v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;

    invoke-direct {v1, p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;)V

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    .line 935
    invoke-static {v2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$500(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Landroid/os/Handler;

    move-result-object v2

    .line 892
    invoke-virtual {v0, v1, v2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->stop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    goto :goto_0
.end method
