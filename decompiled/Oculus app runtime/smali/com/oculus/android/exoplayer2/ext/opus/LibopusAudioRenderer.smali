.class public final Lcom/oculus/android/exoplayer2/ext/opus/LibopusAudioRenderer;
.super Lcom/oculus/android/exoplayer2/audio/SimpleDecoderAudioRenderer;
.source "LibopusAudioRenderer.java"


# static fields
.field private static final INITIAL_INPUT_BUFFER_SIZE:I = 0x1680

.field private static final NUM_BUFFERS:I = 0x10


# instance fields
.field private decoder:Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 39
    new-array v0, v0, [Lcom/oculus/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/oculus/android/exoplayer2/ext/opus/LibopusAudioRenderer;-><init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/oculus/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;Z[Lcom/oculus/android/exoplayer2/audio/AudioProcessor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;",
            "Lcom/oculus/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;Z[",
            "Lcom/oculus/android/exoplayer2/audio/AudioProcessor;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 69
    invoke-direct/range {v0 .. v6}, Lcom/oculus/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;Lcom/oculus/android/exoplayer2/audio/AudioCapabilities;Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;Z[Lcom/oculus/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/oculus/android/exoplayer2/audio/AudioProcessor;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/oculus/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createDecoder(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/oculus/android/exoplayer2/decoder/SimpleDecoder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/audio/AudioDecoderException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/oculus/android/exoplayer2/ext/opus/LibopusAudioRenderer;->createDecoder(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    move-result-object p1

    return-object p1
.end method

.method protected createDecoder(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;
        }
    .end annotation

    .line 91
    new-instance v6, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    iget-object v4, p1, Lcom/oculus/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    const/16 v1, 0x10

    const/16 v2, 0x10

    const/16 v3, 0x1680

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;-><init>(IIILjava/util/List;Lcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;)V

    iput-object v6, p0, Lcom/oculus/android/exoplayer2/ext/opus/LibopusAudioRenderer;->decoder:Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    .line 93
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/ext/opus/LibopusAudioRenderer;->decoder:Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    return-object p1
.end method

.method protected getOutputFormat()Lcom/oculus/android/exoplayer2/Format;
    .locals 13

    .line 98
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/ext/opus/LibopusAudioRenderer;->decoder:Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    .line 99
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->getChannelCount()I

    move-result v6

    iget-object v0, p0, Lcom/oculus/android/exoplayer2/ext/opus/LibopusAudioRenderer;->decoder:Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->getSampleRate()I

    move-result v7

    const/4 v1, 0x0

    const-string v2, "audio/raw"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 98
    invoke-static/range {v1 .. v12}, Lcom/oculus/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/oculus/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method protected supportsFormatInternal(Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;Lcom/oculus/android/exoplayer2/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;",
            "Lcom/oculus/android/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/oculus/android/exoplayer2/ext/opus/OpusLibrary;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/opus"

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 79
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/ext/opus/LibopusAudioRenderer;->supportsOutputEncoding(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 81
    :cond_1
    iget-object p2, p2, Lcom/oculus/android/exoplayer2/Format;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    invoke-static {p1, p2}, Lcom/oculus/android/exoplayer2/ext/opus/LibopusAudioRenderer;->supportsFormatDrm(Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;Lcom/oculus/android/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x4

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
