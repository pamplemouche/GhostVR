.class Lcom/oculus/horizon/capture/VideoCapture;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Lcom/oculus/horizon/capture/CaptureDelegate;


# instance fields
.field private mAudioEnabled:Z

.field private mAudioHandler:Landroid/os/Handler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mAudioPipelineOutput:Lcom/facebook/cameracore/audio/common/AudioPipelineOutput;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAudioRecordingTrackConfig:Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCameraCoreConfig:Lcom/facebook/cameracore/config/CameraCoreConfig;

.field private final mCaptureCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

.field private mCurrentTimestampUs:J

.field private final mRecorderPreparedStateCallback:Lcom/facebook/cameracore/common/StateCallback;

.field private final mRecordingController:Lcom/facebook/cameracore/recording/RecordingController;

.field private volatile mStopped:Z

.field private mVideoOutputFile:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mVideoStateListener:Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;

.field private final pollRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic access$000(Lcom/oculus/horizon/capture/VideoCapture;)Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mVideoStateListener:Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/capture/VideoCapture;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mStopped:Z

    return v0
.end method

.method static synthetic access$102(Lcom/oculus/horizon/capture/VideoCapture;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/oculus/horizon/capture/VideoCapture;->mStopped:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oculus/horizon/capture/VideoCapture;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mAudioHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/capture/VideoCapture;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->pollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/capture/VideoCapture;)Ljava/io/File;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mVideoOutputFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/capture/VideoCapture;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oculus/horizon/capture/VideoCapture;->cleanUp()V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/horizon/capture/VideoCapture;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/oculus/horizon/capture/VideoCapture;->handleError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/horizon/capture/VideoCapture;)Lcom/facebook/cameracore/recording/common/RecordingCallback;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mCaptureCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/capture/VideoCapture;)Lcom/facebook/cameracore/recording/RecordingController;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mRecordingController:Lcom/facebook/cameracore/recording/RecordingController;

    return-object v0
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mVideoOutputFile:Ljava/io/File;

    .line 249
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mCurrentTimestampUs:J

    .line 250
    return-void
.end method

.method private handleError(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mStopped:Z

    .line 243
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mVideoStateListener:Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;

    invoke-interface {v0, p1}, Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;->onError(Ljava/lang/Exception;)V

    .line 244
    invoke-direct {p0}, Lcom/oculus/horizon/capture/VideoCapture;->cleanUp()V

    .line 245
    return-void
.end method


# virtual methods
.method public onAudioSampleAvailable([BI)V
    .locals 8

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mStopped:Z

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mAudioHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/capture/VideoCapture;->mAudioHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mAudioPipelineOutput:Lcom/facebook/cameracore/audio/common/AudioPipelineOutput;

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mAudioPipelineOutput:Lcom/facebook/cameracore/audio/common/AudioPipelineOutput;

    iget-wide v2, p0, Lcom/oculus/horizon/capture/VideoCapture;->mCurrentTimestampUs:J

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/facebook/cameracore/audio/common/AudioPipelineOutput;->inputData([BIJ)V

    .line 236
    :cond_3
    iget-wide v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mCurrentTimestampUs:J

    int-to-long v2, p2

    iget-object v4, p0, Lcom/oculus/horizon/capture/VideoCapture;->mAudioRecordingTrackConfig:Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;

    iget-object v4, v4, Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;->mAudioEncoderConfig:Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;

    iget v4, v4, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;->pcmEncoding:I

    const-wide/32 v6, 0xbb80

    .line 237
    invoke-static {v2, v3, v4, v6, v7}, Lcom/facebook/cameracore/audio/common/AudioUtils;->getDurationUs(JIJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mCurrentTimestampUs:J

    goto :goto_0
.end method

.method public startRecordVideo(Ljava/io/File;IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 189
    iput-object p1, p0, Lcom/oculus/horizon/capture/VideoCapture;->mVideoOutputFile:Ljava/io/File;

    .line 191
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 192
    new-instance v0, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;

    new-instance v1, Lcom/facebook/cameracore/common/Size;

    invoke-direct {v1, p2, p3}, Lcom/facebook/cameracore/common/Size;-><init>(II)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oculus/horizon/capture/VideoCapture;->mCameraCoreConfig:Lcom/facebook/cameracore/config/CameraCoreConfig;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;-><init>(Lcom/facebook/cameracore/common/Size;ILcom/facebook/cameracore/config/CameraCoreConfig;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-boolean v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mAudioEnabled:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->newBuilder()Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    move-result-object v0

    const v1, 0x17700

    .line 198
    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->setBufferSize(I)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    move-result-object v0

    const v1, 0xbb80

    .line 199
    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->setSampleRateHz(I)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v5}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->setSkipAudioRecording(Z)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0, v5}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->setSkipAudioRecordingOverride(Z)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->build()Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    move-result-object v1

    .line 204
    new-instance v0, Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;

    iget-object v2, p0, Lcom/oculus/horizon/capture/VideoCapture;->mCameraCoreConfig:Lcom/facebook/cameracore/config/CameraCoreConfig;

    new-instance v3, Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;

    invoke-direct {v3}, Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;-><init>()V

    .line 208
    invoke-virtual {v3}, Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;->build()Lcom/facebook/cameracore/config/CameraCoreParameters;

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;-><init>(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;Lcom/facebook/cameracore/config/CameraCoreConfig;Lcom/facebook/cameracore/config/CameraCoreParameters;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mAudioRecordingTrackConfig:Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;

    .line 212
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mAudioRecordingTrackConfig:Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mRecordingController:Lcom/facebook/cameracore/recording/RecordingController;

    iget-object v1, p0, Lcom/oculus/horizon/capture/VideoCapture;->mRecorderPreparedStateCallback:Lcom/facebook/cameracore/common/StateCallback;

    invoke-interface {v0, v6, v1}, Lcom/facebook/cameracore/recording/RecordingController;->prepare(Ljava/util/List;Lcom/facebook/cameracore/common/StateCallback;)V

    .line 215
    return-void
.end method

.method public stopRecordVideo()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture;->mRecordingController:Lcom/facebook/cameracore/recording/RecordingController;

    invoke-interface {v0}, Lcom/facebook/cameracore/recording/RecordingController;->stopRecording()V

    .line 220
    return-void
.end method
