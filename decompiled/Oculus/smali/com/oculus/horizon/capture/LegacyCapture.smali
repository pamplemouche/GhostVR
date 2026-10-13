.class Lcom/oculus/horizon/capture/LegacyCapture;
.super Ljava/lang/Object;
.source "LegacyCapture.java"

# interfaces
.implements Lcom/oculus/horizon/capture/CaptureDelegate;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioPlatformComponentHostProvider:Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHostProvider;

.field private mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

.field private mAudioRenderCallback:Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCameraCoreConfig:Lcom/facebook/cameracore/config/CameraCoreConfig;

.field private final mCaptureCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

.field private mIsRecordingStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mOutputProvider:Lcom/facebook/cameracore/mediapipeline/filterlib/VideoOutputProvider;

.field private final mRecorderCoordinator:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinator;

.field private final mRecorderCoordinatorLogger:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;

.field private final mRecorderPreparedStateCallback:Lcom/facebook/cameracore/common/StateCallback;

.field private final mUiHandler:Landroid/os/Handler;

.field private mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

.field private mVideoOutputFile:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mVideoStateListener:Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/oculus/horizon/capture/ScreenCapture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/capture/LegacyCapture;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/oculus/horizon/capture/LegacyCapture$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/capture/LegacyCapture$1;-><init>(Lcom/oculus/horizon/capture/LegacyCapture;)V

    iput-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mRecorderPreparedStateCallback:Lcom/facebook/cameracore/common/StateCallback;

    .line 51
    new-instance v0, Lcom/oculus/horizon/capture/LegacyCapture$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/capture/LegacyCapture$2;-><init>(Lcom/oculus/horizon/capture/LegacyCapture;)V

    iput-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mCaptureCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    .line 79
    new-instance v0, Lcom/oculus/horizon/capture/LegacyCapture$3;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/capture/LegacyCapture$3;-><init>(Lcom/oculus/horizon/capture/LegacyCapture;)V

    iput-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mRecorderCoordinatorLogger:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;

    .line 115
    new-instance v0, Lcom/oculus/horizon/capture/LegacyCapture$4;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/capture/LegacyCapture$4;-><init>(Lcom/oculus/horizon/capture/LegacyCapture;)V

    iput-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mOutputProvider:Lcom/facebook/cameracore/mediapipeline/filterlib/VideoOutputProvider;

    .line 128
    new-instance v0, Lcom/oculus/horizon/capture/LegacyCapture$5;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/capture/LegacyCapture$5;-><init>(Lcom/oculus/horizon/capture/LegacyCapture;)V

    iput-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mAudioPlatformComponentHostProvider:Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHostProvider;

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mUiHandler:Landroid/os/Handler;

    .line 213
    new-instance v0, Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;

    invoke-direct {v0}, Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;->build()Lcom/facebook/cameracore/config/CameraCoreConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mCameraCoreConfig:Lcom/facebook/cameracore/config/CameraCoreConfig;

    .line 214
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mAudioPlatformComponentHostProvider:Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHostProvider;

    .line 216
    :goto_0
    new-instance v0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    iget-object v1, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mRecorderCoordinatorLogger:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;

    iget-object v2, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mOutputProvider:Lcom/facebook/cameracore/mediapipeline/filterlib/VideoOutputProvider;

    iget-object v4, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mUiHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mCameraCoreConfig:Lcom/facebook/cameracore/config/CameraCoreConfig;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;Lcom/facebook/cameracore/mediapipeline/filterlib/VideoOutputProvider;Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHostProvider;Landroid/os/Handler;Lcom/facebook/cameracore/config/CameraCoreConfig;Lcom/facebook/cameracore/config/CameraCoreParameters;)V

    iput-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mRecorderCoordinator:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinator;

    .line 224
    iput-object p1, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mVideoStateListener:Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;

    .line 225
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mIsRecordingStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 226
    return-void

    :cond_0
    move-object v3, v6

    .line 214
    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/oculus/horizon/capture/LegacyCapture;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/capture/LegacyCapture;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/oculus/horizon/capture/LegacyCapture;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/facebook/cameracore/recording/common/RecordingCallback;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mCaptureCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/capture/LegacyCapture;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mIsRecordingStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mVideoStateListener:Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/capture/LegacyCapture;)Ljava/io/File;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mVideoOutputFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oculus/horizon/capture/LegacyCapture;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mVideoOutputFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mAudioRenderCallback:Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;

    return-object v0
.end method

.method static synthetic access$502(Lcom/oculus/horizon/capture/LegacyCapture;Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;)Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mAudioRenderCallback:Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;

    return-object p1
.end method

.method static synthetic access$600(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/facebook/cameracore/common/StateCallback;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mRecorderPreparedStateCallback:Lcom/facebook/cameracore/common/StateCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinator;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mRecorderCoordinator:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinator;

    return-object v0
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 299
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mVideoStateListener:Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;

    invoke-interface {v0, p1}, Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;->onError(Ljava/lang/Exception;)V

    .line 300
    iput-object v1, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mVideoOutputFile:Ljava/io/File;

    .line 301
    iput-object v1, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mAudioRenderCallback:Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;

    .line 302
    return-void
.end method

.method private startRecordVideoInternal()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/horizon/capture/LegacyCapture$6;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/capture/LegacyCapture$6;-><init>(Lcom/oculus/horizon/capture/LegacyCapture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method


# virtual methods
.method public onAudioSampleAvailable([BI)V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mAudioRenderCallback:Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mAudioRenderCallback:Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;->onSamplesReady([BI)V

    .line 296
    :cond_0
    return-void
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
    const/4 v6, 0x1

    .line 236
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mIsRecordingStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iput-object p1, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mVideoOutputFile:Ljava/io/File;

    .line 239
    invoke-static {}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->newBuilder()Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;

    move-result-object v0

    .line 240
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->setBitrate(Ljava/lang/Integer;)Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0, p2}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->setWidth(I)Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0, p3}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->setHeight(I)Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0, p4}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->setFrameRate(I)Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->build()Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    .line 245
    sget-object v0, Lcom/oculus/horizon/capture/LegacyCapture;->TAG:Ljava/lang/String;

    const-string v1, "Recording config: %dx%d. FPS: %d. bitRate: %d"

    iget-object v2, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    iget v2, v2, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->width:I

    .line 248
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    iget v3, v3, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->height:I

    .line 249
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    iget v4, v4, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->frameRate:I

    .line 250
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    iget v5, v5, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->bitRate:I

    .line 251
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 245
    invoke-static/range {v0 .. v5}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    invoke-static {}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->newBuilder()Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    move-result-object v0

    const v1, 0x17700

    .line 255
    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->setBufferSize(I)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    move-result-object v0

    const v1, 0xbb80

    .line 256
    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->setSampleRateHz(I)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {v0, v6}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->setSkipAudioRecording(Z)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v6}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->setSkipAudioRecordingOverride(Z)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->build()Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mAudioRenderCallback:Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;

    .line 261
    invoke-direct {p0}, Lcom/oculus/horizon/capture/LegacyCapture;->startRecordVideoInternal()V

    .line 263
    :cond_0
    return-void
.end method

.method public stopRecordVideo()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/horizon/capture/LegacyCapture$7;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/capture/LegacyCapture$7;-><init>(Lcom/oculus/horizon/capture/LegacyCapture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    return-void
.end method
