.class Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;
.super Ljava/lang/Object;
.source "RecorderCoordinatorImpl.java"

# interfaces
.implements Lcom/facebook/cameracore/common/StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 924
    instance-of v0, p1, Lcom/facebook/cameracore/recording/common/RecordingException;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 925
    check-cast v0, Lcom/facebook/cameracore/recording/common/RecordingException;

    .line 926
    invoke-virtual {v0}, Lcom/facebook/cameracore/recording/common/RecordingException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x5209

    if-ne v0, v1, :cond_0

    .line 928
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v0, v0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    new-instance v1, Lcom/facebook/cameracore/recording/common/RecordingException;

    const-string v2, "Muxer output is empty"

    invoke-direct {v1, v2, p1}, Lcom/facebook/cameracore/recording/common/RecordingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2800(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/recording/common/RecordingException;)V

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v0, v0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    new-instance v1, Lcom/facebook/cameracore/recording/common/RecordingException;

    const-string v2, "Failed to stop av recorder"

    invoke-direct {v1, v2, p1}, Lcom/facebook/cameracore/recording/common/RecordingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2900(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/recording/common/RecordingException;)V

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 896
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v1, v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1302(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;)Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    .line 897
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v1, v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1602(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 898
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v1, v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2500(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 899
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v1, v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2500(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->stop()V

    .line 900
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v1, v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2502(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;)Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;

    .line 902
    :cond_0
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v1, v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    sget-object v2, Lcom/facebook/cameracore/common/VideoRecordingState;->STOPPED:Lcom/facebook/cameracore/common/VideoRecordingState;

    invoke-static {v1, v2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2102(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/common/VideoRecordingState;)Lcom/facebook/cameracore/common/VideoRecordingState;

    .line 903
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v1, v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2600(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V

    .line 904
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v1, v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2700(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V

    .line 905
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v1, v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1100(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/recording/common/RecordingCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 906
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v1, v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1100(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/recording/common/RecordingCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/cameracore/recording/common/RecordingCallback;->onCaptureFinished()V

    .line 907
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v1, v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$1102(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/recording/common/RecordingCallback;)Lcom/facebook/cameracore/recording/common/RecordingCallback;

    .line 909
    :cond_1
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v1, v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$400(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;I)V

    .line 910
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v1, v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$400(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;I)V

    .line 912
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v1, v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2000(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/common/Size;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 913
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 914
    const-string v1, "capture_size"

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v2, v2, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2000(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/common/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/cameracore/common/Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    :cond_2
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v1, v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    const-string/jumbo v2, "stop_recording_video_finished"

    invoke-static {v1, v2, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2200(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Ljava/lang/String;Ljava/util/Map;)V

    .line 919
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12$1;->this$1:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    iget-object v0, v0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$2300(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V

    .line 920
    return-void
.end method
