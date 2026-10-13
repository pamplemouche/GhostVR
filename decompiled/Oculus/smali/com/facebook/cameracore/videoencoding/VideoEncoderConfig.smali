.class public Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;
.super Ljava/lang/Object;
.source "VideoEncoderConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;
    }
.end annotation


# instance fields
.field public final bitRate:I

.field public final frameRate:I

.field public final height:I

.field public final iFrameIntervalS:I

.field public final profile:Ljava/lang/String;

.field public final width:I


# direct methods
.method private constructor <init>(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;)V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->access$100(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->width:I

    .line 32
    invoke-static {p1}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->access$200(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->height:I

    .line 33
    invoke-static {p1}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->access$300(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->frameRate:I

    .line 34
    invoke-static {p1}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->access$400(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->profile:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->access$500(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->iFrameIntervalS:I

    .line 37
    invoke-static {p1}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->access$600(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    iget v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->frameRate:I

    int-to-float v0, v0

    iget v1, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->width:I

    iget v2, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->height:I

    const v3, 0x989680

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/cameracore/util/VideoUtil;->getKushGaugeBitrateEstimate(FIII)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->bitRate:I

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->access$600(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->bitRate:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;-><init>(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;-><init>(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    if-ne p0, p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    instance-of v2, p1, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    if-nez v2, :cond_2

    move v0, v1

    .line 121
    goto :goto_0

    .line 124
    :cond_2
    check-cast p1, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    .line 126
    iget v2, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->width:I

    iget v3, p1, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->width:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->height:I

    iget v3, p1, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->height:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->bitRate:I

    iget v3, p1, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->bitRate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->frameRate:I

    iget v3, p1, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->frameRate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->iFrameIntervalS:I

    iget v3, p1, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->iFrameIntervalS:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->profile:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->profile:Ljava/lang/String;

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->width:I

    .line 137
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->height:I

    add-int/2addr v0, v1

    .line 138
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->bitRate:I

    add-int/2addr v0, v1

    .line 139
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->frameRate:I

    add-int/2addr v0, v1

    .line 140
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->iFrameIntervalS:I

    add-int/2addr v0, v1

    .line 141
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;->profile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    return v0
.end method
