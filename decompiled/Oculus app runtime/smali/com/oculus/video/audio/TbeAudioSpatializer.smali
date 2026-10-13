.class public Lcom/oculus/video/audio/TbeAudioSpatializer;
.super Ljava/lang/Object;
.source "TbeAudioSpatializer.java"

# interfaces
.implements Lcom/oculus/video/audio/AudioSpatializer;


# static fields
.field private static final BYTES_PER_SAMPLE:I = 0x2

.field private static final ENGINE_BUFFER_SAMPLES_PER_CHANNEL:I = 0x3c0

.field private static final EPSILON:F = 1.0E-5f

.field private static final NUM_OUTPUT_CHANNELS:I = 0x2

.field private static final SPAT_QUEUE_SAMPLES_PER_CHANNEL:I = 0x2000

.field private static mUseAmbisonicRenderer:Z


# instance fields
.field private mAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

.field private mAudioSpatializerController:Lcom/oculus/video/audio/AudioSpatializerController;

.field private mGain:F

.field private mNativePtr:J

.field private mPlayState:Lcom/oculus/video/audio/AudioSpatializer$PlayState;

.field private mSampleRate:F

.field private final mTempBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/oculus/video/audio/AudioChannelLayout;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x14000

    .line 105
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mTempBuffer:Ljava/nio/ByteBuffer;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 108
    iput v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mGain:F

    .line 109
    sget-object v0, Lcom/oculus/video/audio/AudioSpatializer$PlayState;->UNKNOWN:Lcom/oculus/video/audio/AudioSpatializer$PlayState;

    iput-object v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mPlayState:Lcom/oculus/video/audio/AudioSpatializer$PlayState;

    .line 114
    iput-object p1, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 115
    invoke-static {}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    return-void
.end method

.method private declared-synchronized destroy()V
    .locals 5

    monitor-enter p0

    .line 398
    :try_start_0
    iget-wide v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 399
    iget-wide v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeDestroy(J)V

    .line 400
    iput-wide v2, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static enableAmbisonicRenderer()V
    .locals 1

    const/4 v0, 0x1

    .line 431
    sput-boolean v0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mUseAmbisonicRenderer:Z

    return-void
.end method

