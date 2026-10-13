.class Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10$1;
.super Ljava/lang/Object;
.source "RecorderCoordinatorImpl.java"

# interfaces
.implements Lcom/facebook/cameracore/common/StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 716
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;

    iget-object v0, v0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1100(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/recording/common/RecordingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;

    iget-object v0, v0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1100(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/recording/common/RecordingCallback;

    move-result-object v0

    new-instance v1, Lcom/facebook/cameracore/recording/common/RecordingException;

    const-string v2, "Failed to start audio recording"

    invoke-direct {v1, v2, p1}, Lcom/facebook/cameracore/recording/common/RecordingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/facebook/cameracore/recording/common/RecordingCallback;->onCaptureFailed(Lcom/facebook/cameracore/recording/common/RecordingException;)V

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;

    iget-object v0, v0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1200(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V

    .line 722
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 712
    return-void
.end method
