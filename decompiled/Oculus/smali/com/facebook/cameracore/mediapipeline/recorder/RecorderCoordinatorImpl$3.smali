.class Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$3;
.super Ljava/lang/Object;
.source "RecorderCoordinatorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->prepareRecordingVideo(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;Lcom/facebook/cameracore/common/StateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

.field final synthetic val$audioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

.field final synthetic val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

.field final synthetic val$videoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;Lcom/facebook/cameracore/common/StateCallback;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$3;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    iput-object p2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$3;->val$videoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    iput-object p3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$3;->val$audioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iput-object p4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$3;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 228
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$3;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$3;->val$videoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$3;->val$audioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$3;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$100(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/common/StateCallback;Z)V

    .line 230
    return-void
.end method
