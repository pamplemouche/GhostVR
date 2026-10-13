.class public Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$Callback;,
        Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;
    }
.end annotation


# instance fields
.field private mAudioBufferSize:I

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private final mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

.field private final mCallback:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$Callback;

.field private mEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

.field private mEchoCancellationActivated:Z

.field private final mRecorderHandler:Landroid/os/Handler;

.field private final mRecordingRunnable:Ljava/lang/Runnable;

.field private volatile mState:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

.field private mSystemAudioBufferSize:I


# direct methods
.method public constructor <init>(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;Landroid/os/Handler;Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$Callback;)V
    .locals 4

    .prologue
    const v3, 0x64000

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$1;

    invoke-direct {v0, p0}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$1;-><init>(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;)V

    iput-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mRecordingRunnable:Ljava/lang/Runnable;

    .line 94
    iput-object p1, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    .line 95
    iput-object p2, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mRecorderHandler:Landroid/os/Handler;

    .line 96
    iput-object p3, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mCallback:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$Callback;

    .line 97
    sget-object v0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;->STOPPED:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

    iput-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mState:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

    .line 98
    iget-boolean v0, p1, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->skipAudioRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioBufferSize:I

    .line 102
    iget v0, p1, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->bufferSize:I

    if-eq v0, v3, :cond_1

    .line 103
    iget v0, p1, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->bufferSize:I

    iput v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mSystemAudioBufferSize:I

    .line 124
    :goto_1
    return-void

    .line 98
    :cond_0
    const/16 v0, 0x1000

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iget v0, v0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->sampleRateHz:I

    iget-object v1, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iget v1, v1, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->channelType:I

    iget-object v2, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iget v2, v2, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->encoding:I

    .line 106
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mSystemAudioBufferSize:I

    .line 110
    iget v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mSystemAudioBufferSize:I

    if-gtz v0, :cond_2

    .line 111
    iput v3, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mSystemAudioBufferSize:I

    goto :goto_1

    .line 114
    :cond_2
    iget v0, p1, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->audioBufferMultiplier:I

    .line 115
    if-gtz v0, :cond_3

    .line 116
    const/4 v0, 0x2

    .line 118
    :cond_3
    iget v1, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mSystemAudioBufferSize:I

    mul-int/2addr v0, v1

    .line 119
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mSystemAudioBufferSize:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioBufferSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;)Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mState:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;)Landroid/media/AudioRecord;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;)Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$Callback;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mCallback:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->asyncPrepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->asyncStart(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->asyncStop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private asyncPrepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 6

    .prologue
    .line 229
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mState:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

    sget-object v1, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;->STOPPED:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

    if-eq v0, v1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must only call prepare() on a stopped AudioRecorder. Current state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mState:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    .line 258
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iget-boolean v0, v0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->skipAudioRecording:Z

    if-nez v0, :cond_2

    .line 240
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    .line 242
    invoke-direct {p0}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->getAudioSource()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iget v2, v2, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->sampleRateHz:I

    iget-object v3, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iget v3, v3, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->channelType:I

    iget-object v4, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iget v4, v4, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->encoding:I

    iget v5, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mSystemAudioBufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 247
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not prepare audio recording"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    invoke-static {p1, p2, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 250
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->maybeActivateBuiltInEchoCanceler()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mEchoCancellationActivated:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 256
    :cond_2
    sget-object v0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;->PREPARED:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

    iput-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mState:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

    .line 257
    invoke-static {p1, p2}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifySuccess(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private declared-synchronized asyncStart(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mState:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

    sget-object v1, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;->PREPARED:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

    if-eq v0, v1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare() must be called before starting audio recording. Current state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mState:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :goto_0
    monitor-exit p0

    return-void

    .line 271
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iget-boolean v0, v0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->skipAudioRecording:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 273
    :try_start_2
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    :cond_1
    :try_start_3
    sget-object v0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;->STARTED:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

    iput-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mState:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

    .line 280
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mRecorderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mRecordingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    invoke-static {p1, p2}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifySuccess(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    :try_start_4
    invoke-static {p1, p2, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized asyncStop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    .line 287
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mEchoCancellationActivated:Z

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 294
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 295
    invoke-static {p1, p2}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifySuccess(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ensureValidHandler(Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handler cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mRecorderHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The handler must be on a separate thread then the recording one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    return-void
.end method

.method private getAudioSource()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iget-boolean v0, v0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->echoCancellationEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iget v0, v0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->source:I

    goto :goto_0
.end method

.method private maybeActivateBuiltInEchoCanceler()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 300
    iget-object v2, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iget-boolean v2, v2, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->echoCancellationEnabled:Z

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 302
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v2

    invoke-static {v2}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 305
    iget-object v2, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v2, v0}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    move-result v2

    .line 307
    if-nez v2, :cond_0

    .line 310
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 307
    goto :goto_0

    :cond_1
    move v0, v1

    .line 310
    goto :goto_0
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mAudioBufferSize:I

    return v0
.end method

.method public isEchoCancellationActivated()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mEchoCancellationActivated:Z

    return v0
.end method

.method public prepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0, p2}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->ensureValidHandler(Landroid/os/Handler;)V

    .line 145
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mRecorderHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$2;-><init>(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method

.method public start(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 172
    invoke-direct {p0, p2}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->ensureValidHandler(Landroid/os/Handler;)V

    .line 173
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mRecorderHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$3;-><init>(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void
.end method

.method public declared-synchronized stop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->ensureValidHandler(Landroid/os/Handler;)V

    .line 190
    sget-object v0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;->STOPPED:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

    iput-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mState:Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$State;

    .line 191
    iget-object v0, p0, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;->mRecorderHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$4;-><init>(Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
