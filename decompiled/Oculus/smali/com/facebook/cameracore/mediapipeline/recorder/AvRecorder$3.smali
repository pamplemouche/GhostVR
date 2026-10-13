.class Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$3;
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
    .line 147
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$3;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$3;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$300(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$3;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$600(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$3;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$600(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->writeVideoSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {p0, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$3;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$3;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 165
    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$000(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/common/StateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$3;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->access$100(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Landroid/os/Handler;

    move-result-object v1

    .line 164
    invoke-static {v0, v1, p1}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    .line 166
    return-void
.end method
