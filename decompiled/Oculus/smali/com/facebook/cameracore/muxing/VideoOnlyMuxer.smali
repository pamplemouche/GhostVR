.class public Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;
.super Ljava/lang/Object;
.source "VideoOnlyMuxer.java"

# interfaces
.implements Lcom/facebook/cameracore/muxing/Muxer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private mMediaMuxer:Landroid/media/MediaMuxer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mVideoDataWritten:Z

.field private volatile mVideoTrackAdded:Z

.field private mVideoTrackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 24
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 25
    iput-boolean v1, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mVideoDataWritten:Z

    .line 26
    return-void
.end method

.method public setAudioMediaFormat(Landroid/media/MediaFormat;)V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "VideoOnlyMuxer does not accept an audio format."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOrientationHint(I)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 46
    :cond_0
    return-void
.end method

.method public setVideoMediaFormat(Landroid/media/MediaFormat;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mVideoTrackIndex:I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mVideoTrackAdded:Z

    .line 39
    :cond_0
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
    .line 50
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 53
    :cond_0
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

    .line 73
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    .line 74
    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mVideoTrackAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mVideoDataWritten:Z

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x1

    .line 76
    iget-object v2, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->stop()V

    .line 77
    iget-object v2, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    .line 80
    :goto_0
    iput-boolean v1, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mVideoDataWritten:Z

    .line 81
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 82
    iput v1, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mVideoTrackIndex:I

    .line 83
    return v0

    :cond_1
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
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "VideoOnlyMuxer does not have audio to write."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeVideoSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mVideoTrackIndex:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;->mVideoDataWritten:Z

    .line 68
    :cond_0
    return-void
.end method
