.class public Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;
.super Ljava/lang/Object;
.source "SegmentedMuxerWrapper.java"

# interfaces
.implements Lcom/facebook/cameracore/muxing/MuxerWrapper;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private final mAudioFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

.field private final mAudioMuxer:Lcom/facebook/cameracore/muxing/Muxer;

.field private final mCallback:Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;

.field private mCurrentOutputFileForVideo:Ljava/io/File;

.field private mFixedRotationDegrees:I

.field private volatile mIsAudioMuxerStarted:Z

.field private volatile mIsAudioMuxerStopped:Z

.field private volatile mIsFirstVideoSegmentBeingWritten:Z

.field private volatile mIsSegmentedVideoMuxerStarted:Z

.field private volatile mIsSegmentedVideoMuxerStoped:Z

.field private mOutputFileForAudio:Ljava/io/File;

.field private mSegmentCount:I

.field private mSegmentedVideoMuxer:Lcom/facebook/cameracore/muxing/Muxer;

.field private final mTempDir:Ljava/io/File;

.field private final mUseTwoPhaseIfPossible:Z

.field private final mVideoFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;


# direct methods
.method public constructor <init>(Lcom/facebook/cameracore/common/MediaFormatProvider;Lcom/facebook/cameracore/common/MediaFormatProvider;Landroid/content/Context;Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;Z)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mFixedRotationDegrees:I

    .line 56
    iput-object p1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mAudioFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    .line 57
    iput-object p2, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mVideoFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    .line 58
    if-nez p4, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SegmentedRecordingCallback should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-object p4, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mCallback:Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;

    .line 62
    iput-boolean p5, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mUseTwoPhaseIfPossible:Z

    .line 63
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "temp_videos"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mTempDir:Ljava/io/File;

    .line 64
    invoke-static {}, Lcom/facebook/cameracore/muxing/MuxerFactory;->getMuxer()Lcom/facebook/cameracore/muxing/Muxer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentedVideoMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    .line 65
    invoke-static {}, Lcom/facebook/cameracore/muxing/MuxerFactory;->getMuxer()Lcom/facebook/cameracore/muxing/Muxer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mAudioMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    .line 66
    return-void
.end method

