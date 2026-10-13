.class Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;
.super Ljava/lang/Object;
.source "AvRecorder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private mAudioEncoder:Lcom/facebook/cameracore/audio/encoder/AudioEncoder;

.field private final mAudioEncoderCallback:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;

.field private final mAudioEncoderConfig:Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;

.field private final mAudioEncoderHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mFixedRotationDegrees:I

.field private final mIgnoreAudio:Z

.field private mIsSegmentedRecordingEnabled:Z

.field private volatile mIsStarted:Z

.field private mLogger:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;

.field private mMuxerWrapperManager:Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

.field private mOutputFile:Ljava/io/File;

.field private mSegmentedMuxerWrapperManager:Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

.field private mSegmentedRecordingCallback:Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;

.field private mSegmentedVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

.field private final mSegmentedVideoEncoderCallback:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;

.field private final mSegmentedVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

.field private final mSegmentedVideoEncoderHander:Landroid/os/Handler;

.field private mSlowdownMultiplier:D

.field private mStartStateCallback:Lcom/facebook/cameracore/common/StateCallback;

.field private mStartStateCallbackHandler:Landroid/os/Handler;

.field private final mUiHandler:Landroid/os/Handler;

.field private mUseSegmentedVideoEncoder:Z

.field private mUseTwoPhaseUploadingIfPossible:Z

.field private mVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

.field private final mVideoEncoderCallback:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;

.field private final mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

.field private final mVideoEncoderHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;Z)V
    .locals 2
    .param p6    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUiHandler:Landroid/os/Handler;

    .line 71
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSlowdownMultiplier:D

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mFixedRotationDegrees:I

    .line 84
    new-instance v0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;

    invoke-direct {v0, p0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$1;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)V

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoderCallback:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;

    .line 121
    new-instance v0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$2;

    invoke-direct {v0, p0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$2;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)V

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoderCallback:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;

    .line 146
    new-instance v0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$3;

    invoke-direct {v0, p0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$3;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)V

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoderCallback:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;

    .line 179
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoderConfig:Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;

    .line 180
    iput-object p2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    .line 181
    iput-object p3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    .line 182
    iput-object p4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoderHandler:Landroid/os/Handler;

    .line 183
    iput-object p5, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoderHandler:Landroid/os/Handler;

    .line 184
    iput-object p6, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoderHander:Landroid/os/Handler;

    .line 185
    iput-object p8, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mLogger:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;

    .line 186
    iput-boolean p9, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mIgnoreAudio:Z

    .line 187
    invoke-direct {p0, p7}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->setUpSegmentedRecordingConfigs(Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;)V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/common/StateCallback;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mStartStateCallback:Lcom/facebook/cameracore/common/StateCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mStartStateCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;)Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/audio/encoder/AudioEncoder;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoder:Lcom/facebook/cameracore/audio/encoder/AudioEncoder;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/audio/encoder/AudioEncoder;)Lcom/facebook/cameracore/audio/encoder/AudioEncoder;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoder:Lcom/facebook/cameracore/audio/encoder/AudioEncoder;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedRecordingCallback:Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUseTwoPhaseUploadingIfPossible:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Ljava/io/File;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mOutputFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mIsSegmentedRecordingEnabled:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUseSegmentedVideoEncoder:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)D
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSlowdownMultiplier:D

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mFixedRotationDegrees:I

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->startVideo(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mIsStarted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mIsStarted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mIgnoreAudio:Z

    return v0
.end method

.method static synthetic access$500(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/muxing/MuxerWrapperManager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mMuxerWrapperManager:Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/muxing/MuxerWrapperManager;)Lcom/facebook/cameracore/muxing/MuxerWrapperManager;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mMuxerWrapperManager:Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/muxing/MuxerWrapperManager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedMuxerWrapperManager:Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/muxing/MuxerWrapperManager;)Lcom/facebook/cameracore/muxing/MuxerWrapperManager;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedMuxerWrapperManager:Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    return-object p1
.end method

