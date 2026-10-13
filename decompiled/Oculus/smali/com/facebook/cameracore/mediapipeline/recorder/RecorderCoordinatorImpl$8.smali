.class Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$8;
.super Ljava/lang/Object;
.source "RecorderCoordinatorImpl.java"

# interfaces
.implements Lcom/facebook/cameracore/common/StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->runStartRecordingVideo(Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

.field final synthetic val$outputFile:Ljava/io/File;

.field final synthetic val$recordingCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$8;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    iput-object p2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$8;->val$outputFile:Ljava/io/File;

    iput-object p3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$8;->val$recordingCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 645
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$8;->val$recordingCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    new-instance v1, Lcom/facebook/cameracore/recording/common/RecordingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare during start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 647
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/cameracore/recording/common/RecordingException;-><init>(Ljava/lang/String;)V

    .line 645
    invoke-interface {v0, v1}, Lcom/facebook/cameracore/recording/common/RecordingCallback;->onCaptureFailed(Lcom/facebook/cameracore/recording/common/RecordingException;)V

    .line 648
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 640
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$8;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$8;->val$outputFile:Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$8;->val$recordingCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    invoke-static {v0, v1, v2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1000(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V

    .line 641
    return-void
.end method