.method private declared-synchronized addTracksAndStartAudioMuxer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsAudioMuxerStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsAudioMuxerStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mAudioFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    invoke-interface {v0}, Lcom/facebook/cameracore/common/MediaFormatProvider;->getOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mVideoFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    .line 159
    invoke-interface {v0}, Lcom/facebook/cameracore/common/MediaFormatProvider;->getOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "RECORDED_AUDIO_SEG_"

    const-string v1, ".mp4"

    invoke-direct {p0, v0, v1}, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mOutputFileForAudio:Ljava/io/File;

    .line 164
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mOutputFileForAudio:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mAudioMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    iget-object v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mOutputFileForAudio:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/cameracore/muxing/Muxer;->configure(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mAudioMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    iget-object v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mAudioFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    invoke-interface {v1}, Lcom/facebook/cameracore/common/MediaFormatProvider;->getOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/cameracore/muxing/Muxer;->setAudioMediaFormat(Landroid/media/MediaFormat;)V

    .line 167
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mAudioMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    invoke-interface {v0}, Lcom/facebook/cameracore/muxing/Muxer;->start()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsAudioMuxerStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addTracksAndStartSegmentedVideoMuxer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsSegmentedVideoMuxerStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsSegmentedVideoMuxerStoped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 177
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mAudioFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    invoke-interface {v0}, Lcom/facebook/cameracore/common/MediaFormatProvider;->getOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mVideoFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    .line 178
    invoke-interface {v0}, Lcom/facebook/cameracore/common/MediaFormatProvider;->getOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "RECORDED_VIDEO_SEG_"

    const-string v1, ".mp4"

    invoke-direct {p0, v0, v1}, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mCurrentOutputFileForVideo:Ljava/io/File;

    .line 183
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mCurrentOutputFileForVideo:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentedVideoMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    iget-object v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mCurrentOutputFileForVideo:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/cameracore/muxing/Muxer;->configure(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentedVideoMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    iget-object v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mVideoFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    invoke-interface {v1}, Lcom/facebook/cameracore/common/MediaFormatProvider;->getOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/cameracore/muxing/Muxer;->setVideoMediaFormat(Landroid/media/MediaFormat;)V

    .line 186
    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsFirstVideoSegmentBeingWritten:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mUseTwoPhaseIfPossible:Z

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentedVideoMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    iget-object v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mAudioFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    invoke-interface {v1}, Lcom/facebook/cameracore/common/MediaFormatProvider;->getOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/cameracore/muxing/Muxer;->setAudioMediaFormat(Landroid/media/MediaFormat;)V

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentedVideoMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    iget v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mFixedRotationDegrees:I

    invoke-interface {v0, v1}, Lcom/facebook/cameracore/muxing/Muxer;->setOrientationHint(I)V

    .line 190
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentedVideoMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    invoke-interface {v0}, Lcom/facebook/cameracore/muxing/Muxer;->start()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsSegmentedVideoMuxerStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mTempDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mTempDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mTempDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 204
    return-object v1
.end method

.method private declared-synchronized moveToNextSegment()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsSegmentedVideoMuxerStarted:Z

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentedVideoMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    invoke-interface {v0}, Lcom/facebook/cameracore/muxing/Muxer;->stop()Z

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsSegmentedVideoMuxerStarted:Z

    .line 138
    iget v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentCount:I

    .line 139
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mCallback:Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;

    iget-object v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mCurrentOutputFileForVideo:Ljava/io/File;

    iget-boolean v2, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsFirstVideoSegmentBeingWritten:Z

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;->onVideoSegmentAvailable(Ljava/io/File;ZZ)V

    .line 141
    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsFirstVideoSegmentBeingWritten:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/facebook/cameracore/muxing/MuxerFactory;->getMuxer()Lcom/facebook/cameracore/muxing/Muxer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentedVideoMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsFirstVideoSegmentBeingWritten:Z

    .line 150
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->addTracksAndStartSegmentedVideoMuxer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 148
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsFirstVideoSegmentBeingWritten:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public setFixedRotationDegreesHint(I)V
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mFixedRotationDegrees:I

    .line 132
    return-void
.end method

.method public declared-synchronized stop()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsAudioMuxerStarted:Z

    if-nez v2, :cond_2

    .line 71
    :goto_0
    iget-boolean v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsAudioMuxerStarted:Z

    if-eqz v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mAudioMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    invoke-interface {v0}, Lcom/facebook/cameracore/muxing/Muxer;->stop()Z

    move-result v0

    .line 73
    iget v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentCount:I

    .line 74
    iget-object v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mCallback:Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;

    iget-object v2, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mOutputFileForAudio:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;->onAudioFileAvailable(Ljava/io/File;)V

    .line 76
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsAudioMuxerStarted:Z

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsAudioMuxerStopped:Z

    .line 79
    iget-boolean v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsSegmentedVideoMuxerStarted:Z

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentedVideoMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    invoke-interface {v1}, Lcom/facebook/cameracore/muxing/Muxer;->stop()Z

    move-result v1

    and-int/2addr v0, v1

    .line 81
    iget v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentCount:I

    .line 82
    iget-object v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mCallback:Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;

    iget-object v2, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mCurrentOutputFileForVideo:Ljava/io/File;

    iget-boolean v3, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsFirstVideoSegmentBeingWritten:Z

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;->onVideoSegmentAvailable(Ljava/io/File;ZZ)V

    .line 85
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsSegmentedVideoMuxerStarted:Z

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsSegmentedVideoMuxerStoped:Z

    .line 87
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsFirstVideoSegmentBeingWritten:Z

    .line 88
    iget-object v1, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mCallback:Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;

    iget v2, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentCount:I

    invoke-interface {v1, v2}, Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;->onSegmentedRecordingFinished(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return v0

    :cond_2
    move v0, v1

    .line 70
    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeAudioSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsFirstVideoSegmentBeingWritten:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mUseTwoPhaseIfPossible:Z

    if-eqz v0, :cond_2

    .line 97
    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsSegmentedVideoMuxerStarted:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentedVideoMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    invoke-interface {v0, p1, p2}, Lcom/facebook/cameracore/muxing/Muxer;->writeAudioSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 100
    :cond_0
    monitor-exit p0

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsAudioMuxerStarted:Z

    if-nez v0, :cond_3

    .line 105
    invoke-direct {p0}, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->addTracksAndStartAudioMuxer()V

    .line 106
    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsAudioMuxerStarted:Z

    if-eqz v0, :cond_1

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mAudioMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    invoke-interface {v0, p1, p2}, Lcom/facebook/cameracore/muxing/Muxer;->writeAudioSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public writeVideoSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->moveToNextSegment()V

    .line 122
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mIsSegmentedVideoMuxerStarted:Z

    if-nez v0, :cond_1

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/SegmentedMuxerWrapper;->mSegmentedVideoMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    invoke-interface {v0, p1, p2}, Lcom/facebook/cameracore/muxing/Muxer;->writeVideoSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0
.end method
