.class public Lcom/oculus/platform/OVRMicrophone;
.super Ljava/lang/Object;
.source "OVRMicrophone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;,
        Lcom/oculus/platform/OVRMicrophone$State;
    }
.end annotation


# static fields
.field private static final CHANNELS:I = 0x10

.field private static final FORMAT:I = 0x2

.field static MIC_START_ALREADY_STARTED:I = 0x0

.field static MIC_START_EXCLUSIVE_FAILURE:I = 0x0

.field static MIC_START_MISSING_PERMISSION:I = 0x0

.field static MIC_START_SUCCESS:I = 0x0

.field private static final MODE:I = 0x0

.field private static final SAMPLE_RATE:I = 0xbb80


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final USE_HW_EFFECTS:Z

.field private aecEffect:Landroid/media/audiofx/AcousticEchoCanceler;

.field private audioThread:Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;

.field private final bufferSize:I

.field byteBuffer:Ljava/nio/ByteBuffer;

.field private final isStandaloneHeadset:Z

.field private nativeMicrophoneImpl:J

.field private nsEffect:Landroid/media/audiofx/NoiseSuppressor;

.field private recorder:Landroid/media/AudioRecord;

.field private shutdownLock:Ljava/lang/Object;

.field private state:Lcom/oculus/platform/OVRMicrophone$State;

.field private stateLock:Ljava/lang/Object;

