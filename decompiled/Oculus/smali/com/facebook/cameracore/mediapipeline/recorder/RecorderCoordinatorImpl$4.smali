.class Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$4;
.super Ljava/lang/Object;
.source "RecorderCoordinatorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->startRecordingVideo(Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V
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
    .line 261
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$4;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    iput-object p2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$4;->val$outputFile:Ljava/io/File;

    iput-object p3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$4;->val$recordingCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$4;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$4;->val$outputFile:Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$4;->val$recordingCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    invoke-static {v0, v1, v2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$200(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V

    .line 265
    return-void
.end method