.method static synthetic access$700(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mLogger:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    return-object v0
.end method

.method static synthetic access$802(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;)Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    return-object p1
.end method

.method static synthetic access$900(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->stopMuxer(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private setUpSegmentedRecordingConfigs(Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 570
    if-eqz p1, :cond_1

    .line 571
    invoke-virtual {p1}, Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mContext:Landroid/content/Context;

    .line 572
    invoke-virtual {p1}, Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;->isSegmentedRecordingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mIsSegmentedRecordingEnabled:Z

    .line 573
    invoke-virtual {p1}, Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;->getSegmentedRecordingCallback()Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedRecordingCallback:Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;

    .line 574
    invoke-virtual {p1}, Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;->getVideoHeight()I

    move-result v0

    .line 575
    invoke-virtual {p1}, Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;->getVideoWidth()I

    move-result v1

    .line 576
    invoke-virtual {p1}, Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;->getUseSegmentedEncoder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    if-lez v0, :cond_2

    if-lez v1, :cond_2

    .line 578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUseSegmentedVideoEncoder:Z

    .line 586
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;->getUseTwoPhaseUploadingIfPossible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUseTwoPhaseUploadingIfPossible:Z

    .line 588
    :cond_1
    return-void

    .line 582
    :cond_2
    iput-boolean v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUseSegmentedVideoEncoder:Z

    .line 583
    iput-boolean v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mIsSegmentedRecordingEnabled:Z

    goto :goto_0
.end method

.method private startVideo(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 4

    .prologue
    .line 478
    new-instance v1, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;-><init>(I)V

    .line 479
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    new-instance v2, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$11;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUiHandler:Landroid/os/Handler;

    invoke-interface {v0, v2, v3}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;->start(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    new-instance v2, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$12;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUiHandler:Landroid/os/Handler;

    invoke-interface {v0, v2, v1}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;->start(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 542
    return-void

    .line 478
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private stopMuxer(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mMuxerWrapperManager:Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedMuxerWrapperManager:Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 547
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mMuxerWrapperManager:Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    if-eqz v1, :cond_1

    .line 548
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mMuxerWrapperManager:Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    invoke-virtual {v0}, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->stop()Z

    move-result v0

    .line 550
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mMuxerWrapperManager:Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    .line 551
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedMuxerWrapperManager:Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    if-eqz v1, :cond_2

    .line 552
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedMuxerWrapperManager:Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    invoke-virtual {v1}, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->stop()Z

    move-result v1

    and-int/2addr v0, v1

    .line 554
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedMuxerWrapperManager:Lcom/facebook/cameracore/muxing/MuxerWrapperManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    if-eqz v0, :cond_4

    .line 560
    invoke-static {p1, p2}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifySuccess(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 567
    :goto_1
    return-void

    .line 545
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    invoke-static {p1, p2, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 562
    :cond_4
    new-instance v0, Lcom/facebook/cameracore/recording/common/RecordingException;

    const/16 v1, 0x5209

    invoke-direct {v0, v1}, Lcom/facebook/cameracore/recording/common/RecordingException;-><init>(I)V

    invoke-static {p1, p2, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public getSegmentedVideoInputSurface()Landroid/view/Surface;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    invoke-interface {v0}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getUseSegmentedVideoEncoder()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUseSegmentedVideoEncoder:Z

    return v0
.end method

.method public getVideoInputSurface()Landroid/view/Surface;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    invoke-interface {v0}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public inputAudioData([BIJ)V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoder:Lcom/facebook/cameracore/audio/encoder/AudioEncoder;

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoder:Lcom/facebook/cameracore/audio/encoder/AudioEncoder;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/cameracore/audio/encoder/AudioEncoder;->inputData([BIJ)V

    goto :goto_0
.end method

.method public prepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoder:Lcom/facebook/cameracore/audio/encoder/AudioEncoder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    if-eqz v0, :cond_2

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call prepare() again until stopping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    .line 323
    :cond_1
    :goto_0
    return-void

    .line 258
    :cond_2
    new-instance v1, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;

    iget-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUseSegmentedVideoEncoder:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    :goto_1
    invoke-direct {v1, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;-><init>(I)V

    .line 259
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoderConfig:Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoderCallback:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoderHandler:Landroid/os/Handler;

    .line 260
    invoke-static {v0, v2, v3}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderFactory;->getAudioEncoder(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;Landroid/os/Handler;)Lcom/facebook/cameracore/audio/encoder/AudioEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoder:Lcom/facebook/cameracore/audio/encoder/AudioEncoder;

    .line 262
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoder:Lcom/facebook/cameracore/audio/encoder/AudioEncoder;

    new-instance v2, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$4;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$4;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUiHandler:Landroid/os/Handler;

    invoke-interface {v0, v2, v3}, Lcom/facebook/cameracore/audio/encoder/AudioEncoder;->prepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 279
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoderCallback:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoderHandler:Landroid/os/Handler;

    .line 280
    invoke-static {v0, v2, v3}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderFactory;->getSurfaceVideoEncoder(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;Landroid/os/Handler;)Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    .line 282
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    new-instance v2, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$5;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$5;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUiHandler:Landroid/os/Handler;

    invoke-interface {v0, v2, v3}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;->prepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 301
    iget-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUseSegmentedVideoEncoder:Z

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoderCallback:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoderHander:Landroid/os/Handler;

    .line 303
    invoke-static {v0, v2, v3}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderFactory;->getSurfaceVideoEncoder(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;Landroid/os/Handler;)Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    .line 307
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    new-instance v2, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$6;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$6;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUiHandler:Landroid/os/Handler;

    invoke-interface {v0, v2, v1}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;->prepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 258
    :cond_3
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public setFixedRotationDegreesHint(I)V
    .locals 0

    .prologue
    .line 236
    iput p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mFixedRotationDegrees:I

    .line 237
    return-void
.end method

.method public setSlowdownMultiplier(D)V
    .locals 1

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSlowdownMultiplier:D

    .line 217
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mMuxerWrapperManager:Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mMuxerWrapperManager:Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->setSlowdownMultiplier(D)V

    .line 220
    :cond_0
    return-void
.end method

.method public start(Ljava/io/File;Lcom/facebook/cameracore/common/StateCallback;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoder:Lcom/facebook/cameracore/audio/encoder/AudioEncoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUseSegmentedVideoEncoder:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    if-nez v0, :cond_1

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call start() before prepare"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p4, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    .line 373
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mIsStarted:Z

    if-eqz v0, :cond_2

    .line 350
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call start() again after encoding has started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p4, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 357
    :cond_2
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mOutputFile:Ljava/io/File;

    .line 358
    iput-object p3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mStartStateCallback:Lcom/facebook/cameracore/common/StateCallback;

    .line 359
    iput-object p4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mStartStateCallbackHandler:Landroid/os/Handler;

    .line 360
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoder:Lcom/facebook/cameracore/audio/encoder/AudioEncoder;

    new-instance v1, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$7;

    invoke-direct {v1, p0, p2, p4}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$7;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUiHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2}, Lcom/facebook/cameracore/audio/encoder/AudioEncoder;->start(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public stop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 4

    .prologue
    .line 400
    new-instance v0, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;-><init>(I)V

    .line 401
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    if-nez v1, :cond_0

    .line 402
    invoke-virtual {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;->decrementAndGet()I

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoder:Lcom/facebook/cameracore/audio/encoder/AudioEncoder;

    if-nez v1, :cond_1

    .line 405
    invoke-virtual {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;->decrementAndGet()I

    .line 407
    :cond_1
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    if-nez v1, :cond_2

    .line 408
    invoke-virtual {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;->decrementAndGet()I

    .line 410
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;->get()I

    move-result v1

    if-nez v1, :cond_4

    .line 411
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->stopMuxer(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 475
    :cond_3
    :goto_0
    return-void

    .line 416
    :cond_4
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    if-eqz v1, :cond_5

    .line 417
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    new-instance v2, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$8;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$8;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUiHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v3}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;->stop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 436
    :cond_5
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    if-eqz v1, :cond_6

    .line 437
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mSegmentedVideoEncoder:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    new-instance v2, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$9;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$9;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUiHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v3}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;->stop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 456
    :cond_6
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoder:Lcom/facebook/cameracore/audio/encoder/AudioEncoder;

    if-eqz v1, :cond_3

    .line 457
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mAudioEncoder:Lcom/facebook/cameracore/audio/encoder/AudioEncoder;

    new-instance v2, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$10;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$10;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->mUiHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v0}, Lcom/facebook/cameracore/audio/encoder/AudioEncoder;->stop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    goto :goto_0
.end method
