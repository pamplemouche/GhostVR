.class public Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;
.super Ljava/lang/Object;
.source "RecorderCoordinatorImpl.java"

# interfaces
.implements Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinator;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mCleanupStateCallback:Lcom/facebook/cameracore/common/StateCallback;


# instance fields
.field private mAudioCallback:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAudioHandler:Landroid/os/Handler;

.field private mAudioHandlerThread:Landroid/os/HandlerThread;

.field private final mAudioPlatformComponentHostProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHostProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioPlatformComponentHostStateMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHost;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCameraCoreParameters:Lcom/facebook/cameracore/config/CameraCoreParameters;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mConfig:Lcom/facebook/cameracore/config/CameraCoreConfig;

.field private mFixedRotationDegrees:I

.field private mIsRecordingVideoOperationInProgress:Z

.field private final mLogger:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;

.field private mOutputBuffer:[B

.field private final mOutputProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/cameracore/mediapipeline/filterlib/VideoOutputProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRecordingVideoOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mRecorderOutput:Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRecordingCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRecordingSurface:Landroid/view/Surface;

.field private mSegmentedRecordingSurface:Landroid/view/Surface;

.field private mSegmentedVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

.field private mSegmentedVideoHandler:Landroid/os/Handler;

.field private mSegmentedVideoHandlerThread:Landroid/os/HandlerThread;

.field private mSlowMotionMultiplier:Ljava/lang/Double;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mState:Lcom/facebook/cameracore/common/VideoRecordingState;

.field private volatile mStopRecordingVideoRequested:Z

.field private final mUiThreadHandler:Landroid/os/Handler;

.field private mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

.field private mVideoHandler:Landroid/os/Handler;

.field private mVideoHandlerThread:Landroid/os/HandlerThread;

.field private mVideoRecordingSize:Lcom/facebook/cameracore/common/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->TAG:Ljava/lang/String;

    .line 946
    new-instance v0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$13;

    invoke-direct {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$13;-><init>()V

    sput-object v0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mCleanupStateCallback:Lcom/facebook/cameracore/common/StateCallback;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;Lcom/facebook/cameracore/mediapipeline/filterlib/VideoOutputProvider;Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHostProvider;Landroid/os/Handler;Lcom/facebook/cameracore/config/CameraCoreConfig;Lcom/facebook/cameracore/config/CameraCoreParameters;)V
    .locals 4
    .param p3    # Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHostProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/cameracore/config/CameraCoreParameters;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioPlatformComponentHostStateMap:Ljava/util/WeakHashMap;

    .line 114
    iput v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mFixedRotationDegrees:I

    .line 123
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Null logger passed in"

    invoke-static {v0, v3}, Lcom/instagram/common/guavalite/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 124
    if-eqz p2, :cond_1

    :goto_1
    const-string v0, "Null output provider passsed in"

    invoke-static {v1, v0}, Lcom/instagram/common/guavalite/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 125
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mLogger:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;

    .line 126
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mOutputProvider:Ljava/lang/ref/WeakReference;

    .line 127
    iput-object p4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mUiThreadHandler:Landroid/os/Handler;

    .line 128
    sget-object v0, Lcom/facebook/cameracore/common/VideoRecordingState;->STOPPED:Lcom/facebook/cameracore/common/VideoRecordingState;

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    .line 129
    iput-object p5, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mConfig:Lcom/facebook/cameracore/config/CameraCoreConfig;

    .line 130
    iput-object p6, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mCameraCoreParameters:Lcom/facebook/cameracore/config/CameraCoreParameters;

    .line 131
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioPlatformComponentHostProvider:Ljava/lang/ref/WeakReference;

    .line 132
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mOutputBuffer:[B

    .line 133
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mPendingRecordingVideoOperations:Ljava/util/List;

    .line 134
    iput-boolean v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mIsRecordingVideoOperationInProgress:Z

    .line 135
    return-void

    :cond_0
    move v0, v2

    .line 123
    goto :goto_0

    :cond_1
    move v1, v2

    .line 124
    goto :goto_1
.end method

.method static synthetic access$100(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/common/StateCallback;Z)V
    .locals 0

    .prologue
    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->runPrepareRecordingVideo(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/common/StateCallback;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->runStartRecordingVideoImpl(Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/recording/common/RecordingCallback;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mRecordingCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/recording/common/RecordingCallback;)Lcom/facebook/cameracore/recording/common/RecordingCallback;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mRecordingCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->cleanupOnFailure()V

    return-void
.end method

.method static synthetic access$1300(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;)Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mOutputProvider:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mRecordingSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mRecordingSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSegmentedRecordingSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSegmentedRecordingSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSlowMotionMultiplier:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mRecorderOutput:Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;)Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mRecorderOutput:Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;

    return-object p1
.end method

.method static synthetic access$200(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->runStartRecordingVideo(Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/common/Size;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoRecordingSize:Lcom/facebook/cameracore/common/Size;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/common/VideoRecordingState;)Lcom/facebook/cameracore/common/VideoRecordingState;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->logRecordVideoWaterfallEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->finishRunningRecordingVideoOperation()V

    return-void
.end method

.method static synthetic access$2400(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->logRecordVideoWaterfallError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioCallback:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;)Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioCallback:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->stopAudioThread()V

    return-void
.end method

.method static synthetic access$2700(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->stopVideoThread()V

    return-void
.end method

.method static synthetic access$2800(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/recording/common/RecordingException;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->onOutputEmpty(Lcom/facebook/cameracore/recording/common/RecordingException;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/recording/common/RecordingException;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->onStopFailed(Lcom/facebook/cameracore/recording/common/RecordingException;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->runStopRecordingVideo()V

    return-void
.end method

.method static synthetic access$3000(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioPlatformComponentHostProvider:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Ljava/util/WeakHashMap;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioPlatformComponentHostStateMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Z
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->setupAudioPlatformComponentHost()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)[B
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mOutputBuffer:[B

    return-object v0
.end method

.method static synthetic access$3400(JIJ)J
    .locals 2

    .prologue
    .line 67
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->getDurationUs(JIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->logEventFinished(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Z)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->onPrepareFinished(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->logEventFailed(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mLogger:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->onPrepareFailed(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    return-void
.end method

.method private cleanupOnFailure()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 956
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    sget-object v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mCleanupStateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->stop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 958
    iput-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    sget-object v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mCleanupStateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->stop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 962
    iput-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioCallback:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;

    if-eqz v0, :cond_2

    .line 965
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioCallback:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;

    invoke-virtual {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->stop()V

    .line 966
    iput-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioCallback:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;

    .line 968
    :cond_2
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->stopAudioThread()V

    .line 969
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->stopVideoThread()V

    .line 970
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mIsRecordingVideoOperationInProgress:Z

    .line 971
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mPendingRecordingVideoOperations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 972
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioPlatformComponentHostStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 973
    iput-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mRecordingCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    .line 974
    sget-object v0, Lcom/facebook/cameracore/common/VideoRecordingState;->STOPPED:Lcom/facebook/cameracore/common/VideoRecordingState;

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    .line 975
    return-void
.end method

.method private ensureOnUiThread()V
    .locals 2

    .prologue
    .line 1105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecorderCoordinatorImpl methods must be called on the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1109
    :cond_0
    return-void
.end method

.method private finishRunningRecordingVideoOperation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 354
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->ensureOnUiThread()V

    .line 355
    iput-boolean v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mIsRecordingVideoOperationInProgress:Z

    .line 356
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioPlatformComponentHostStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 358
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mPendingRecordingVideoOperations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mPendingRecordingVideoOperations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 360
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mIsRecordingVideoOperationInProgress:Z

    .line 361
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 363
    :cond_0
    return-void
.end method

.method private static getBytesPerSample(I)I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 1039
    packed-switch p0, :pswitch_data_0

    .line 1050
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1041
    :pswitch_0
    const/4 v0, 0x1

    .line 1047
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 1039
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getDurationUs(JIJ)J
    .locals 4

    .prologue
    .line 1034
    invoke-static {p2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->getBytesPerSample(I)I

    move-result v0

    int-to-long v0, v0

    div-long v0, p0, v0

    .line 1035
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    div-long/2addr v0, p3

    return-wide v0
.end method

.method private logEventFailed(I)V
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mLogger:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;

    invoke-interface {v0, p1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;->logEventFailed(I)V

    .line 1121
    return-void
.end method

.method private logEventFinished(I)V
    .locals 1

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mLogger:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;

    invoke-interface {v0, p1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;->logEventFinished(I)V

    .line 1117
    return-void
.end method

.method private logEventStarted(I)V
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mLogger:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;

    invoke-interface {v0, p1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;->logEventStarted(I)V

    .line 1113
    return-void
.end method

.method private logRecordVideoWaterfallError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1141
    const-string v0, "high"

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->logRecordVideoWaterfallError(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1142
    return-void
.end method

.method private logRecordVideoWaterfallError(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mLogger:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;->logWaterfallError(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1156
    return-void
.end method

.method private logRecordVideoWaterfallEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mLogger:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;

    invoke-interface {v0, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;->logWaterfallEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1132
    return-void
.end method

.method private onOutputEmpty(Lcom/facebook/cameracore/recording/common/RecordingException;)V
    .locals 2

    .prologue
    .line 991
    const-string/jumbo v0, "stop_recording_video_failed"

    const-string v1, "low"

    invoke-direct {p0, v0, p1, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->logRecordVideoWaterfallError(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 996
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mRecordingCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mRecordingCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    invoke-interface {v0, p1}, Lcom/facebook/cameracore/recording/common/RecordingCallback;->onCaptureFailed(Lcom/facebook/cameracore/recording/common/RecordingException;)V

    .line 998
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mRecordingCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    .line 1001
    :cond_0
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->cleanupOnFailure()V

    .line 1002
    return-void
.end method

.method private onPrepareFailed(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1015
    sget-object v0, Lcom/facebook/cameracore/common/VideoRecordingState;->STOPPED:Lcom/facebook/cameracore/common/VideoRecordingState;

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    .line 1016
    invoke-static {p1, p2, p3}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    .line 1018
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->cleanupOnFailure()V

    .line 1019
    return-void
.end method

.method private onPrepareFinished(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Z)V
    .locals 1

    .prologue
    .line 1006
    sget-object v0, Lcom/facebook/cameracore/common/VideoRecordingState;->PREPARED:Lcom/facebook/cameracore/common/VideoRecordingState;

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    .line 1007
    invoke-static {p1, p2}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifySuccess(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 1009
    if-eqz p3, :cond_0

    .line 1010
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->finishRunningRecordingVideoOperation()V

    .line 1012
    :cond_0
    return-void
.end method

.method private onStopFailed(Lcom/facebook/cameracore/recording/common/RecordingException;)V
    .locals 1

    .prologue
    .line 978
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->logEventFailed(I)V

    .line 979
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->logEventFailed(I)V

    .line 980
    const-string/jumbo v0, "stop_recording_video_failed"

    invoke-direct {p0, v0, p1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->logRecordVideoWaterfallError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 982
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mRecordingCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mRecordingCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    invoke-interface {v0, p1}, Lcom/facebook/cameracore/recording/common/RecordingCallback;->onCaptureFailed(Lcom/facebook/cameracore/recording/common/RecordingException;)V

    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mRecordingCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    .line 987
    :cond_0
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->cleanupOnFailure()V

    .line 988
    return-void
.end method

.method private removeVideoRecorderInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1022
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mOutputProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cameracore/mediapipeline/filterlib/VideoOutputProvider;

    .line 1023
    if-eqz v0, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mRecorderOutput:Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;

    invoke-interface {v0, v1}, Lcom/facebook/cameracore/mediapipeline/filterlib/VideoOutputProvider;->removeOutput(Lcom/facebook/cameracore/mediapipeline/filterlib/output/VideoOutput;)V

    .line 1026
    :cond_0
    iput-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mRecordingSurface:Landroid/view/Surface;

    .line 1027
    iput-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSegmentedRecordingSurface:Landroid/view/Surface;

    .line 1028
    iput-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mRecorderOutput:Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;

    .line 1029
    return-void
.end method

.method private runOrQueueRecordingVideoOperation(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->ensureOnUiThread()V

    .line 340
    iget-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mIsRecordingVideoOperationInProgress:Z

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mPendingRecordingVideoOperations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mIsRecordingVideoOperationInProgress:Z

    .line 346
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private runPrepareRecordingVideo(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/common/StateCallback;Z)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 465
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    sget-object v3, Lcom/facebook/cameracore/common/VideoRecordingState;->STOPPED:Lcom/facebook/cameracore/common/VideoRecordingState;

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    sget-object v3, Lcom/facebook/cameracore/common/VideoRecordingState;->PREPARED:Lcom/facebook/cameracore/common/VideoRecordingState;

    if-eq v0, v3, :cond_0

    .line 466
    new-instance v0, Ljava/lang/IllegalStateException;

    check-cast v7, Ljava/util/Locale;

    const-string v3, "prepareRecordingVideo can\'t be called in %s state"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    .line 471
    invoke-virtual {v4}, Lcom/facebook/cameracore/common/VideoRecordingState;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 468
    invoke-static {v7, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-interface {p4, v0}, Lcom/facebook/cameracore/common/StateCallback;->onError(Ljava/lang/Throwable;)V

    .line 473
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->cleanupOnFailure()V

    .line 618
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mStopRecordingVideoRequested:Z

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Stop Recording Video requested. Aborting prepare."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p4, v0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->onPrepareFailed(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 485
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 486
    const-string/jumbo v4, "recording_prepare_with_same_config"

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    sget-object v5, Lcom/facebook/cameracore/common/VideoRecordingState;->PREPARED:Lcom/facebook/cameracore/common/VideoRecordingState;

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    .line 488
    invoke-virtual {p1, v0}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "true"

    .line 486
    :goto_1
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string v0, "prepare_recording_video_started"

    invoke-direct {p0, v0, v3}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->logRecordVideoWaterfallEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 493
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    sget-object v3, Lcom/facebook/cameracore/common/VideoRecordingState;->PREPARED:Lcom/facebook/cameracore/common/VideoRecordingState;

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    invoke-virtual {p1, v0}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 494
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mUiThreadHandler:Landroid/os/Handler;

    invoke-direct {p0, p4, v0, p5}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->onPrepareFinished(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Z)V

    goto :goto_0

    .line 488
    :cond_2
    const-string v0, "false"

    goto :goto_1

    .line 499
    :cond_3
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    sget-object v3, Lcom/facebook/cameracore/common/VideoRecordingState;->PREPARED:Lcom/facebook/cameracore/common/VideoRecordingState;

    if-ne v0, v3, :cond_7

    .line 500
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    if-eqz v0, :cond_4

    .line 501
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    sget-object v3, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mCleanupStateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->stop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 502
    iput-object v7, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    .line 504
    :cond_4
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    if-eqz v0, :cond_5

    .line 505
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    sget-object v3, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mCleanupStateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->stop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 506
    iput-object v7, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 508
    :cond_5
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioCallback:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;

    if-eqz v0, :cond_6

    .line 509
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioCallback:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;

    invoke-virtual {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->stop()V

    .line 510
    iput-object v7, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioCallback:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;

    .line 512
    :cond_6
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->stopAudioThread()V

    .line 513
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->stopVideoThread()V

    .line 514
    sget-object v0, Lcom/facebook/cameracore/common/VideoRecordingState;->STOPPED:Lcom/facebook/cameracore/common/VideoRecordingState;

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    .line 517
    :cond_7
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    .line 518
    iput-object p3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSegmentedVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    .line 520
    sget-object v0, Lcom/facebook/cameracore/common/VideoRecordingState;->PREPARE_STARTED:Lcom/facebook/cameracore/common/VideoRecordingState;

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    .line 521
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->startVideoRecordingThreads()V

    .line 523
    if-nez p2, :cond_9

    .line 525
    invoke-static {}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->newBuilder()Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mConfig:Lcom/facebook/cameracore/config/CameraCoreConfig;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mConfig:Lcom/facebook/cameracore/config/CameraCoreConfig;

    .line 527
    invoke-virtual {v0}, Lcom/facebook/cameracore/config/CameraCoreConfig;->getSDKConfig()Lcom/facebook/cameracore/config/CameraSDKConfig;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mConfig:Lcom/facebook/cameracore/config/CameraCoreConfig;

    .line 528
    invoke-virtual {v0}, Lcom/facebook/cameracore/config/CameraCoreConfig;->getSDKConfig()Lcom/facebook/cameracore/config/CameraSDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/cameracore/config/CameraSDKConfig;->getAudioBufferMultiplier()I

    move-result v0

    .line 526
    :goto_2
    invoke-virtual {v3, v0}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->setAudioBufferMultiplier(I)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mCameraCoreParameters:Lcom/facebook/cameracore/config/CameraCoreParameters;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mCameraCoreParameters:Lcom/facebook/cameracore/config/CameraCoreParameters;

    .line 532
    invoke-virtual {v3}, Lcom/facebook/cameracore/config/CameraCoreParameters;->shouldEnableEchoCancellation()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 530
    :goto_3
    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->setEchoCancellationEnabled(Z)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mConfig:Lcom/facebook/cameracore/config/CameraCoreConfig;

    invoke-virtual {v1}, Lcom/facebook/cameracore/config/CameraCoreConfig;->shouldUseCamcorderAudioSource()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 534
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->setSource(I)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    .line 536
    :cond_8
    invoke-virtual {v0}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->build()Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    move-result-object p2

    .line 538
    :cond_9
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->logEventStarted(I)V

    .line 540
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoRecordingSize:Lcom/facebook/cameracore/common/Size;

    if-nez v0, :cond_a

    .line 541
    new-instance v0, Lcom/facebook/cameracore/common/Size;

    iget v1, p1, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->width:I

    iget v3, p1, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->height:I

    invoke-direct {v0, v1, v3}, Lcom/facebook/cameracore/common/Size;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoRecordingSize:Lcom/facebook/cameracore/common/Size;

    .line 545
    :cond_a
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioCallback:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;

    if-eqz v0, :cond_b

    .line 546
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioCallback:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;

    invoke-virtual {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->stop()V

    .line 548
    :cond_b
    new-instance v0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p2, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioCallback:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;

    .line 549
    new-instance v0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioCallback:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;

    invoke-direct {v0, p2, v1, v3}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;-><init>(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;Landroid/os/Handler;Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$Callback;)V

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    .line 551
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mOutputBuffer:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    invoke-virtual {v1}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->getBufferSize()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 552
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    invoke-virtual {v0}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->getBufferSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mOutputBuffer:[B

    .line 556
    :cond_c
    invoke-static {}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;->newBuilder()Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;

    move-result-object v1

    iget-boolean v0, p2, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->skipAudioRecording:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p2, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->skipAudioRecordingOverride:Z

    if-eqz v0, :cond_10

    iget v0, p2, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->bufferSize:I

    .line 557
    :goto_4
    invoke-virtual {v1, v0}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->setBufferSize(I)Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;

    move-result-object v0

    iget v1, p2, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->sampleRateHz:I

    .line 561
    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->setSampleRate(I)Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;

    move-result-object v0

    .line 562
    invoke-virtual {v0}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->build()Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;

    move-result-object v1

    .line 564
    new-instance v0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    iget-object v4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSegmentedVideoHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mLogger:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;

    iget-boolean v3, p2, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->skipAudioRecordingOverride:Z

    if-eqz v3, :cond_11

    move v9, v2

    :goto_5
    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;-><init>(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;Z)V

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 575
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSlowMotionMultiplier:Ljava/lang/Double;

    if-eqz v0, :cond_d

    .line 576
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSlowMotionMultiplier:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->setSlowdownMultiplier(D)V

    .line 578
    :cond_d
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    iget v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mFixedRotationDegrees:I

    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->setFixedRotationDegreesHint(I)V

    .line 579
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioCallback:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->setAvRecorder(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)V

    .line 581
    new-instance v0, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;-><init>(I)V

    .line 583
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    new-instance v2, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$6;

    invoke-direct {v2, p0, v0, p4, p5}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$6;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;Lcom/facebook/cameracore/common/StateCallback;Z)V

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->prepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 603
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    new-instance v2, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$7;

    invoke-direct {v2, p0, v0, p4, p5}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$7;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;Lcom/facebook/cameracore/common/StateCallback;Z)V

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->prepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    goto/16 :goto_0

    :cond_e
    move v0, v1

    .line 528
    goto/16 :goto_2

    :cond_f
    move v1, v2

    .line 532
    goto/16 :goto_3

    .line 556
    :cond_10
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    .line 560
    invoke-virtual {v0}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->getBufferSize()I

    move-result v0

    goto :goto_4

    .line 564
    :cond_11
    iget-boolean v9, p2, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->skipAudioRecording:Z

    goto :goto_5
.end method

.method private runStartRecordingVideo(Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V
    .locals 6

    .prologue
    .line 622
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    sget-object v1, Lcom/facebook/cameracore/common/VideoRecordingState;->RECORDING:Lcom/facebook/cameracore/common/VideoRecordingState;

    if-ne v0, v1, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->cleanupOnFailure()V

    .line 624
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording video has already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    sget-object v1, Lcom/facebook/cameracore/common/VideoRecordingState;->PREPARED:Lcom/facebook/cameracore/common/VideoRecordingState;

    if-eq v0, v1, :cond_2

    .line 628
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    if-nez v0, :cond_1

    .line 629
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->cleanupOnFailure()V

    .line 630
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare has never been called before calling start. Current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_1
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSegmentedVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    new-instance v4, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$8;

    invoke-direct {v4, p0, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$8;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->runPrepareRecordingVideo(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/common/StateCallback;Z)V

    .line 654
    :goto_0
    return-void

    .line 652
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->runStartRecordingVideoImpl(Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V

    goto :goto_0
.end method

.method private runStartRecordingVideoImpl(Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V
    .locals 4

    .prologue
    .line 657
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    sget-object v1, Lcom/facebook/cameracore/common/VideoRecordingState;->RECORDING:Lcom/facebook/cameracore/common/VideoRecordingState;

    if-ne v0, v1, :cond_0

    .line 658
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->cleanupOnFailure()V

    .line 659
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording video has already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    sget-object v1, Lcom/facebook/cameracore/common/VideoRecordingState;->PREPARED:Lcom/facebook/cameracore/common/VideoRecordingState;

    if-eq v0, v1, :cond_1

    .line 662
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->cleanupOnFailure()V

    .line 663
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare must be called before start. Current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_1
    sget-object v0, Lcom/facebook/cameracore/common/VideoRecordingState;->RECORDING_STARTED:Lcom/facebook/cameracore/common/VideoRecordingState;

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    .line 668
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->logEventStarted(I)V

    .line 669
    const-string/jumbo v0, "start_recording_video_started"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->logRecordVideoWaterfallEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 670
    iput-object p2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mRecordingCallback:Lcom/facebook/cameracore/recording/common/RecordingCallback;

    .line 672
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->setupARAudioService()V

    .line 674
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    if-nez v0, :cond_2

    .line 676
    new-instance v0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$9;

    invoke-direct {v0, p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$9;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "AvRecorder is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    .line 798
    :goto_0
    return-void

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    new-instance v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;

    invoke-direct {v1, p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$10;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V

    new-instance v2, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;

    invoke-direct {v2, p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$11;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V

    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->start(Ljava/io/File;Lcom/facebook/cameracore/common/StateCallback;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private runStopRecordingVideo()V
    .locals 4

    .prologue
    .line 833
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    sget-object v1, Lcom/facebook/cameracore/common/VideoRecordingState;->STOPPED:Lcom/facebook/cameracore/common/VideoRecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    sget-object v1, Lcom/facebook/cameracore/common/VideoRecordingState;->STOP_STARTED:Lcom/facebook/cameracore/common/VideoRecordingState;

    if-ne v0, v1, :cond_1

    .line 834
    :cond_0
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->finishRunningRecordingVideoOperation()V

    .line 944
    :goto_0
    return-void

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    sget-object v1, Lcom/facebook/cameracore/common/VideoRecordingState;->PREPARED:Lcom/facebook/cameracore/common/VideoRecordingState;

    if-ne v0, v1, :cond_2

    .line 839
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->cleanupOnFailure()V

    .line 840
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->finishRunningRecordingVideoOperation()V

    goto :goto_0

    .line 844
    :cond_2
    sget-object v0, Lcom/facebook/cameracore/common/VideoRecordingState;->STOP_STARTED:Lcom/facebook/cameracore/common/VideoRecordingState;

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    .line 845
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->logEventStarted(I)V

    .line 846
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->logEventStarted(I)V

    .line 847
    const-string/jumbo v0, "stop_recording_video_started"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->logRecordVideoWaterfallEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 848
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->removeVideoRecorderInput()V

    .line 849
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_8

    .line 853
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 854
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    if-nez v1, :cond_4

    .line 855
    const-string v1, "mAudioRecorder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    :cond_4
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    if-nez v1, :cond_5

    .line 858
    const-string v1, "mAvRecorder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    :cond_5
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_6

    .line 861
    const-string v1, "mAudioHandlerThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    :cond_6
    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_7

    .line 864
    const-string v1, "mVideoHandlerThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    :cond_7
    new-instance v1, Lcom/facebook/cameracore/recording/common/RecordingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecorderCoordinatorImpl field ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 869
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") unexpectedly null before stopping"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/cameracore/recording/common/RecordingException;-><init>(Ljava/lang/String;)V

    .line 866
    invoke-direct {p0, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->onStopFailed(Lcom/facebook/cameracore/recording/common/RecordingException;)V

    goto/16 :goto_0

    .line 874
    :cond_8
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioPlatformComponentHostProvider:Ljava/lang/ref/WeakReference;

    .line 875
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHostProvider;

    .line 876
    if-eqz v0, :cond_9

    .line 878
    invoke-interface {v0}, Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHostProvider;->getAudioPlatformComponentHost()Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHost;

    move-result-object v0

    .line 879
    if-eqz v0, :cond_9

    .line 880
    invoke-virtual {v0}, Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHost;->stopRecording()V

    .line 884
    :cond_9
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    new-instance v1, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;

    invoke-direct {v1, p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$12;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->stop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    goto/16 :goto_0
.end method

.method private declared-synchronized setupARAudioService()V
    .locals 2

    .prologue
    .line 801
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    sget-object v1, Lcom/facebook/cameracore/common/VideoRecordingState;->RECORDING_STARTED:Lcom/facebook/cameracore/common/VideoRecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mState:Lcom/facebook/cameracore/common/VideoRecordingState;

    sget-object v1, Lcom/facebook/cameracore/common/VideoRecordingState;->RECORDING:Lcom/facebook/cameracore/common/VideoRecordingState;

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 803
    :goto_0
    if-eqz v0, :cond_1

    .line 804
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->setupAudioPlatformComponentHost()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    :cond_1
    monitor-exit p0

    return-void

    .line 801
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setupAudioPlatformComponentHost()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 809
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioPlatformComponentHostProvider:Ljava/lang/ref/WeakReference;

    .line 810
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHostProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    if-nez v0, :cond_0

    move v0, v1

    .line 829
    :goto_0
    monitor-exit p0

    return v0

    .line 816
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHostProvider;->getAudioPlatformComponentHost()Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHost;

    move-result-object v2

    .line 817
    if-nez v2, :cond_1

    move v0, v1

    .line 818
    goto :goto_0

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioPlatformComponentHostStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 822
    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 823
    :cond_2
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioRecorder:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;

    invoke-virtual {v0}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->isEchoCancellationActivated()Z

    move-result v0

    .line 824
    invoke-virtual {v2, v0}, Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHost;->startRecording(Z)V

    .line 825
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioPlatformComponentHostStateMap:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 826
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 829
    goto :goto_0

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startVideoRecordingThreads()V
    .locals 2

    .prologue
    .line 1055
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioRecordingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandlerThread:Landroid/os/HandlerThread;

    .line 1056
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoRecordingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoHandlerThread:Landroid/os/HandlerThread;

    .line 1057
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1058
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1059
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandler:Landroid/os/Handler;

    .line 1060
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoHandler:Landroid/os/Handler;

    .line 1061
    return-void
.end method

.method private stopAudioThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1064
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 1076
    :goto_0
    return-void

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1069
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandlerThread:Landroid/os/HandlerThread;

    .line 1074
    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandler:Landroid/os/Handler;

    goto :goto_0

    .line 1070
    :catch_0
    move-exception v0

    .line 1071
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1073
    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandlerThread:Landroid/os/HandlerThread;

    .line 1074
    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandler:Landroid/os/Handler;

    goto :goto_0

    .line 1073
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandlerThread:Landroid/os/HandlerThread;

    .line 1074
    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mAudioHandler:Landroid/os/Handler;

    throw v0
.end method

.method private stopVideoThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1079
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1082
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoHandlerThread:Landroid/os/HandlerThread;

    .line 1087
    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoHandler:Landroid/os/Handler;

    .line 1091
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSegmentedVideoHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSegmentedVideoHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1094
    :try_start_1
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSegmentedVideoHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1098
    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSegmentedVideoHandlerThread:Landroid/os/HandlerThread;

    .line 1099
    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSegmentedVideoHandler:Landroid/os/Handler;

    .line 1102
    :cond_1
    :goto_1
    return-void

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1086
    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoHandlerThread:Landroid/os/HandlerThread;

    .line 1087
    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoHandler:Landroid/os/Handler;

    goto :goto_0

    .line 1086
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoHandlerThread:Landroid/os/HandlerThread;

    .line 1087
    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoHandler:Landroid/os/Handler;

    throw v0

    .line 1095
    :catch_1
    move-exception v0

    .line 1096
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1098
    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSegmentedVideoHandlerThread:Landroid/os/HandlerThread;

    .line 1099
    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSegmentedVideoHandler:Landroid/os/Handler;

    goto :goto_1

    .line 1098
    :catchall_1
    move-exception v0

    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSegmentedVideoHandlerThread:Landroid/os/HandlerThread;

    .line 1099
    iput-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mSegmentedVideoHandler:Landroid/os/Handler;

    throw v0
.end method


# virtual methods
.method public prepareRecordingVideo(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;Lcom/facebook/cameracore/common/StateCallback;)V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mVideoRecordingSize:Lcom/facebook/cameracore/common/Size;

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mStopRecordingVideoRequested:Z

    .line 224
    new-instance v0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$3;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;Lcom/facebook/cameracore/common/StateCallback;)V

    invoke-direct {p0, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->runOrQueueRecordingVideoOperation(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method public startRecordingVideo(Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mConfig:Lcom/facebook/cameracore/config/CameraCoreConfig;

    invoke-virtual {v0}, Lcom/facebook/cameracore/config/CameraCoreConfig;->shouldUseCustomVideoRecorder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mStopRecordingVideoRequested:Z

    .line 260
    new-instance v0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$4;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V

    invoke-direct {p0, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->runOrQueueRecordingVideoOperation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stopRecordingVideo()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->mStopRecordingVideoRequested:Z

    .line 279
    new-instance v0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$5;

    invoke-direct {v0, p0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$5;-><init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)V

    invoke-direct {p0, v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->runOrQueueRecordingVideoOperation(Ljava/lang/Runnable;)V

    .line 286
    return-void
.end method
