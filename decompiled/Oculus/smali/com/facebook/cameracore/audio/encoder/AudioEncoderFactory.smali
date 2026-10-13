.class public final Lcom/facebook/cameracore/audio/encoder/AudioEncoderFactory;
.super Ljava/lang/Object;
.source "AudioEncoderFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioEncoder(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;Landroid/os/Handler;)Lcom/facebook/cameracore/audio/encoder/AudioEncoder;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;-><init>(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;Landroid/os/Handler;)V

    return-object v0
.end method
