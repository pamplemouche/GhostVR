.class public Lcom/oculus/vrshell/PanelStream;
.super Ljava/lang/Object;
.source "PanelStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/PanelStream$VideoCodecThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PanelStream"

.field private static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final mNumRingMessages:I = 0x40


# instance fields
.field private mCsd:[B

.field private volatile mExitThreads:Z

.field private mInfo:Landroid/media/MediaCodec$BufferInfo;

.field private volatile mMessageCount:I

.field private final mRingMessages:[[B

.field private mSurface:Landroid/view/Surface;

.field private mVideoCodec:Landroid/media/MediaCodec;

.field private mVideoCodecThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(III)V
    .locals 5

    const-string v0, "video/avc"

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/oculus/vrshell/PanelStream;->mVideoCodecThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    .line 25
    iput-boolean v2, p0, Lcom/oculus/vrshell/PanelStream;->mExitThreads:Z

    .line 27
    iput-object v1, p0, Lcom/oculus/vrshell/PanelStream;->mSurface:Landroid/view/Surface;

    .line 28
    iput-object v1, p0, Lcom/oculus/vrshell/PanelStream;->mVideoCodec:Landroid/media/MediaCodec;

    .line 29
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v3, p0, Lcom/oculus/vrshell/PanelStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 30
    iput-object v1, p0, Lcom/oculus/vrshell/PanelStream;->mCsd:[B

    const/16 v3, 0x40

    .line 35
    new-array v3, v3, [[B

    iput-object v3, p0, Lcom/oculus/vrshell/PanelStream;->mRingMessages:[[B

    .line 36
    iput v2, p0, Lcom/oculus/vrshell/PanelStream;->mMessageCount:I

    const-string v3, "PanelStream"

    const-string v4, "PanelStream()"

    .line 39
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v4, "Video createEncoderByType()"

    .line 44
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lcom/oculus/vrshell/PanelStream;->mVideoCodec:Landroid/media/MediaCodec;

    .line 46
    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "bitrate"

    .line 47
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "frame-rate"

    const/16 p3, 0x1e

    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "profile"

    const/4 p3, 0x1

    .line 49
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "level"

    const/16 v0, 0x800

    .line 50
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "color-format"

    const v0, 0x7f000789

    .line 51
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "latency"

    .line 56
    invoke-virtual {p1, p2, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "i-frame-interval"

    const/4 v0, 0x3

    .line 60
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "configure()"

    .line 61
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p2, p0, Lcom/oculus/vrshell/PanelStream;->mVideoCodec:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v1, v1, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const-string p1, "createInputSurface()"

    .line 63
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/oculus/vrshell/PanelStream;->mVideoCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/vrshell/PanelStream;->mSurface:Landroid/view/Surface;

    const-string p1, "start()"

    .line 65
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p1, p0, Lcom/oculus/vrshell/PanelStream;->mVideoCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 68
    new-instance p1, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;

    invoke-direct {p1, p0}, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;-><init>(Lcom/oculus/vrshell/PanelStream;)V

    iput-object p1, p0, Lcom/oculus/vrshell/PanelStream;->mVideoCodecThread:Ljava/lang/Thread;

    .line 69
    iget-object p1, p0, Lcom/oculus/vrshell/PanelStream;->mVideoCodecThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VideoCodec init failed "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrshell/PanelStream;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/oculus/vrshell/PanelStream;->mExitThreads:Z

    return p0
.end method

.method static synthetic access$100(Lcom/oculus/vrshell/PanelStream;)Landroid/media/MediaCodec$BufferInfo;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oculus/vrshell/PanelStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/vrshell/PanelStream;)Landroid/media/MediaCodec;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oculus/vrshell/PanelStream;->mVideoCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/vrshell/PanelStream;)[B
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oculus/vrshell/PanelStream;->mCsd:[B

    return-object p0
.end method

.method static synthetic access$302(Lcom/oculus/vrshell/PanelStream;[B)[B
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/oculus/vrshell/PanelStream;->mCsd:[B

    return-object p1
.end method

.method static synthetic access$400(Lcom/oculus/vrshell/PanelStream;)[[B
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oculus/vrshell/PanelStream;->mRingMessages:[[B

    return-object p0
.end method

.method static synthetic access$500(Lcom/oculus/vrshell/PanelStream;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/oculus/vrshell/PanelStream;->mMessageCount:I

    return p0
.end method

.method static synthetic access$508(Lcom/oculus/vrshell/PanelStream;)I
    .locals 2

    .line 19
    iget v0, p0, Lcom/oculus/vrshell/PanelStream;->mMessageCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oculus/vrshell/PanelStream;->mMessageCount:I

    return v0
.end method


# virtual methods
.method public finish()V
    .locals 4

    const-string v0, "PanelStream"

    const-string v1, "finish()"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 156
    iput-boolean v1, p0, Lcom/oculus/vrshell/PanelStream;->mExitThreads:Z

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrshell/PanelStream;->mVideoCodecThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Join failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/oculus/vrshell/PanelStream;->mVideoCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 165
    iget-object v1, p0, Lcom/oculus/vrshell/PanelStream;->mVideoCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 166
    iput-object v2, p0, Lcom/oculus/vrshell/PanelStream;->mVideoCodec:Landroid/media/MediaCodec;

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/oculus/vrshell/PanelStream;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 170
    iput-object v2, p0, Lcom/oculus/vrshell/PanelStream;->mSurface:Landroid/view/Surface;

    :cond_1
    const-string v1, "finish() completed"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getMessage(I)[B
    .locals 2

    if-ltz p1, :cond_0

    .line 84
    iget v0, p0, Lcom/oculus/vrshell/PanelStream;->mMessageCount:I

    if-lt p1, v0, :cond_1

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requested message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oculus/vrshell/PanelStream;->mMessageCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PanelStream"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget p1, p0, Lcom/oculus/vrshell/PanelStream;->mMessageCount:I

    if-lez p1, :cond_2

    .line 87
    iget p1, p0, Lcom/oculus/vrshell/PanelStream;->mMessageCount:I

    add-int/lit8 p1, p1, -0x1

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/oculus/vrshell/PanelStream;->mRingMessages:[[B

    rem-int/lit8 p1, p1, 0x40

    aget-object p1, v0, p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMessageCount()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/oculus/vrshell/PanelStream;->mMessageCount:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/oculus/vrshell/PanelStream;->mSurface:Landroid/view/Surface;

    return-object v0
.end method
