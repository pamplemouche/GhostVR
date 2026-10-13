.class Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;
.super Ljava/lang/Object;
.source "PlatformMuxerImpl.java"

# interfaces
.implements Lcom/facebook/cameracore/muxing/Muxer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private volatile mAudioDataWritten:Z

.field private volatile mAudioTrackAdded:Z

.field private mAudioTrackIndex:I

.field private mMediaMuxer:Landroid/media/MediaMuxer;

.field private volatile mVideoDataWritten:Z

.field private volatile mVideoTrackAdded:Z

.field private mVideoTrackIndex:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isDataWritten()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-boolean v1, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mAudioTrackAdded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mAudioDataWritten:Z

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mVideoTrackAdded:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mVideoDataWritten:Z

    if-eqz v1, :cond_0

    .line 99
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 33
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 34
    iput-boolean v1, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mAudioDataWritten:Z

    .line 35
    iput-boolean v1, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mVideoDataWritten:Z

    .line 36
    return-void
.end method

.method public setAudioMediaFormat(Landroid/media/MediaFormat;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mAudioTrackIndex:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mAudioTrackAdded:Z

    .line 42
    return-void
.end method

.method public setOrientationHint(I)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 53
    return-void
.end method

.method public setVideoMediaFormat(Landroid/media/MediaFormat;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mVideoTrackIndex:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mVideoTrackAdded:Z

    .line 48
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 72
    return-void
.end method

.method public stop()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->isDataWritten()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 80
    iget-object v2, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->stop()V

    .line 81
    iget-object v2, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    .line 84
    :goto_0
    iput-boolean v1, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mAudioDataWritten:Z

    .line 85
    iput-boolean v1, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mVideoDataWritten:Z

    .line 86
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 87
    iput v1, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mAudioTrackIndex:I

    .line 88
    iput v1, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mVideoTrackIndex:I

    .line 89
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public writeAudioSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mAudioTrackIndex:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mAudioDataWritten:Z

    .line 60
    return-void
.end method

.method public writeVideoSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mVideoTrackIndex:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;->mVideoDataWritten:Z

    .line 67
    return-void
.end method
