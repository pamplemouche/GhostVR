.class Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;
.super Ljava/lang/Object;
.source "SurfaceVideoEncoderImpl.java"

# interfaces
.implements Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;

.field private final mEncoderHandler:Landroid/os/Handler;

.field private mInputSurface:Landroid/view/Surface;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMethodInvocationListStringBuilder:Ljava/lang/StringBuilder;

.field private mOutputMediaFormat:Landroid/media/MediaFormat;

.field private volatile mShouldDrainOnStop:Z

.field private volatile mState:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

.field private final mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    .line 45
    iput-object p2, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mCallback:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;

    .line 46
    iput-object p3, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mEncoderHandler:Landroid/os/Handler;

    .line 47
    sget-object v0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;->STOPPED:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    iput-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mState:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMethodInvocationListStringBuilder:Ljava/lang/StringBuilder;

    .line 49
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMethodInvocationListStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "ctor,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Z)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->asyncPrepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->asyncStart(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->asyncStop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;Z)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->encodeInputSurfaceData(Z)V

    return-void
.end method

.method private asyncPrepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Z)V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mState:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    sget-object v1, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;->STOPPED:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    if-eq v0, v1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must only call prepare() on a stopped SurfaceVideoEncoder. Current state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mState:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    .line 143
    :goto_0
    return-void

    .line 117
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    invoke-static {v0}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->createMediaCodec(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    .line 118
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mInputSurface:Landroid/view/Surface;

    .line 119
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMethodInvocationListStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "prepareEnd,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    sget-object v0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;->PREPARED:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    iput-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mState:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    .line 142
    invoke-static {p1, p2}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifySuccess(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    if-eqz p3, :cond_1

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->asyncPrepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Z)V

    goto :goto_0

    .line 125
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v2, "; createMediaCodec["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    iget-object v3, v3, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->profile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    iget v3, v3, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->width:I

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    iget v3, v3, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->height:I

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string v2, ", bitrate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    iget v3, v3, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->bitRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v2, ", frameRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    iget v3, v3, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->frameRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const-string v2, ", iFrameIntervalS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    iget v3, v3, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->iFrameIntervalS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, v2}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private declared-synchronized asyncStart(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mState:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    sget-object v1, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;->PREPARED:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    if-eq v0, v1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare() must be called before starting video encoding. Current state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mState:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_0
    monitor-exit p0

    return-void

    .line 156
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :try_start_2
    sget-object v0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;->STARTED:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    iput-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mState:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    .line 162
    invoke-static {p1, p2}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifySuccess(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 163
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mEncoderHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$4;

    invoke-direct {v1, p0}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$4;-><init>(Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMethodInvocationListStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startEnd,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_3
    invoke-static {p1, p2, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private asyncStop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 175
    iget-boolean v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mShouldDrainOnStop:Z

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->encodeInputSurfaceData(Z)V

    .line 179
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mInputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 183
    iget-boolean v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mShouldDrainOnStop:Z

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 185
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_3
    sget-object v0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;->STOPPED:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    iput-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mState:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    .line 202
    iput-object v6, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    .line 203
    iput-object v6, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mInputSurface:Landroid/view/Surface;

    .line 204
    iput-object v6, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 206
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMethodInvocationListStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopEnd,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-static {p1, p2}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifySuccess(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 208
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mState:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMethodInvocationListStringBuilder:Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    invoke-static {p1, p2, v1}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    sget-object v0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;->STOPPED:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    iput-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mState:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    .line 202
    iput-object v6, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    .line 203
    iput-object v6, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mInputSurface:Landroid/view/Surface;

    .line 204
    iput-object v6, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mOutputMediaFormat:Landroid/media/MediaFormat;

    goto :goto_0

    .line 197
    :catch_1
    move-exception v0

    .line 198
    :try_start_2
    invoke-static {p1, p2, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    sget-object v0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;->STOPPED:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    iput-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mState:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    .line 202
    iput-object v6, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    .line 203
    iput-object v6, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mInputSurface:Landroid/view/Surface;

    .line 204
    iput-object v6, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mOutputMediaFormat:Landroid/media/MediaFormat;

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;->STOPPED:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    iput-object v1, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mState:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    .line 202
    iput-object v6, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    .line 203
    iput-object v6, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mInputSurface:Landroid/view/Surface;

    .line 204
    iput-object v6, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mOutputMediaFormat:Landroid/media/MediaFormat;

    throw v0
.end method

.method private static createMediaCodec(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;)Landroid/media/MediaCodec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->profile:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->isProfileHigh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->getMediaFormat(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Z)Landroid/media/MediaFormat;

    move-result-object v0

    .line 287
    const-string/jumbo v1, "video/avc"

    invoke-static {v1, v0}, Lcom/facebook/cameracore/util/MediaCodecFactory;->getEncodingMediaCodec(Ljava/lang/String;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    .line 288
    :catch_0
    move-exception v0

    .line 290
    sget-object v1, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error getting video encoder for high profile. Fall back to baseline"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->getMediaFormat(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Z)Landroid/media/MediaFormat;

    move-result-object v0

    .line 294
    const-string/jumbo v1, "video/avc"

    invoke-static {v1, v0}, Lcom/facebook/cameracore/util/MediaCodecFactory;->getEncodingMediaCodec(Ljava/lang/String;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v0

    goto :goto_0
.end method

.method private encodeInputSurfaceData(Z)V
    .locals 9

    .prologue
    .line 211
    const-wide/16 v2, 0x0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 214
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 217
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mState:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    sget-object v5, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;->STARTED:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    if-eq v4, v5, :cond_1

    if-eqz p1, :cond_2

    .line 218
    :cond_1
    iget-object v4, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v1, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    .line 219
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 220
    if-eqz p1, :cond_0

    .line 280
    :cond_2
    :goto_1
    return-void

    .line 225
    :cond_3
    const/4 v5, -0x3

    if-ne v4, v5, :cond_4

    .line 226
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_4
    const/4 v5, -0x2

    if-ne v4, v5, :cond_5

    .line 229
    iget-object v4, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mOutputMediaFormat:Landroid/media/MediaFormat;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    iget-object v1, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mCallback:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mState:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isEndOfStream="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "framesProcessed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMethodInvocationListStringBuilder:Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v4, v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    invoke-interface {v1, v4}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;->onError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 231
    :cond_5
    if-gez v4, :cond_6

    .line 232
    :try_start_1
    iget-object v1, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mCallback:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;

    new-instance v5, Ljava/io/IOException;

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v6, "Unexpected result from encoder.dequeueOutputBuffer: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    .line 234
    invoke-static {v0, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-interface {v1, v5}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;->onError(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 277
    :catch_1
    move-exception v0

    .line 278
    iget-object v1, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mCallback:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;

    invoke-interface {v1, v0}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;->onError(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 241
    :cond_6
    :try_start_2
    aget-object v5, v0, v4

    .line 242
    if-nez v5, :cond_7

    .line 243
    iget-object v1, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mCallback:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;

    new-instance v5, Ljava/io/IOException;

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v6, "encoderOutputBuffer %d was null"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 245
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v0, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-interface {v1, v5}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;->onError(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 249
    :cond_7
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v6, v7}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 252
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_8

    .line 253
    const/4 v6, 0x2

    iput v6, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 256
    :cond_8
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v6, :cond_9

    .line 257
    iget-object v6, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mCallback:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;

    invoke-interface {v6, v5, v1}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;->onDataAvailable(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 260
    :cond_9
    iget-object v5, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 262
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_2

    .line 265
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 266
    goto/16 :goto_0
.end method

.method private static getMediaFormat(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Z)Landroid/media/MediaFormat;
    .locals 3

    .prologue
    .line 303
    const-string/jumbo v0, "video/avc"

    iget v1, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->width:I

    iget v2, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->height:I

    .line 304
    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 307
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 309
    const-string v1, "bitrate"

    iget v2, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->bitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 310
    const-string v1, "frame-rate"

    iget v2, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->frameRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 311
    const-string v1, "i-frame-interval"

    iget v2, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->iFrameIntervalS:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 312
    const-string v1, "channel-count"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 313
    const-string v1, "max-input-size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 314
    if-eqz p1, :cond_0

    .line 315
    const-string v1, "profile"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 316
    const-string v1, "level"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 318
    :cond_0
    return-object v0
.end method

.method private static isProfileHigh(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 298
    const-string v0, "high"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getInputSurface()Landroid/view/Surface;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mInputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getOutputMediaFormat()Landroid/media/MediaFormat;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mOutputMediaFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public prepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMethodInvocationListStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "prepare,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mEncoderHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$1;-><init>(Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method

.method public start(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMethodInvocationListStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "start,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mEncoderHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$2;-><init>(Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public declared-synchronized stop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mState:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    sget-object v1, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;->STARTED:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mShouldDrainOnStop:Z

    .line 95
    sget-object v0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;->STOP_IN_PROGRESS:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    iput-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mState:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;

    .line 96
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mMethodInvocationListStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stop,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->mEncoderHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$3;-><init>(Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
