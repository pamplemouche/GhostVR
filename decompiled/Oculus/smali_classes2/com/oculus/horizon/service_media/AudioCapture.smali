.class public Lcom/oculus/horizon/service_media/AudioCapture;
.super Ljava/lang/Object;
.source "AudioCapture.java"


# instance fields
.field private final mAudioBytesBuffer:[B

.field private final mAudioShortsBuffer:[S

.field private final mClock:Lcom/oculus/time/Clock;

.field private mCurrentTimestampMs:J

.field private final mLock:Ljava/lang/Object;

.field private final mNativeAudioRenderer:J

.field private final mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;J)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const v0, 0xbb80

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mAudioShortsBuffer:[S

    .line 22
    const v0, 0x17700

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mAudioBytesBuffer:[B

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mLock:Ljava/lang/Object;

    .line 25
    new-instance v0, Lcom/oculus/time/Clock;

    invoke-direct {v0}, Lcom/oculus/time/Clock;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mClock:Lcom/oculus/time/Clock;

    .line 29
    iput-object p1, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    .line 30
    iput-wide p2, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mNativeAudioRenderer:J

    .line 31
    return-void
.end method

.method private getBytesLengthFromDuration()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mClock:Lcom/oculus/time/Clock;

    invoke-virtual {v0}, Lcom/oculus/time/Clock;->now()J

    move-result-wide v0

    .line 82
    iget-wide v2, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mCurrentTimestampMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 83
    iput-wide v0, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mCurrentTimestampMs:J

    .line 84
    const/4 v0, -0x1

    .line 90
    :goto_0
    return v0

    .line 87
    :cond_0
    iget-wide v2, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mCurrentTimestampMs:J

    sub-long v2, v0, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 88
    iput-wide v0, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mCurrentTimestampMs:J

    .line 90
    const/4 v0, 0x2

    const-wide/32 v4, 0xbb80

    invoke-static {v2, v3, v0, v4, v5}, Lcom/facebook/cameracore/audio/common/AudioUtils;->getBytesLengthFromDurationMs(JIJ)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public captureAudio()Ljava/nio/ByteBuffer;
    .locals 10

    .prologue
    const v9, 0xbb80

    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 42
    iget-object v8, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 43
    :try_start_0
    iget-wide v2, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mNativeAudioRenderer:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 44
    monitor-exit v8

    .line 77
    :goto_0
    return-object v0

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mAudioShortsBuffer:[S

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([SS)V

    .line 49
    iget-object v1, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mAudioBytesBuffer:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 51
    iget-object v1, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    iget-wide v2, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mNativeAudioRenderer:J

    iget-object v4, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mAudioShortsBuffer:[S

    iget-object v5, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mAudioShortsBuffer:[S

    array-length v5, v5

    const v6, 0xbb80

    const/4 v7, 0x1

    .line 52
    invoke-virtual/range {v1 .. v7}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->captureAudioRendererRetrievePCM(J[SIII)I

    move-result v1

    .line 58
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/AudioCapture;->getBytesLengthFromDuration()I

    move-result v2

    .line 59
    if-ne v1, v9, :cond_1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 60
    div-int/lit8 v1, v2, 0x2

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mAudioShortsBuffer:[S

    array-length v2, v2

    if-gt v1, v2, :cond_2

    if-gez v1, :cond_3

    .line 65
    :cond_2
    monitor-exit v8

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 68
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mAudioBytesBuffer:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 69
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mAudioShortsBuffer:[S

    const/4 v3, 0x0

    .line 71
    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mAudioBytesBuffer:[B

    const/4 v2, 0x0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 76
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public handleAudio([SIIIJ)V
    .locals 11

    .prologue
    .line 34
    iget-object v10, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    iget-wide v1, p0, Lcom/oculus/horizon/service_media/AudioCapture;->mNativeAudioRenderer:J

    array-length v4, p1

    move-object v3, p1

    move v5, p3

    move v6, p2

    move v7, p4

    move-wide/from16 v8, p5

    invoke-virtual/range {v0 .. v9}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->capturedAudioRendererStorePCM(J[SIIIIJ)V

    .line 37
    monitor-exit v10

    .line 38
    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
