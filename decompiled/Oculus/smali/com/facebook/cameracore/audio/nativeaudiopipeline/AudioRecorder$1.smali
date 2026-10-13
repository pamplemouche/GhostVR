.class Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$1;
.super Ljava/lang/Object;
.source "AudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$1;->this$0:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$1;->this$0:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    invoke-static {v0}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->access$000(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;)I

    move-result v0

    new-array v2, v0, [B

    move v0, v1

    .line 83
    :goto_0
    iget-object v3, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$1;->this$0:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    invoke-static {v3}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->access$100(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;)Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

    move-result-object v3

    sget-object v4, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;->STARTED:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

    if-ne v3, v4, :cond_1

    .line 84
    iget-object v3, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$1;->this$0:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    invoke-static {v3}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->access$200(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    move-result-object v3

    iget-boolean v3, v3, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->skipAudioRecording:Z

    if-nez v3, :cond_0

    .line 85
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$1;->this$0:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    invoke-static {v0}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->access$300(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$1;->this$0:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    invoke-static {v3}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->access$400(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;)Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$Callback;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$Callback;->onDataAvailable([BI)V

    goto :goto_0

    .line 89
    :cond_1
    return-void
.end method
