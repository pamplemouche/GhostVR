.class public Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;
.super Ljava/lang/Object;
.source "AudioEncoderConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;
    }
.end annotation


# instance fields
.field public final bitRate:I

.field public final bufferSize:I

.field public final channelCount:I

.field public final pcmEncoding:I

.field public final sampleRate:I


# direct methods
.method private constructor <init>(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->access$100(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;->bitRate:I

    .line 28
    invoke-static {p1}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->access$200(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;->sampleRate:I

    .line 29
    invoke-static {p1}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->access$300(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;->channelCount:I

    .line 30
    invoke-static {p1}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->access$400(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;->bufferSize:I

    .line 31
    invoke-static {p1}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->access$500(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;->pcmEncoding:I

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$1;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;-><init>(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;-><init>(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$1;)V

    return-object v0
.end method