.field webRtcEffects:Lorg/webrtc/voiceengine/WebRtcAudioEffects;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    sput v0, Lcom/oculus/platform/OVRMicrophone;->MIC_START_SUCCESS:I

    .line 110
    const/4 v0, -0x1

    sput v0, Lcom/oculus/platform/OVRMicrophone;->MIC_START_MISSING_PERMISSION:I

    .line 111
    const/4 v0, -0x2

    sput v0, Lcom/oculus/platform/OVRMicrophone;->MIC_START_ALREADY_STARTED:I

    .line 112
    const/4 v0, -0x3

    sput v0, Lcom/oculus/platform/OVRMicrophone;->MIC_START_EXCLUSIVE_FAILURE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JZ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "OVRPlatform-OVRMicrophone"

    iput-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/platform/OVRMicrophone;->USE_HW_EFFECTS:Z

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->stateLock:Ljava/lang/Object;

    .line 97
    iput-object v2, p0, Lcom/oculus/platform/OVRMicrophone;->audioThread:Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;

    .line 98
    iput-object v2, p0, Lcom/oculus/platform/OVRMicrophone;->recorder:Landroid/media/AudioRecord;

    .line 99
    sget-object v0, Lcom/oculus/platform/OVRMicrophone$State;->Uninitialized:Lcom/oculus/platform/OVRMicrophone$State;

    iput-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->state:Lcom/oculus/platform/OVRMicrophone$State;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->shutdownLock:Ljava/lang/Object;

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oculus/platform/OVRMicrophone;->nativeMicrophoneImpl:J

    .line 123
    iput-object v2, p0, Lcom/oculus/platform/OVRMicrophone;->webRtcEffects:Lorg/webrtc/voiceengine/WebRtcAudioEffects;

    .line 126
    iput-object v2, p0, Lcom/oculus/platform/OVRMicrophone;->aecEffect:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 127
    iput-object v2, p0, Lcom/oculus/platform/OVRMicrophone;->nsEffect:Landroid/media/audiofx/NoiseSuppressor;

    .line 151
    iput-boolean p4, p0, Lcom/oculus/platform/OVRMicrophone;->isStandaloneHeadset:Z

    .line 153
    const v0, 0xbb80

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/oculus/platform/OVRMicrophone;->bufferSize:I

    .line 154
    iput-wide p2, p0, Lcom/oculus/platform/OVRMicrophone;->nativeMicrophoneImpl:J

    .line 159
    const/16 v0, 0x3c0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 160
    iget-wide v0, p0, Lcom/oculus/platform/OVRMicrophone;->nativeMicrophoneImpl:J

    iget-object v2, p0, Lcom/oculus/platform/OVRMicrophone;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/platform/OVRMicrophone;->nativeSetDirectByteBuffer(JLjava/nio/ByteBuffer;)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/platform/OVRMicrophone;)Landroid/media/AudioRecord;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->recorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/platform/OVRMicrophone;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->stateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/platform/OVRMicrophone;)Lcom/oculus/platform/OVRMicrophone$State;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->state:Lcom/oculus/platform/OVRMicrophone$State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/platform/OVRMicrophone;Z)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/oculus/platform/OVRMicrophone;->assertTrue(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/platform/OVRMicrophone;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/oculus/platform/OVRMicrophone;->stopRecording()V

    return-void
.end method

.method static synthetic access$502(Lcom/oculus/platform/OVRMicrophone;Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;)Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/oculus/platform/OVRMicrophone;->audioThread:Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/oculus/platform/OVRMicrophone;Lcom/oculus/platform/OVRMicrophone$State;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/oculus/platform/OVRMicrophone;->setState(Lcom/oculus/platform/OVRMicrophone$State;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/platform/OVRMicrophone;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->shutdownLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/platform/OVRMicrophone;)J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/oculus/platform/OVRMicrophone;->nativeMicrophoneImpl:J

    return-wide v0
.end method

.method private assertTrue(Z)V
    .locals 2

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 392
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Assertion failed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 394
    :cond_0
    return-void
.end method

.method public static checkMicPermission()Z
    .locals 7

    .prologue
    const v2, 0xbb80

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 133
    new-instance v0, Landroid/media/AudioRecord;

    .line 138
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 144
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    if-ne v2, v6, :cond_0

    move v1, v6

    .line 145
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 147
    return v1
.end method

.method private enableAndroidEffects(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 334
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->aecEffect:Landroid/media/audiofx/AcousticEchoCanceler;

    if-nez v0, :cond_0

    .line 335
    const-string v0, "OVRPlatform-OVRMicrophone"

    const-string v1, "AcousticEchoCanceler available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-static {p1}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->aecEffect:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 337
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->aecEffect:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "OVRPlatform-OVRMicrophone"

    const-string v1, "AcousticEchoCanceler created, enabling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->aecEffect:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0, v4}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    move-result v0

    .line 340
    const-string v1, "OVRPlatform-OVRMicrophone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AcousticEchoCanceler enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->nsEffect:Landroid/media/audiofx/NoiseSuppressor;

    if-nez v0, :cond_1

    .line 344
    const-string v0, "OVRPlatform-OVRMicrophone"

    const-string v1, "NoiseSuppressor available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {p1}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->nsEffect:Landroid/media/audiofx/NoiseSuppressor;

    .line 346
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->nsEffect:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_1

    .line 347
    const-string v0, "OVRPlatform-OVRMicrophone"

    const-string v1, "NoiseSuppressor created, enabling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->nsEffect:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0, v4}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    move-result v0

    .line 349
    const-string v1, "OVRPlatform-OVRMicrophone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoiseSuppressor enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_1
    return-void
.end method

.method private enableEffects(I)V
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/oculus/platform/OVRMicrophone;->isStandaloneHeadset:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0, p1}, Lcom/oculus/platform/OVRMicrophone;->enableAndroidEffects(I)V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/platform/OVRMicrophone;->enableWebRtcEffects(I)V

    goto :goto_0
.end method

.method private enableWebRtcEffects(I)V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method private initializeRecorder()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 214
    new-instance v0, Landroid/media/AudioRecord;

    const v2, 0xbb80

    const/16 v3, 0x10

    const/4 v4, 0x2

    iget v5, p0, Lcom/oculus/platform/OVRMicrophone;->bufferSize:I

    mul-int/lit8 v5, v5, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->recorder:Landroid/media/AudioRecord;

    .line 224
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 227
    const-string v0, "OVRPlatform-OVRMicrophone"

    const-string v2, "Failed to initialize AudioRecord."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->recorder:Landroid/media/AudioRecord;

    .line 239
    :goto_0
    return v1

    .line 232
    :cond_0
    const-string v0, "OVRPlatform-OVRMicrophone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioRecord session ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRMicrophone;->recorder:Landroid/media/AudioRecord;

    .line 233
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", audio format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRMicrophone;->recorder:Landroid/media/AudioRecord;

    .line 234
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", channels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRMicrophone;->recorder:Landroid/media/AudioRecord;

    .line 235
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sample rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRMicrophone;->recorder:Landroid/media/AudioRecord;

    .line 236
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oculus/platform/OVRMicrophone;->enableEffects(I)V

    move v1, v6

    .line 239
    goto :goto_0
.end method

.method private releaseAndroidEffects()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 355
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->aecEffect:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_0

    .line 356
    const-string v0, "OVRPlatform-OVRMicrophone"

    const-string v1, "Disabling AcousticEchoCanceler"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->aecEffect:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    iput-object v3, p0, Lcom/oculus/platform/OVRMicrophone;->aecEffect:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->nsEffect:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_1

    .line 367
    const-string v0, "OVRPlatform-OVRMicrophone"

    const-string v1, "Disabling NoiseSuppressor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :try_start_1
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->nsEffect:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->nsEffect:Landroid/media/audiofx/NoiseSuppressor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 376
    :cond_1
    :goto_1
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    const-string v1, "OVRPlatform-OVRMicrophone"

    const-string v2, "aecEffect release exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 372
    :catch_1
    move-exception v0

    .line 373
    const-string v1, "OVRPlatform-OVRMicrophone"

    const-string v2, "nsEffect release exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private releaseEffects()V
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/oculus/platform/OVRMicrophone;->isStandaloneHeadset:Z

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/oculus/platform/OVRMicrophone;->releaseAndroidEffects()V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/oculus/platform/OVRMicrophone;->releaseWebRtcEffects()V

    goto :goto_0
.end method

.method private releaseWebRtcEffects()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->webRtcEffects:Lorg/webrtc/voiceengine/WebRtcAudioEffects;

    if-eqz v0, :cond_0

    .line 327
    const-string v0, "OVRPlatform-OVRMicrophone"

    const-string v1, "Disabling audio effects"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->webRtcEffects:Lorg/webrtc/voiceengine/WebRtcAudioEffects;

    invoke-virtual {v0}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->release()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->webRtcEffects:Lorg/webrtc/voiceengine/WebRtcAudioEffects;

    .line 331
    :cond_0
    return-void
.end method

.method private setState(Lcom/oculus/platform/OVRMicrophone$State;)V
    .locals 3

    .prologue
    .line 379
    iput-object p1, p0, Lcom/oculus/platform/OVRMicrophone;->state:Lcom/oculus/platform/OVRMicrophone$State;

    .line 380
    const-string v0, "OVRPlatform-OVRMicrophone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oculus/platform/OVRMicrophone$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void
.end method

.method private signalNativeObjectDestroy()V
    .locals 4

    .prologue
    .line 384
    iget-object v1, p0, Lcom/oculus/platform/OVRMicrophone;->shutdownLock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/oculus/platform/OVRMicrophone;->nativeMicrophoneImpl:J

    .line 386
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-virtual {p0}, Lcom/oculus/platform/OVRMicrophone;->stop()V

    .line 388
    return-void

    .line 386
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startRecording()I
    .locals 10

    .prologue
    const-wide v8, 0x412e848000000000L    # 1000000.0

    .line 243
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oculus/platform/OVRMicrophone;->enableEffects(I)V

    .line 246
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 248
    :try_start_0
    iget-object v2, p0, Lcom/oculus/platform/OVRMicrophone;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 254
    const-string v4, "OVRPlatform-OVRMicrophone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start - recorder.startRecording "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    long-to-double v0, v0

    div-double/2addr v0, v8

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 257
    const-string v0, "OVRPlatform-OVRMicrophone"

    const-string v1, "AudioRecord.startRecording() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget v0, Lcom/oculus/platform/OVRMicrophone;->MIC_START_EXCLUSIVE_FAILURE:I

    .line 272
    :goto_0
    return v0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    const-string v1, "OVRPlatform-OVRMicrophone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ILLEGAL STATE ON START "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget v0, Lcom/oculus/platform/OVRMicrophone;->MIC_START_MISSING_PERMISSION:I

    goto :goto_0

    .line 261
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 263
    :try_start_1
    new-instance v2, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;

    const-string v3, "OVRMicRecord"

    invoke-direct {v2, p0, v3}, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;-><init>(Lcom/oculus/platform/OVRMicrophone;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oculus/platform/OVRMicrophone;->audioThread:Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;

    .line 264
    iget-object v2, p0, Lcom/oculus/platform/OVRMicrophone;->audioThread:Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;

    invoke-virtual {v2}, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 270
    const-string v4, "OVRPlatform-OVRMicrophone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start - AudioThread startup "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    long-to-double v0, v0

    div-double/2addr v0, v8

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget v0, Lcom/oculus/platform/OVRMicrophone;->MIC_START_SUCCESS:I

    goto :goto_0

    .line 265
    :catch_1
    move-exception v0

    .line 266
    const-string v1, "OVRPlatform-OVRMicrophone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ILLEGAL STATE ON THREAD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget v0, Lcom/oculus/platform/OVRMicrophone;->MIC_START_ALREADY_STARTED:I

    goto :goto_0
.end method

.method private stopRecording()V
    .locals 4

    .prologue
    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    invoke-direct {p0}, Lcom/oculus/platform/OVRMicrophone;->releaseEffects()V

    .line 284
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    const-string v1, "OVRPlatform-OVRMicrophone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecord.stop failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public native nativeOnAudioData(JI)V
.end method

.method public native nativeSetDirectByteBuffer(JLjava/nio/ByteBuffer;)V
.end method

.method public start()I
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    iget-object v3, p0, Lcom/oculus/platform/OVRMicrophone;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 165
    :try_start_0
    const-string v2, "OVRPlatform-OVRMicrophone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start - current state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/platform/OVRMicrophone;->state:Lcom/oculus/platform/OVRMicrophone$State;

    invoke-virtual {v5}, Lcom/oculus/platform/OVRMicrophone$State;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v2, Lcom/oculus/platform/OVRMicrophone$1;->$SwitchMap$com$oculus$platform$OVRMicrophone$State:[I

    iget-object v4, p0, Lcom/oculus/platform/OVRMicrophone;->state:Lcom/oculus/platform/OVRMicrophone$State;

    invoke-virtual {v4}, Lcom/oculus/platform/OVRMicrophone$State;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 199
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    sget v0, Lcom/oculus/platform/OVRMicrophone;->MIC_START_SUCCESS:I

    :goto_1
    return v0

    .line 168
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/oculus/platform/OVRMicrophone;->recorder:Landroid/media/AudioRecord;

    if-nez v2, :cond_0

    move v2, v0

    :goto_2
    invoke-direct {p0, v2}, Lcom/oculus/platform/OVRMicrophone;->assertTrue(Z)V

    .line 170
    invoke-direct {p0}, Lcom/oculus/platform/OVRMicrophone;->initializeRecorder()Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    sget v0, Lcom/oculus/platform/OVRMicrophone;->MIC_START_MISSING_PERMISSION:I

    monitor-exit v3

    goto :goto_1

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move v2, v1

    .line 168
    goto :goto_2

    .line 176
    :cond_1
    :try_start_2
    sget-object v2, Lcom/oculus/platform/OVRMicrophone$State;->Initialized:Lcom/oculus/platform/OVRMicrophone$State;

    invoke-direct {p0, v2}, Lcom/oculus/platform/OVRMicrophone;->setState(Lcom/oculus/platform/OVRMicrophone$State;)V

    .line 182
    :pswitch_1
    iget-object v2, p0, Lcom/oculus/platform/OVRMicrophone;->audioThread:Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;

    if-nez v2, :cond_2

    :goto_3
    invoke-direct {p0, v0}, Lcom/oculus/platform/OVRMicrophone;->assertTrue(Z)V

    .line 184
    invoke-direct {p0}, Lcom/oculus/platform/OVRMicrophone;->startRecording()I

    move-result v0

    .line 185
    sget v1, Lcom/oculus/platform/OVRMicrophone;->MIC_START_SUCCESS:I

    if-eq v0, v1, :cond_3

    .line 186
    monitor-exit v3

    goto :goto_1

    :cond_2
    move v0, v1

    .line 182
    goto :goto_3

    .line 188
    :cond_3
    sget-object v0, Lcom/oculus/platform/OVRMicrophone$State;->Recording:Lcom/oculus/platform/OVRMicrophone$State;

    invoke-direct {p0, v0}, Lcom/oculus/platform/OVRMicrophone;->setState(Lcom/oculus/platform/OVRMicrophone$State;)V

    goto :goto_0

    .line 191
    :pswitch_2
    sget v0, Lcom/oculus/platform/OVRMicrophone;->MIC_START_ALREADY_STARTED:I

    monitor-exit v3

    goto :goto_1

    .line 196
    :pswitch_3
    sget-object v0, Lcom/oculus/platform/OVRMicrophone$State;->Recording:Lcom/oculus/platform/OVRMicrophone$State;

    invoke-direct {p0, v0}, Lcom/oculus/platform/OVRMicrophone;->setState(Lcom/oculus/platform/OVRMicrophone$State;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 205
    iget-object v1, p0, Lcom/oculus/platform/OVRMicrophone;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    const-string v0, "OVRPlatform-OVRMicrophone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping microphone recording.  Current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/platform/OVRMicrophone;->state:Lcom/oculus/platform/OVRMicrophone$State;

    invoke-virtual {v3}, Lcom/oculus/platform/OVRMicrophone$State;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone;->state:Lcom/oculus/platform/OVRMicrophone$State;

    sget-object v2, Lcom/oculus/platform/OVRMicrophone$State;->Recording:Lcom/oculus/platform/OVRMicrophone$State;

    if-ne v0, v2, :cond_0

    .line 208
    sget-object v0, Lcom/oculus/platform/OVRMicrophone$State;->Stopping:Lcom/oculus/platform/OVRMicrophone$State;

    invoke-direct {p0, v0}, Lcom/oculus/platform/OVRMicrophone;->setState(Lcom/oculus/platform/OVRMicrophone$State;)V

    .line 210
    :cond_0
    monitor-exit v1

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
