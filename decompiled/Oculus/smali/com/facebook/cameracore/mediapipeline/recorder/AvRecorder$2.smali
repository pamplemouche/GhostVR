.class Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$2;
.super Ljava/lang/Object;
.source "AvRecorder.java"

# interfaces
.implements Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$2;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$2;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$300(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 129
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$2;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$500(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->writeVideoSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {p0, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$2;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 137
    new-instance v0, Lcom/facebook/cameracore/recording/common/RecordingException;

    const/16 v1, 0x59d9

    invoke-direct {v0, v1, p1}, Lcom/facebook/cameracore/recording/common/RecordingException;-><init>(ILjava/lang/Throwable;)V

    .line 139
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$2;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$700(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;

    move-result-object v1

    const-string v2, "inprogress_recording_video_failure"

    const-string v3, "low"

    invoke-interface {v1, v2, v0, v3}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;->logWaterfallError(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$2;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 142
    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$000(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/common/StateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$2;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$100(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Landroid/os/Handler;

    move-result-object v1

    .line 141
    invoke-static {v0, v1, p1}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    .line 143
    return-void
.end method
