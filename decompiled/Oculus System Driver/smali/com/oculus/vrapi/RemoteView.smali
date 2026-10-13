.class public Lcom/oculus/vrapi/RemoteView;
.super Ljava/lang/Object;
.source "RemoteView.java"


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "RemoteView"


# instance fields
.field private mCsdSize:I

.field private mFrameCount:I

.field private mInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mMessage:[B

.field private mStarted:Z

.field private mSurface:Landroid/view/Surface;

.field private mVideoCodec:Landroid/media/MediaCodec;


# direct methods
.method constructor <init>(III)V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/oculus/vrapi/RemoteView;->mSurface:Landroid/view/Surface;

    .line 33
    iput-object v0, p0, Lcom/oculus/vrapi/RemoteView;->mVideoCodec:Landroid/media/MediaCodec;

    .line 34
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, p0, Lcom/oculus/vrapi/RemoteView;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    const v1, 0xf4240

    .line 35
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/oculus/vrapi/RemoteView;->mMessage:[B

    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/oculus/vrapi/RemoteView;->mFrameCount:I

    .line 37
    iput-boolean v1, p0, Lcom/oculus/vrapi/RemoteView;->mStarted:Z

    .line 38
    iput v1, p0, Lcom/oculus/vrapi/RemoteView;->mCsdSize:I

    const-string v2, "RemoteView"

    const-string v3, "RemoteView()"

    .line 41
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v2, "RemoteView"

    const-string v3, "createEncoderByType()"

    .line 44
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "video/avc"

    .line 45
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/vrapi/RemoteView;->mVideoCodec:Landroid/media/MediaCodec;

    const-string v2, "video/avc"

    .line 46
    invoke-static {v2, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "bitrate"

    .line 47
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "frame-rate"

    const/16 p3, 0x3c

    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "color-format"

    const p3, 0x7f000789

    .line 49
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "latency"

    .line 53
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "i-frame-interval"

    const/4 p3, 0x1

    .line 60
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "RemoteView"

    const-string v1, "configure()"

    .line 61
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p2, p0, Lcom/oculus/vrapi/RemoteView;->mVideoCodec:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v0, v0, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const-string p1, "RemoteView"

    const-string p2, "createInputSurface()"

    .line 63
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/oculus/vrapi/RemoteView;->mVideoCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/vrapi/RemoteView;->mSurface:Landroid/view/Surface;

    const-string p1, "RemoteView"

    const-string p2, "start()"

    .line 65
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p1, p0, Lcom/oculus/vrapi/RemoteView;->mVideoCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "RemoteView"

    .line 68
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaCodec init failed "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private putInt(II)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteView;->mMessage:[B

    add-int/lit8 v1, p1, 0x0

    shr-int/lit8 v2, p2, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 81
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteView;->mMessage:[B

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 82
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteView;->mMessage:[B

    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 83
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteView;->mMessage:[B

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    const-string v0, "RemoteView"

    const-string v1, "finish()"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteView;->mVideoCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteView;->mVideoCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 128
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteView;->mVideoCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 129
    iput-object v1, p0, Lcom/oculus/vrapi/RemoteView;->mVideoCodec:Landroid/media/MediaCodec;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 133
    iput-object v1, p0, Lcom/oculus/vrapi/RemoteView;->mSurface:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method public getMessageBuffer()[B
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteView;->mMessage:[B

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public process()I
    .locals 10

    .line 89
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteView;->mVideoCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/oculus/vrapi/RemoteView;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/32 v2, 0x1312d00

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x2

    const/16 v3, 0x10

    if-ne v0, v2, :cond_1

    .line 94
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteView;->mVideoCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "RemoteView"

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Output format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "csd-0"

    .line 98
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v4, "csd-1"

    .line 99
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 100
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/oculus/vrapi/RemoteView;->mCsdSize:I

    .line 101
    iget-object v4, p0, Lcom/oculus/vrapi/RemoteView;->mMessage:[B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v4, v3, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 102
    iget-object v4, p0, Lcom/oculus/vrapi/RemoteView;->mMessage:[B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v0, v4, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return v1

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/oculus/vrapi/RemoteView;->mVideoCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 107
    iget v2, p0, Lcom/oculus/vrapi/RemoteView;->mFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oculus/vrapi/RemoteView;->mFrameCount:I

    .line 108
    iget-object v2, p0, Lcom/oculus/vrapi/RemoteView;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v4, p0, Lcom/oculus/vrapi/RemoteView;->mCsdSize:I

    add-int/2addr v2, v4

    .line 109
    iget-object v4, p0, Lcom/oculus/vrapi/RemoteView;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Lcom/oculus/vrapi/RemoteView;->putInt(II)V

    const/4 v4, 0x4

    .line 110
    iget-object v6, p0, Lcom/oculus/vrapi/RemoteView;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v6, v6

    invoke-direct {p0, v4, v6}, Lcom/oculus/vrapi/RemoteView;->putInt(II)V

    const/16 v4, 0x8

    .line 111
    iget-object v6, p0, Lcom/oculus/vrapi/RemoteView;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-int v6, v6

    invoke-direct {p0, v4, v6}, Lcom/oculus/vrapi/RemoteView;->putInt(II)V

    const/16 v4, 0xc

    .line 112
    invoke-direct {p0, v4, v2}, Lcom/oculus/vrapi/RemoteView;->putInt(II)V

    .line 113
    iget-object v4, p0, Lcom/oculus/vrapi/RemoteView;->mMessage:[B

    iget v6, p0, Lcom/oculus/vrapi/RemoteView;->mCsdSize:I

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/oculus/vrapi/RemoteView;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v4, v6, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 116
    iput v5, p0, Lcom/oculus/vrapi/RemoteView;->mCsdSize:I

    .line 118
    iget-object v1, p0, Lcom/oculus/vrapi/RemoteView;->mVideoCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    add-int/2addr v2, v3

    return v2
.end method
