.class public Lcom/oculus/horizon/abuse_prevention/AudioCapture;
.super Ljava/lang/Object;
.source "AudioCapture.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/abuse_prevention/AudioCapture$AudioCaptureTask;,
        Lcom/oculus/horizon/abuse_prevention/AudioCapture$AudioRecording;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioBytesBuffer:[B

.field private mAudioRecording:Lcom/oculus/horizon/abuse_prevention/AudioCapture$AudioRecording;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mAudioShortsBuffer:[S

.field private final mLock:Ljava/lang/Object;

.field private mNativeAudioRenderer:J

.field private final mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 1
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const v0, 0xbb80

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mAudioShortsBuffer:[S

    .line 56
    const v0, 0x17700

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mAudioBytesBuffer:[B

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mLock:Ljava/lang/Object;

    .line 64
    invoke-static {p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginModule;->$ul_$xXXcom_oculus_horizon_platformplugin_PlatformPluginManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/abuse_prevention/AudioCapture;Lcom/oculus/horizon/abuse_prevention/AudioCapture$AudioCaptureTask;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->captureAudio(Lcom/oculus/horizon/abuse_prevention/AudioCapture$AudioCaptureTask;)V

    return-void
.end method

.method private captureAudio(Lcom/oculus/horizon/abuse_prevention/AudioCapture$AudioCaptureTask;)V
    .locals 10

    .prologue
    .line 127
    iget-object v8, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mAudioRecording:Lcom/oculus/horizon/abuse_prevention/AudioCapture$AudioRecording;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mNativeAudioRenderer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 129
    :cond_0
    monitor-exit v8

    .line 162
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v9, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mAudioRecording:Lcom/oculus/horizon/abuse_prevention/AudioCapture$AudioRecording;

    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mAudioShortsBuffer:[S

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([SS)V

    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mAudioBytesBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 138
    iget-object v1, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    iget-wide v2, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mNativeAudioRenderer:J

    iget-object v4, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mAudioShortsBuffer:[S

    iget-object v0, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mAudioShortsBuffer:[S

    array-length v5, v0

    iget v6, p1, Lcom/oculus/horizon/abuse_prevention/AudioCapture$AudioCaptureTask;->mFrequency:I

    iget v7, p1, Lcom/oculus/horizon/abuse_prevention/AudioCapture$AudioCaptureTask;->mChannels:I

    .line 139
    invoke-virtual/range {v1 .. v7}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->captureAudioRendererRetrievePCM(J[SIII)I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mAudioShortsBuffer:[S

    array-length v1, v1

    if-gt v0, v1, :cond_2

    if-gez v0, :cond_3

    .line 148
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 159
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-interface {v9, v0}, Lcom/oculus/horizon/abuse_prevention/AudioCapture$AudioRecording;->onAudioAvailable(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 151
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mAudioBytesBuffer:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 152
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mAudioShortsBuffer:[S

    const/4 v3, 0x0

    .line 154
    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 157
    iget-object v1, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mAudioBytesBuffer:[B

    const/4 v2, 0x0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public isRecording()Z
    .locals 2

    .prologue
    .line 101
    iget-object v1, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-boolean v0, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->mStarted:Z

    monitor-exit v1

    return v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
