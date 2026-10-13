.class public final Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;
.super Lcom/oculus/android/exoplayer2/audio/SimpleDecoderAudioRenderer;
.source "FfmpegAudioRenderer.java"


# static fields
.field private static final INITIAL_INPUT_BUFFER_SIZE:I = 0x1680

.field private static final NUM_BUFFERS:I = 0x10


# instance fields
.field private decoder:Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;

.field private final enableFloatOutput:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 51
    new-array v0, v0, [Lcom/oculus/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;-><init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/oculus/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;Lcom/oculus/android/exoplayer2/audio/AudioSink;Z)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 77
    invoke-direct/range {v0 .. v5}, Lcom/oculus/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;ZLcom/oculus/android/exoplayer2/audio/AudioSink;)V

    .line 78
    iput-boolean p4, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->enableFloatOutput:Z

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/oculus/android/exoplayer2/audio/AudioProcessor;)V
    .locals 2

    .line 62
    new-instance v0, Lcom/oculus/android/exoplayer2/audio/DefaultAudioSink;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p3}, Lcom/oculus/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/oculus/android/exoplayer2/audio/AudioCapabilities;[Lcom/oculus/android/exoplayer2/audio/AudioProcessor;)V

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;-><init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;Lcom/oculus/android/exoplayer2/audio/AudioSink;Z)V

    return-void
.end method

.method private isOutputSupported(Lcom/oculus/android/exoplayer2/Format;)Z
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->shouldUseFloatOutput(Lcom/oculus/android/exoplayer2/Format;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->supportsOutputEncoding(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private shouldUseFloatOutput(Lcom/oculus/android/exoplayer2/Format;)Z
    .locals 7

    .line 123
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->enableFloatOutput:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->supportsOutputEncoding(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    iget-object v2, p1, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0xb269698

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    const v5, 0xb26d66f

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "audio/raw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const-string v4, "audio/ac3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    :goto_0
    if-eqz v3, :cond_5

    if-eq v3, v6, :cond_4

    return v6

    :cond_4
    return v1

    .line 129
    :cond_5
    iget v2, p1, Lcom/oculus/android/exoplayer2/Format;->pcmEncoding:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_6

    iget v2, p1, Lcom/oculus/android/exoplayer2/Format;->pcmEncoding:I

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_6

    iget p1, p1, Lcom/oculus/android/exoplayer2/Format;->pcmEncoding:I

    if-ne p1, v0, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    :goto_1
    return v1
.end method


# virtual methods
.method protected bridge synthetic createDecoder(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/oculus/android/exoplayer2/decoder/SimpleDecoder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/audio/AudioDecoderException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->createDecoder(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;

    move-result-object p1

    return-object p1
.end method

.method protected createDecoder(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;
        }
    .end annotation

    .line 104
    new-instance p2, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;

    iget-object v4, p1, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v5, p1, Lcom/oculus/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 105
    invoke-direct {p0, p1}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->shouldUseFloatOutput(Lcom/oculus/android/exoplayer2/Format;)Z

    move-result v6

    const/16 v1, 0x10

    const/16 v2, 0x10

    const/16 v3, 0x1680

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;-><init>(IIILjava/lang/String;Ljava/util/List;Z)V

    iput-object p2, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->decoder:Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;

    .line 106
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->decoder:Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;

    return-object p1
.end method

.method public getOutputFormat()Lcom/oculus/android/exoplayer2/Format;
    .locals 13

    .line 111
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->decoder:Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->getChannelCount()I

    move-result v6

    .line 112
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->decoder:Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->getSampleRate()I

    move-result v7

    .line 113
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->decoder:Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->getEncoding()I

    move-result v8

    const/4 v1, 0x0

    const-string v2, "audio/raw"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 114
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

    .line 84
    iget-object v0, p2, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegLibrary;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegLibrary;->supportsFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->isOutputSupported(Lcom/oculus/android/exoplayer2/Format;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    iget-object p2, p2, Lcom/oculus/android/exoplayer2/Format;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    invoke-static {p1, p2}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->supportsFormatDrm(Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;Lcom/oculus/android/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x4

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/16 v0, 0x8

    return v0
.end method
