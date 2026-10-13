.class public Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;
.super Ljava/lang/Object;
.source "VideoEncoderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBitRate:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFrameRate:I

.field private mHeight:I

.field private mIFrameIntervalS:I

.field private mProfile:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x1aa

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->mWidth:I

    .line 58
    iput v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->mHeight:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->mBitRate:Ljava/lang/Integer;

    .line 60
    const/16 v0, 0x1e

    iput v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->mFrameRate:I

    .line 61
    const/4 v0, 0x5

    iput v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->mIFrameIntervalS:I

    .line 62
    const-string v0, "baseline"

    iput-object v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->mProfile:Ljava/lang/String;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$1;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->mWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->mHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->mFrameRate:I

    return v0
.end method

.method static synthetic access$400(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->mProfile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->mIFrameIntervalS:I

    return v0
.end method

.method static synthetic access$600(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->mBitRate:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;-><init>(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$1;)V

    return-object v0
.end method

.method public setBitrate(Ljava/lang/Integer;)Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    iput-object p1, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->mBitRate:Ljava/lang/Integer;

    .line 90
    return-object p0
.end method

.method public setFrameRate(I)Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->mFrameRate:I

    .line 95
    return-object p0
.end method

.method public setHeight(I)Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->mHeight:I

    .line 73
    return-object p0
.end method

.method public setProfile(Ljava/lang/String;)Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->mProfile:Ljava/lang/String;

    .line 100
    return-object p0
.end method

.method public setWidth(I)Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig$Builder;->mWidth:I

    .line 68
    return-object p0
.end method