.method public static handlesAudioChannelLayout(Lcom/oculus/video/audio/AudioChannelLayout;)Z
    .locals 1

    .line 119
    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->MONO:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->STEREO:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_4:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_6:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_6_2:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_8:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_8_2:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_4:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_9:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_9_2:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_16:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_16_2:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_4_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->S5_1:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->S7_1:Lcom/oculus/video/audio/AudioChannelLayout;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private maybeResetAudioChannelLayout(Landroid/media/MediaFormat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/video/audio/AudioSpatializer$InitializationException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_4_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "channel-count"

    .line 156
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 158
    invoke-static {p1}, Lcom/oculus/video/audio/AudioChannelLayout;->getChannelLayoutForChannelCount(I)Lcom/oculus/video/audio/AudioChannelLayout;

    move-result-object v0

    .line 159
    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq v0, v1, :cond_1

    .line 160
    iput-object v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    iget v0, v0, Lcom/oculus/video/audio/AudioChannelLayout;->totalChannelCount:I

    if-ne v0, p1, :cond_3

    .line 166
    iget-object p1, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    invoke-static {p1}, Lcom/oculus/video/audio/TbeAudioSpatializer;->handlesAudioChannelLayout(Lcom/oculus/video/audio/AudioChannelLayout;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 167
    :cond_2
    new-instance p1, Lcom/oculus/video/audio/AudioSpatializer$InitializationException;

    const-string v0, "Unsupported channel layout"

    invoke-direct {p1, v0}, Lcom/oculus/video/audio/AudioSpatializer$InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_3
    new-instance p1, Lcom/oculus/video/audio/AudioSpatializer$InitializationException;

    const-string v0, "Channel layout not matching channel count"

    invoke-direct {p1, v0}, Lcom/oculus/video/audio/AudioSpatializer$InitializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native nativeConfigure(JFIIZZZLjava/lang/String;I)V
.end method

.method private static native nativeConvert6To4Channel(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;Ljava/lang/String;)I
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeEnableFocus(JZ)V
.end method

.method private static native nativeGetAudioMix(JLjava/nio/ByteBuffer;)I
.end method

.method private static native nativeGetBufferUnderrunCount(J)I
.end method

.method private static native nativeGetPlaybackHeadPosition(J)J
.end method

.method private static native nativeHandleEndOfStream(J)V
.end method

.method private static native nativeInitialize(J)Z
.end method

.method private static native nativeIsInitialized(J)Z
.end method

.method private static native nativePause(J)V
.end method

.method private static native nativePlay(J)V
.end method

.method private static native nativeReset(J)V
.end method

.method private static native nativeSetFocusProperties(JFF)V
.end method

.method private static native nativeSetFocusWidthDegrees(JF)V
.end method

.method private synchronized native nativeSetListenerOrientation(J[F)V
.end method

.method private static native nativeSetOffFocusLeveldB(JF)V
.end method

.method private static native nativeSetVolume(JF)V
.end method

.method private static native nativeWrite(JLjava/nio/ByteBuffer;IILjava/lang/String;)I
.end method

.method private static native nativeWriteTbe442(JLjava/nio/ByteBuffer;IIJI)I
.end method

.method private static native nativeWriteVirtualizer(JLjava/nio/ByteBuffer;II)I
.end method


# virtual methods
.method public declared-synchronized configure(Landroid/media/MediaFormat;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/video/audio/AudioSpatializer$InitializationException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 174
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/oculus/video/audio/TbeAudioSpatializer;->maybeResetAudioChannelLayout(Landroid/media/MediaFormat;)V

    const-string v2, "sample-rate"

    .line 176
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    .line 178
    iget v3, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mSampleRate:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3727c5ac    # 1.0E-5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/video/audio/TbeAudioSpatializer;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 183
    :cond_0
    :try_start_1
    iput v2, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mSampleRate:F

    const/4 v2, 0x0

    .line 186
    iget v3, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mSampleRate:F

    float-to-int v3, v3

    const/16 v4, 0xc

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 189
    div-int/lit8 v15, v2, 0x2

    .line 191
    iget-wide v6, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    const-string v2, "sample-rate"

    .line 193
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    int-to-float v8, v0

    const/16 v9, 0x2000

    const/16 v10, 0x3c0

    sget-boolean v12, Lcom/oculus/video/audio/TbeAudioSpatializer;->mUseAmbisonicRenderer:Z

    .line 198
    invoke-static {}, Lcom/oculus/video/Settings;->useAndroidPastPath()Z

    move-result v13

    iget-object v0, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    iget-object v14, v0, Lcom/oculus/video/audio/AudioChannelLayout;->key:Ljava/lang/String;

    move/from16 v11, p2

    .line 191
    invoke-static/range {v6 .. v15}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeConfigure(JFIIZZZLjava/lang/String;I)V

    .line 203
    iget-wide v2, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    invoke-static {v2, v3}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeInitialize(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    iget-wide v2, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    iget v0, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mGain:F

    invoke-static {v2, v3, v0}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeSetVolume(JF)V

    .line 209
    iget-object v0, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioSpatializerController:Lcom/oculus/video/audio/AudioSpatializerController;

    if-eqz v0, :cond_1

    .line 210
    iget-wide v2, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    iget-object v0, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioSpatializerController:Lcom/oculus/video/audio/AudioSpatializerController;

    invoke-interface {v0}, Lcom/oculus/video/audio/AudioSpatializerController;->getFocusEnabled()Z

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeEnableFocus(JZ)V

    .line 211
    iget-wide v2, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    iget-object v0, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioSpatializerController:Lcom/oculus/video/audio/AudioSpatializerController;

    invoke-interface {v0}, Lcom/oculus/video/audio/AudioSpatializerController;->getOffFocusLeveldB()F

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeSetOffFocusLeveldB(JF)V

    .line 212
    iget-wide v2, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    iget-object v0, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioSpatializerController:Lcom/oculus/video/audio/AudioSpatializerController;

    invoke-interface {v0}, Lcom/oculus/video/audio/AudioSpatializerController;->getFocusWidthDegrees()F

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeSetFocusWidthDegrees(JF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :cond_1
    monitor-exit p0

    return-void

    .line 204
    :cond_2
    :try_start_2
    new-instance v0, Lcom/oculus/video/audio/AudioSpatializer$InitializationException;

    invoke-direct {v0}, Lcom/oculus/video/audio/AudioSpatializer$InitializationException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableFocus(Z)V
    .locals 2

    monitor-enter p0

    .line 337
    :try_start_0
    iget-wide v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeEnableFocus(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 426
    invoke-direct {p0}, Lcom/oculus/video/audio/TbeAudioSpatializer;->destroy()V

    .line 427
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public declared-synchronized getAudioMix(Ljava/nio/ByteBuffer;)I
    .locals 2

    monitor-enter p0

    .line 321
    :try_start_0
    iget-wide v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeGetAudioMix(JLjava/nio/ByteBuffer;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAudioMixBufferSize()I
    .locals 1

    const/16 v0, 0xf00

    return v0
.end method

.method public getController()Lcom/oculus/video/audio/AudioSpatializerController;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioSpatializerController:Lcom/oculus/video/audio/AudioSpatializerController;

    return-object v0
.end method

.method public getPlayState()Lcom/oculus/video/audio/AudioSpatializer$PlayState;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mPlayState:Lcom/oculus/video/audio/AudioSpatializer$PlayState;

    return-object v0
.end method

.method public declared-synchronized getPlaybackHeadPosition()J
    .locals 2

    monitor-enter p0

    .line 326
    :try_start_0
    iget-wide v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeGetPlaybackHeadPosition(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleEndOfStream()V
    .locals 2

    monitor-enter p0

    .line 357
    :try_start_0
    iget-wide v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeHandleEndOfStream(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 2

    monitor-enter p0

    .line 218
    :try_start_0
    iget-wide v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeIsInitialized(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    .line 370
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/video/audio/TbeAudioSpatializer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mPlayState:Lcom/oculus/video/audio/AudioSpatializer$PlayState;

    sget-object v1, Lcom/oculus/video/audio/AudioSpatializer$PlayState;->PAUSED:Lcom/oculus/video/audio/AudioSpatializer$PlayState;

    if-eq v0, v1, :cond_0

    .line 371
    iget-wide v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativePause(J)V

    .line 372
    sget-object v0, Lcom/oculus/video/audio/AudioSpatializer$PlayState;->PAUSED:Lcom/oculus/video/audio/AudioSpatializer$PlayState;

    iput-object v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mPlayState:Lcom/oculus/video/audio/AudioSpatializer$PlayState;

    .line 374
    iget-wide v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeGetBufferUnderrunCount(J)I

    move-result v0

    .line 375
    iget-object v1, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioSpatializerController:Lcom/oculus/video/audio/AudioSpatializerController;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 376
    iget-object v1, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioSpatializerController:Lcom/oculus/video/audio/AudioSpatializerController;

    invoke-interface {v1, v0}, Lcom/oculus/video/audio/AudioSpatializerController;->onBufferUnderrun(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized play()V
    .locals 2

    monitor-enter p0

    .line 362
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/video/audio/TbeAudioSpatializer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mPlayState:Lcom/oculus/video/audio/AudioSpatializer$PlayState;

    sget-object v1, Lcom/oculus/video/audio/AudioSpatializer$PlayState;->PLAYING:Lcom/oculus/video/audio/AudioSpatializer$PlayState;

    if-eq v0, v1, :cond_0

    .line 363
    iget-wide v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativePlay(J)V

    .line 364
    sget-object v0, Lcom/oculus/video/audio/AudioSpatializer$PlayState;->PLAYING:Lcom/oculus/video/audio/AudioSpatializer$PlayState;

    iput-object v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mPlayState:Lcom/oculus/video/audio/AudioSpatializer$PlayState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized processBuffer(Ljava/nio/ByteBuffer;JII)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/video/audio/AudioSpatializer$UnsupportedAudioChannelLayoutException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p5

    monitor-enter p0

    .line 224
    :try_start_0
    iget-object v3, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    invoke-static {v3}, Lcom/oculus/video/audio/TbeAudioSpatializer;->handlesAudioChannelLayout(Lcom/oculus/video/audio/AudioChannelLayout;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 225
    iget-object v3, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioSpatializerController:Lcom/oculus/video/audio/AudioSpatializerController;

    if-eqz v3, :cond_1

    .line 226
    iget-object v3, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioSpatializerController:Lcom/oculus/video/audio/AudioSpatializerController;

    invoke-interface {v3}, Lcom/oculus/video/audio/AudioSpatializerController;->getHeadOrientationMatrix()[F

    move-result-object v3

    .line 227
    sget-object v4, Lcom/oculus/video/audio/TbeAudioSpatializer$1;->$SwitchMap$com$oculus$video$audio$AudioChannelLayout:[I

    iget-object v5, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    invoke-virtual {v5}, Lcom/oculus/video/audio/AudioChannelLayout;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 233
    aput v5, v3, v4

    const/4 v4, 0x7

    .line 234
    aput v5, v3, v4

    const/16 v4, 0xb

    .line 235
    aput v5, v3, v4

    .line 238
    :cond_0
    iget-wide v3, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    iget-object v5, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioSpatializerController:Lcom/oculus/video/audio/AudioSpatializerController;

    .line 240
    invoke-interface {v5}, Lcom/oculus/video/audio/AudioSpatializerController;->getHeadOrientationMatrix()[F

    move-result-object v5

    .line 238
    invoke-direct {p0, v3, v4, v5}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeSetListenerOrientation(J[F)V

    .line 242
    :cond_1
    sget-object v3, Lcom/oculus/video/audio/TbeAudioSpatializer$1;->$SwitchMap$com$oculus$video$audio$AudioChannelLayout:[I

    iget-object v4, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    invoke-virtual {v4}, Lcom/oculus/video/audio/AudioChannelLayout;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x6

    packed-switch v3, :pswitch_data_0

    .line 308
    iget-wide v2, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    goto/16 :goto_0

    :pswitch_0
    if-ne v2, v4, :cond_2

    .line 272
    iget-object v2, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 275
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 276
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget-object v5, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mTempBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    iget-object v6, v6, Lcom/oculus/video/audio/AudioChannelLayout;->key:Ljava/lang/String;

    .line 273
    invoke-static {v0, v2, v3, v5, v6}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeConvert6To4Channel(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;Ljava/lang/String;)I

    move-result v11

    .line 279
    iget-wide v7, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    iget-object v9, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mTempBuffer:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    move-wide/from16 v12, p2

    move/from16 v14, p4

    invoke-static/range {v7 .. v14}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeWriteTbe442(JLjava/nio/ByteBuffer;IIJI)I

    move-result v0

    .line 286
    div-int/lit8 v0, v0, 0x4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/lit8 v0, v0, 0x6

    monitor-exit p0

    return v0

    .line 288
    :cond_2
    :try_start_1
    iget-wide v2, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    .line 291
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 292
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    move-object/from16 v4, p1

    move-wide/from16 v7, p2

    move/from16 v9, p4

    .line 288
    invoke-static/range {v2 .. v9}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeWriteTbe442(JLjava/nio/ByteBuffer;IIJI)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :pswitch_1
    if-ne v2, v4, :cond_3

    .line 247
    :try_start_2
    iget-object v2, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 250
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 251
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget-object v5, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mTempBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    iget-object v6, v6, Lcom/oculus/video/audio/AudioChannelLayout;->key:Ljava/lang/String;

    .line 248
    invoke-static {v0, v2, v3, v5, v6}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeConvert6To4Channel(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;Ljava/lang/String;)I

    move-result v11

    .line 254
    iget-wide v7, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    iget-object v9, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mTempBuffer:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    iget-object v0, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    iget-object v12, v0, Lcom/oculus/video/audio/AudioChannelLayout;->key:Ljava/lang/String;

    invoke-static/range {v7 .. v12}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeWrite(JLjava/nio/ByteBuffer;IILjava/lang/String;)I

    move-result v0

    .line 260
    div-int/lit8 v0, v0, 0x4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    mul-int/lit8 v0, v0, 0x6

    monitor-exit p0

    return v0

    .line 262
    :cond_3
    :try_start_3
    iget-wide v2, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    .line 265
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 266
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iget-object v4, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    iget-object v7, v4, Lcom/oculus/video/audio/AudioChannelLayout;->key:Ljava/lang/String;

    move-object/from16 v4, p1

    .line 262
    invoke-static/range {v2 .. v7}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeWrite(JLjava/nio/ByteBuffer;IILjava/lang/String;)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    .line 301
    :pswitch_2
    :try_start_4
    iget-wide v2, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    .line 304
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 305
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 301
    invoke-static {v2, v3, v0, v4, v5}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeWriteVirtualizer(JLjava/nio/ByteBuffer;II)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v0

    .line 311
    :goto_0
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 312
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iget-object v4, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    iget-object v7, v4, Lcom/oculus/video/audio/AudioChannelLayout;->key:Ljava/lang/String;

    move-object/from16 v4, p1

    .line 308
    invoke-static/range {v2 .. v7}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeWrite(JLjava/nio/ByteBuffer;IILjava/lang/String;)I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v0

    .line 316
    :cond_4
    :try_start_6
    new-instance v0, Lcom/oculus/video/audio/AudioSpatializer$UnsupportedAudioChannelLayoutException;

    iget-object v2, v1, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    invoke-direct {v0, v2}, Lcom/oculus/video/audio/AudioSpatializer$UnsupportedAudioChannelLayoutException;-><init>(Lcom/oculus/video/audio/AudioChannelLayout;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .line 394
    invoke-direct {p0}, Lcom/oculus/video/audio/TbeAudioSpatializer;->destroy()V

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    .line 388
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/video/audio/TbeAudioSpatializer;->pause()V

    .line 389
    iget-wide v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeReset(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAudioSpatializerController(Lcom/oculus/video/audio/AudioSpatializerController;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mAudioSpatializerController:Lcom/oculus/video/audio/AudioSpatializerController;

    return-void
.end method

.method public declared-synchronized setFocusProperties(FF)V
    .locals 2

    monitor-enter p0

    .line 342
    :try_start_0
    iget-wide v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeSetFocusProperties(JFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFocusWidthDegrees(F)V
    .locals 2

    monitor-enter p0

    .line 352
    :try_start_0
    iget-wide v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeSetFocusWidthDegrees(JF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setOffFocusLeveldB(F)V
    .locals 2

    monitor-enter p0

    .line 347
    :try_start_0
    iget-wide v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeSetOffFocusLeveldB(JF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setVolume(F)V
    .locals 2

    monitor-enter p0

    .line 331
    :try_start_0
    iput p1, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mGain:F

    .line 332
    iget-wide v0, p0, Lcom/oculus/video/audio/TbeAudioSpatializer;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/oculus/video/audio/TbeAudioSpatializer;->nativeSetVolume(JF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public supportsFormat(Lcom/oculus/android/exoplayer2/Format;)Z
    .locals 0

    .line 413
    iget p1, p1, Lcom/oculus/android/exoplayer2/Format;->sampleRate:I

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    :sswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xac44 -> :sswitch_0
        0xbb80 -> :sswitch_0
        0x17700 -> :sswitch_0
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method
