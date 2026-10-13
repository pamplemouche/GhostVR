.class public Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;
.super Ljava/lang/Object;
.source "VideoRecordingTrackConfig.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

.field public final mVideoSize:Lcom/facebook/cameracore/common/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/cameracore/common/Size;ILcom/facebook/cameracore/config/CameraCoreConfig;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p2, :cond_0

    if-ne p2, v3, :cond_3

    .line 26
    :cond_0
    new-instance v0, Lcom/facebook/cameracore/common/Size;

    invoke-virtual {p1}, Lcom/facebook/cameracore/common/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/cameracore/common/Size;->getWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/cameracore/common/Size;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;->mVideoSize:Lcom/facebook/cameracore/common/Size;

    .line 34
    :goto_0
    iget-object v0, p0, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;->mVideoSize:Lcom/facebook/cameracore/common/Size;

    invoke-virtual {v0}, Lcom/facebook/cameracore/common/Size;->getWidth()I

    move-result v0

    rem-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;->mVideoSize:Lcom/facebook/cameracore/common/Size;

    invoke-virtual {v0}, Lcom/facebook/cameracore/common/Size;->getHeight()I

    move-result v0

    rem-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 35
    :cond_1
    sget-object v1, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v2, "The input size {%dx%d} is not a multiple of 16"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;->mVideoSize:Lcom/facebook/cameracore/common/Size;

    .line 40
    invoke-virtual {v5}, Lcom/facebook/cameracore/common/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;->mVideoSize:Lcom/facebook/cameracore/common/Size;

    .line 41
    invoke-virtual {v5}, Lcom/facebook/cameracore/common/Size;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 37
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_2
    invoke-static {}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->newBuilder()Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;->mVideoSize:Lcom/facebook/cameracore/common/Size;

    .line 46
    invoke-virtual {v1}, Lcom/facebook/cameracore/common/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->setWidth(I)Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;->mVideoSize:Lcom/facebook/cameracore/common/Size;

    .line 47
    invoke-virtual {v1}, Lcom/facebook/cameracore/common/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->setHeight(I)Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {p3}, Lcom/facebook/cameracore/config/CameraCoreConfig;->getEncondingProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->setProfile(Ljava/lang/String;)Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->build()Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    .line 50
    return-void

    .line 28
    :cond_3
    iput-object p1, p0, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;->mVideoSize:Lcom/facebook/cameracore/common/Size;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 67
    :cond_3
    check-cast p1, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;

    .line 68
    iget-object v2, p0, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;->mVideoSize:Lcom/facebook/cameracore/common/Size;

    iget-object v3, p1, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;->mVideoSize:Lcom/facebook/cameracore/common/Size;

    invoke-virtual {v2, v3}, Lcom/facebook/cameracore/common/Size;->equals(Lcom/facebook/cameracore/common/Size;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    iget-object v3, p1, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    .line 69
    invoke-virtual {v2, v3}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;->mVideoSize:Lcom/facebook/cameracore/common/Size;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/cameracore/recording/video/VideoRecordingTrackConfig;->mVideoEncoderConfig:Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
