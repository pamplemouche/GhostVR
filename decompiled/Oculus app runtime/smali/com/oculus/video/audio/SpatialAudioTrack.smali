.class public Lcom/oculus/video/audio/SpatialAudioTrack;
.super Ljava/lang/Object;
.source "SpatialAudioTrack.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final BYTES_PER_FRAME:I = 0x2

.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L

.field private static final DISCONTINUITY_THRESHOLD_US:I = 0x30d40

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field public static final RESULT_BUFFER_CONSUMED:I = 0x2

.field public static final RESULT_POSITION_DISCONTINUITY:I = 0x1

.field private static final START_IN_SYNC:I = 0x1

.field private static final START_NEED_SYNC:I = 0x2

.field private static final START_NOT_SET:I


# instance fields
.field private final mAudioSpatializer:Lcom/oculus/video/audio/AudioSpatializer;

.field private mBufferBytesRemaining:I

.field private mChannelCount:I

.field private mCurrentBufferOffset:I

.field private mInitialized:Z

.field private mLastPlayheadSampleTimeUs:J

.field private mNextPlayheadOffsetIndex:I

.field private mPlayheadOffsetCount:I

.field private final mPlayheadOffsets:[J

.field private mSampleRate:I

.field private mSmoothedPlayheadOffsetUs:J

.field private mStartMediaTimeState:I

.field private mStartMediaTimeUs:J

.field private mSubmittedPcmBytes:J

.field private final mTrack:I


# direct methods
.method public constructor <init>(Lcom/oculus/video/audio/AudioSpatializer;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/oculus/video/audio/SpatialAudioTrack;-><init>(Lcom/oculus/video/audio/AudioSpatializer;I)V

    return-void
.end method

.method public constructor <init>(Lcom/oculus/video/audio/AudioSpatializer;I)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 52
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mPlayheadOffsets:[J

    .line 73
    iput-object p1, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mAudioSpatializer:Lcom/oculus/video/audio/AudioSpatializer;

    .line 74
    iput p2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mTrack:I

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mInitialized:Z

    .line 76
    iput p1, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeState:I

    return-void
.end method

.method private bytesPerSample()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mChannelCount:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private framesToDurationUs(J)J
    .locals 3

    .line 282
    iget v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mSampleRate:I

    if-eqz v0, :cond_0

    const-wide/32 v1, 0xf4240

    mul-long p1, p1, v1

    int-to-long v0, v0

    div-long/2addr p1, v0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method private getPlaybackHeadPositionUs()J
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mAudioSpatializer:Lcom/oculus/video/audio/AudioSpatializer;

    invoke-interface {v0}, Lcom/oculus/video/audio/AudioSpatializer;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private hasCurrentPositionUs()Z
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcom/oculus/video/audio/SpatialAudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private pcmBytesToFrames(J)J
    .locals 2

    .line 278
    iget v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mChannelCount:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oculus/video/audio/SpatialAudioTrack;->bytesPerSample()I

    move-result v0

    int-to-long v0, v0

    div-long/2addr p1, v0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method private resetSyncParams()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 188
    iput-wide v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mSmoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    .line 189
    iput v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mPlayheadOffsetCount:I

    .line 190
    iput v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mNextPlayheadOffsetIndex:I

    .line 191
    iput-wide v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mLastPlayheadSampleTimeUs:J

    return-void
.end method

.method private syncPlayheadSmoothingParams()V
    .locals 11

    .line 166
    invoke-direct {p0}, Lcom/oculus/video/audio/SpatialAudioTrack;->getPlaybackHeadPositionUs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 172
    iget-wide v6, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mLastPlayheadSampleTimeUs:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7530

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2

    .line 174
    iget-object v6, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mPlayheadOffsets:[J

    iget v7, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mNextPlayheadOffsetIndex:I

    sub-long/2addr v0, v4

    aput-wide v0, v6, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v0, 0xa

    .line 175
    rem-int/2addr v7, v0

    iput v7, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mNextPlayheadOffsetIndex:I

    .line 176
    iget v1, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mPlayheadOffsetCount:I

    if-ge v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 177
    iput v1, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mPlayheadOffsetCount:I

    .line 179
    :cond_1
    iput-wide v4, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mLastPlayheadSampleTimeUs:J

    .line 180
    iput-wide v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mSmoothedPlayheadOffsetUs:J

    const/4 v0, 0x0

    .line 181
    :goto_0
    iget v1, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mPlayheadOffsetCount:I

    if-ge v0, v1, :cond_2

    .line 182
    iget-wide v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mSmoothedPlayheadOffsetUs:J

    iget-object v4, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mPlayheadOffsets:[J

    aget-wide v5, v4, v0

    int-to-long v7, v1

    div-long/2addr v5, v7

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mSmoothedPlayheadOffsetUs:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public configure(Landroid/media/MediaFormat;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/video/audio/AudioSpatializer$InitializationException;
        }
    .end annotation

    const-string v0, "sample-rate"

    .line 85
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mSampleRate:I

    const-string v0, "channel-count"

    .line 86
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mChannelCount:I

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 88
    iget-object p2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mAudioSpatializer:Lcom/oculus/video/audio/AudioSpatializer;

    invoke-interface {p2, p1, v0}, Lcom/oculus/video/audio/AudioSpatializer;->configure(Landroid/media/MediaFormat;Z)V

    .line 90
    :cond_0
    iput-boolean v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mInitialized:Z

    return-void
.end method

.method public getAudioSpatializer()Lcom/oculus/video/audio/AudioSpatializer;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mAudioSpatializer:Lcom/oculus/video/audio/AudioSpatializer;

    return-object v0
.end method

.method public getCurrentPositionUs()J
    .locals 4

    .line 138
    invoke-direct {p0}, Lcom/oculus/video/audio/SpatialAudioTrack;->hasCurrentPositionUs()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mAudioSpatializer:Lcom/oculus/video/audio/AudioSpatializer;

    invoke-interface {v0}, Lcom/oculus/video/audio/AudioSpatializer;->getPlayState()Lcom/oculus/video/audio/AudioSpatializer$PlayState;

    move-result-object v0

    sget-object v1, Lcom/oculus/video/audio/AudioSpatializer$PlayState;->PLAYING:Lcom/oculus/video/audio/AudioSpatializer$PlayState;

    if-ne v0, v1, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/oculus/video/audio/SpatialAudioTrack;->syncPlayheadSmoothingParams()V

    .line 147
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 149
    iget v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mPlayheadOffsetCount:I

    if-nez v2, :cond_2

    .line 151
    invoke-direct {p0}, Lcom/oculus/video/audio/SpatialAudioTrack;->getPlaybackHeadPositionUs()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeUs:J

    goto :goto_0

    .line 156
    :cond_2
    iget-wide v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mSmoothedPlayheadOffsetUs:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeUs:J

    :goto_0
    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getPlayState()Lcom/oculus/video/audio/AudioSpatializer$PlayState;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mAudioSpatializer:Lcom/oculus/video/audio/AudioSpatializer;

    invoke-interface {v0}, Lcom/oculus/video/audio/AudioSpatializer;->getPlayState()Lcom/oculus/video/audio/AudioSpatializer$PlayState;

    move-result-object v0

    return-object v0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;IIJ)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/video/audio/AudioSpatializer$WriteException;,
            Lcom/oculus/video/audio/AudioSpatializer$UnsupportedAudioChannelLayoutException;
        }
    .end annotation

    .line 226
    iget v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mBufferBytesRemaining:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 229
    iput p3, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mBufferBytesRemaining:I

    .line 230
    iput p2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mCurrentBufferOffset:I

    .line 231
    iget p2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeState:I

    if-nez p2, :cond_0

    const-wide/16 p2, 0x0

    .line 232
    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeUs:J

    .line 233
    iput v1, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeState:I

    goto :goto_0

    .line 236
    :cond_0
    iget-wide p2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeUs:J

    iget-wide v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mSubmittedPcmBytes:J

    .line 237
    invoke-direct {p0, v2, v3}, Lcom/oculus/video/audio/SpatialAudioTrack;->pcmBytesToFrames(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/oculus/video/audio/SpatialAudioTrack;->framesToDurationUs(J)J

    move-result-wide v2

    add-long/2addr p2, v2

    .line 238
    iget v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeState:I

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    sub-long v3, p2, p4

    .line 239
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v5, 0x30d40

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 241
    iput v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeState:I

    .line 243
    :cond_1
    iget v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeState:I

    if-ne v0, v2, :cond_2

    .line 246
    iget-wide v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeUs:J

    sub-long p2, p4, p2

    add-long/2addr v2, p2

    iput-wide v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeUs:J

    .line 247
    iput v1, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeState:I

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 253
    :goto_1
    iget p2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mCurrentBufferOffset:I

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 254
    iget-object v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mAudioSpatializer:Lcom/oculus/video/audio/AudioSpatializer;

    iget v6, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mTrack:I

    iget v7, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mChannelCount:I

    move-object v3, p1

    move-wide v4, p4

    invoke-interface/range {v2 .. v7}, Lcom/oculus/video/audio/AudioSpatializer;->processBuffer(Ljava/nio/ByteBuffer;JII)I

    move-result p2

    .line 256
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-direct {p0}, Lcom/oculus/video/audio/SpatialAudioTrack;->bytesPerSample()I

    move-result p3

    rem-int/2addr p1, p3

    if-eqz p1, :cond_3

    .line 260
    invoke-virtual {p0}, Lcom/oculus/video/audio/SpatialAudioTrack;->reset()V

    goto :goto_2

    .line 262
    :cond_3
    iget p1, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mBufferBytesRemaining:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mBufferBytesRemaining:I

    .line 263
    iget-wide p3, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mSubmittedPcmBytes:J

    int-to-long v2, p2

    add-long/2addr p3, v2

    iput-wide p3, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mSubmittedPcmBytes:J

    .line 264
    iget p1, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mCurrentBufferOffset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mCurrentBufferOffset:I

    .line 267
    :goto_2
    iget p1, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mBufferBytesRemaining:I

    if-nez p1, :cond_4

    or-int/lit8 v1, v1, 0x2

    :cond_4
    return v1
.end method

.method public handleDiscontinuity()V
    .locals 2

    .line 217
    iget v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 218
    iput v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeState:I

    :cond_0
    return-void
.end method

.method public handleEndOfStream()V
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/oculus/video/audio/SpatialAudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mAudioSpatializer:Lcom/oculus/video/audio/AudioSpatializer;

    invoke-interface {v0}, Lcom/oculus/video/audio/AudioSpatializer;->handleEndOfStream()V

    :cond_0
    return-void
.end method

.method public hasPendingData()Z
    .locals 5

    .line 120
    invoke-virtual {p0}, Lcom/oculus/video/audio/SpatialAudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mSubmittedPcmBytes:J

    .line 121
    invoke-direct {p0, v0, v1}, Lcom/oculus/video/audio/SpatialAudioTrack;->pcmBytesToFrames(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mAudioSpatializer:Lcom/oculus/video/audio/AudioSpatializer;

    invoke-interface {v2}, Lcom/oculus/video/audio/AudioSpatializer;->getPlaybackHeadPosition()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mAudioSpatializer:Lcom/oculus/video/audio/AudioSpatializer;

    invoke-interface {v0}, Lcom/oculus/video/audio/AudioSpatializer;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/oculus/video/audio/SpatialAudioTrack;->resetSyncParams()V

    .line 113
    iget-object v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mAudioSpatializer:Lcom/oculus/video/audio/AudioSpatializer;

    invoke-interface {v0}, Lcom/oculus/video/audio/AudioSpatializer;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mAudioSpatializer:Lcom/oculus/video/audio/AudioSpatializer;

    invoke-interface {v0}, Lcom/oculus/video/audio/AudioSpatializer;->play()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mAudioSpatializer:Lcom/oculus/video/audio/AudioSpatializer;

    invoke-interface {v0}, Lcom/oculus/video/audio/AudioSpatializer;->release()V

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mInitialized:Z

    return-void
.end method

.method public reset()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 199
    iput-wide v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mSubmittedPcmBytes:J

    const/4 v2, 0x0

    .line 200
    iput v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mBufferBytesRemaining:I

    .line 201
    iput v2, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeState:I

    .line 202
    iput-wide v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mStartMediaTimeUs:J

    .line 203
    invoke-direct {p0}, Lcom/oculus/video/audio/SpatialAudioTrack;->resetSyncParams()V

    .line 204
    iget-object v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mAudioSpatializer:Lcom/oculus/video/audio/AudioSpatializer;

    invoke-interface {v0}, Lcom/oculus/video/audio/AudioSpatializer;->reset()V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/oculus/video/audio/SpatialAudioTrack;->mAudioSpatializer:Lcom/oculus/video/audio/AudioSpatializer;

    invoke-interface {v0, p1}, Lcom/oculus/video/audio/AudioSpatializer;->setVolume(F)V

    return-void
.end method
