.class public Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;
.super Ljava/lang/Object;
.source "DefaultMuxerWrapper.java"

# interfaces
.implements Lcom/facebook/cameracore/muxing/MuxerWrapper;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private final mAudioFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFixedRotationDegrees:I

.field private volatile mIsStarted:Z

.field private volatile mIsStopped:Z

.field private final mMuxer:Lcom/facebook/cameracore/muxing/Muxer;

.field private final mOutputFilePath:Ljava/lang/String;

.field private final mVideoFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/facebook/cameracore/common/MediaFormatProvider;Lcom/facebook/cameracore/common/MediaFormatProvider;)V
    .locals 1
    .param p2    # Lcom/facebook/cameracore/common/MediaFormatProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/cameracore/common/MediaFormatProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mFixedRotationDegrees:I

    .line 36
    if-eqz p2, :cond_0

    .line 37
    invoke-static {}, Lcom/facebook/cameracore/muxing/MuxerFactory;->getMuxer()Lcom/facebook/cameracore/muxing/Muxer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    .line 41
    :goto_0
    iput-object p1, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mOutputFilePath:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mAudioFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    .line 43
    iput-object p3, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mVideoFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    .line 44
    return-void

    .line 39
    :cond_0
    invoke-static {}, Lcom/facebook/cameracore/muxing/MuxerFactory;->getVideoOnlyMuxer()Lcom/facebook/cameracore/muxing/Muxer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    goto :goto_0
.end method

.method private declared-synchronized addTracksAndStartMuxer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mIsStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mIsStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 113
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mAudioFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mAudioFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    invoke-interface {v0}, Lcom/facebook/cameracore/common/MediaFormatProvider;->getOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mVideoFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mVideoFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    .line 114
    invoke-interface {v0}, Lcom/facebook/cameracore/common/MediaFormatProvider;->getOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    iget-object v1, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mOutputFilePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/cameracore/muxing/Muxer;->configure(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mAudioFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mAudioFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    invoke-interface {v0}, Lcom/facebook/cameracore/common/MediaFormatProvider;->getOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    iget-object v1, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mAudioFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    invoke-interface {v1}, Lcom/facebook/cameracore/common/MediaFormatProvider;->getOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/cameracore/muxing/Muxer;->setAudioMediaFormat(Landroid/media/MediaFormat;)V

    .line 124
    :cond_4
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mVideoFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mVideoFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    invoke-interface {v0}, Lcom/facebook/cameracore/common/MediaFormatProvider;->getOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 125
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    iget-object v1, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mVideoFormatProvider:Lcom/facebook/cameracore/common/MediaFormatProvider;

    invoke-interface {v1}, Lcom/facebook/cameracore/common/MediaFormatProvider;->getOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/cameracore/muxing/Muxer;->setVideoMediaFormat(Landroid/media/MediaFormat;)V

    .line 128
    :cond_5
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    iget v1, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mFixedRotationDegrees:I

    invoke-interface {v0, v1}, Lcom/facebook/cameracore/muxing/Muxer;->setOrientationHint(I)V

    .line 129
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    invoke-interface {v0}, Lcom/facebook/cameracore/muxing/Muxer;->start()V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static createAudioVideoMuxerWrapper(Ljava/lang/String;Lcom/facebook/cameracore/common/MediaFormatProvider;Lcom/facebook/cameracore/common/MediaFormatProvider;)Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;-><init>(Ljava/lang/String;Lcom/facebook/cameracore/common/MediaFormatProvider;Lcom/facebook/cameracore/common/MediaFormatProvider;)V

    return-object v0
.end method

.method public static createVideoOnlyMuxerWrapper(Ljava/lang/String;Lcom/facebook/cameracore/common/MediaFormatProvider;)Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;-><init>(Ljava/lang/String;Lcom/facebook/cameracore/common/MediaFormatProvider;Lcom/facebook/cameracore/common/MediaFormatProvider;)V

    return-object v0
.end method


# virtual methods
.method public setFixedRotationDegreesHint(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mFixedRotationDegrees:I

    .line 101
    return-void
.end method

.method public declared-synchronized stop()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mIsStarted:Z

    .line 66
    iget-boolean v1, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mIsStarted:Z

    if-eqz v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    invoke-interface {v0}, Lcom/facebook/cameracore/muxing/Muxer;->stop()Z

    move-result v0

    .line 69
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mIsStarted:Z

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mIsStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return v0

    .line 65
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
    .line 77
    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->addTracksAndStartMuxer()V

    .line 79
    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    invoke-interface {v0, p1, p2}, Lcom/facebook/cameracore/muxing/Muxer;->writeAudioSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0
.end method

.method public writeVideoSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->addTracksAndStartMuxer()V

    .line 91
    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/DefaultMuxerWrapper;->mMuxer:Lcom/facebook/cameracore/muxing/Muxer;

    invoke-interface {v0, p1, p2}, Lcom/facebook/cameracore/muxing/Muxer;->writeVideoSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0
.end method
