.class Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;
.super Ljava/lang/Object;
.source "AvRecorder.java"

# interfaces
.implements Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStartVideoRequested:Z

.field final synthetic this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;->mStartVideoRequested:Z

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;->mStartVideoRequested:Z

    .line 94
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$000(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/common/StateCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$100(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$200(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$300(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$400(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$500(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->writeAudioSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 101
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$600(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$600(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->writeAudioSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {p0, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 111
    new-instance v0, Lcom/facebook/cameracore/recording/common/RecordingException;

    const/16 v1, 0x55f1

    invoke-direct {v0, v1, p1}, Lcom/facebook/cameracore/recording/common/RecordingException;-><init>(ILjava/lang/Throwable;)V

    .line 113
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$700(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;

    move-result-object v1

    const-string v2, "inprogress_recording_audio_failure"

    const-string v3, "low"

    invoke-interface {v1, v2, v0, v3}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;->logWaterfallError(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 116
    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$000(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/common/StateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$100(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Landroid/os/Handler;

    move-result-object v1

    .line 115
    invoke-static {v0, v1, p1}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    .line 117
    return-void
.end method
