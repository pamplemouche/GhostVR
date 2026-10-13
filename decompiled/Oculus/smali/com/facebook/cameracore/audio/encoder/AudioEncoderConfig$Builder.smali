.class public Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;
.super Ljava/lang/Object;
.source "AudioEncoderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBitRate:I

.field private mBufferSize:I

.field private mChannelCount:I

.field private mPcmEncoding:I

.field private mSampleRate:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const v0, 0xfa00

    iput v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->mBitRate:I

    .line 37
    const v0, 0xac44

    iput v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->mSampleRate:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->mChannelCount:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->mBufferSize:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->mPcmEncoding:I

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$1;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->mBitRate:I

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->mSampleRate:I

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->mChannelCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->mBufferSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->mPcmEncoding:I

    return v0
.end method


# virtual methods
.method public build()Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;-><init>(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$1;)V

    return-object v0
.end method

.method public setBufferSize(I)Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->mBufferSize:I

    .line 61
    return-object p0
.end method

.method public setPCMEncoding(I)Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->mPcmEncoding:I

    .line 66
    return-object p0
.end method

.method public setSampleRate(I)Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->mSampleRate:I

    .line 51
    return-object p0
.end method
