.class public abstract Lcom/oculus/video/renderer/OpusAudioRenderer;
.super Lcom/oculus/android/exoplayer2/BaseRenderer;
.source "OpusAudioRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;
    }
.end annotation


# static fields
.field private static final INITIAL_INPUT_BUFFER_SIZE:I = 0x2580

.field private static final NUM_BUFFERS:I = 0x10


# instance fields
.field public final decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

.field private final eventDispatcher:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private final mFormat:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/oculus/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private mOpusAudioProcessor:Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;

.field private final mOutputBufferRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLandroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 277
    invoke-direct {p0, v0}, Lcom/oculus/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 265
    new-instance v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    .line 270
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->mOutputBufferRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 271
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->mFormat:Ljava/util/concurrent/atomic/AtomicReference;

    .line 278
    new-instance v0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;

    invoke-direct {v0, p0, p1}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;-><init>(Lcom/oculus/video/renderer/OpusAudioRenderer;Z)V

    iput-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->mOpusAudioProcessor:Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;

    .line 279
    new-instance p1, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {p1, p2, p3}, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;)V

    iput-object p1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->eventDispatcher:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/video/renderer/OpusAudioRenderer;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->mOutputBufferRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/video/renderer/OpusAudioRenderer;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->mFormat:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/video/renderer/OpusAudioRenderer;)I
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->getIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/oculus/video/renderer/OpusAudioRenderer;)I
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->getIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/oculus/video/renderer/OpusAudioRenderer;)Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->eventDispatcher:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oculus/video/renderer/OpusAudioRenderer;)I
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->getIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/oculus/video/renderer/OpusAudioRenderer;Lcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcom/oculus/video/renderer/OpusAudioRenderer;->readSource(Lcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/oculus/video/renderer/OpusAudioRenderer;Lcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcom/oculus/video/renderer/OpusAudioRenderer;->readSource(Lcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p0

    return p0
.end method


# virtual methods
.method public isEnded()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->mOpusAudioProcessor:Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->isEnded()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->mFormat:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->mOutputBufferRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDisabled()V
    .locals 3

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->mOpusAudioProcessor:Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->disable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-super {p0}, Lcom/oculus/android/exoplayer2/BaseRenderer;->onDisabled()V

    .line 329
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 330
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->eventDispatcher:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v0

    .line 328
    invoke-super {p0}, Lcom/oculus/android/exoplayer2/BaseRenderer;->onDisabled()V

    .line 329
    iget-object v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 330
    iget-object v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->eventDispatcher:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onDiscontinuity(J)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->mOpusAudioProcessor:Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->flush()V

    .line 363
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->mOpusAudioProcessor:Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->setPositionUs(J)V

    return-void
.end method

.method protected onEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 308
    iget-object p1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 309
    iget-object p1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->eventDispatcher:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, v0}, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;)V

    .line 310
    iget-object p1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->mOpusAudioProcessor:Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;

    invoke-virtual {p1}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->enable()V

    return-void
.end method

.method protected abstract onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected abstract onOutputStreamEnded()V
.end method

.method protected onPositionReset(JZ)V
    .locals 0

    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/oculus/video/renderer/OpusAudioRenderer;->onDiscontinuity(J)V

    return-void
.end method

.method protected onStarted()V
    .locals 0

    return-void
.end method

.method protected onStopped()V
    .locals 0

    return-void
.end method

.method public render(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 347
    iget-object p3, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->mOpusAudioProcessor:Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;

    invoke-virtual {p3}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->isEnded()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object p3, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->mOpusAudioProcessor:Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;

    invoke-virtual {p3}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->maybeThrowLastException()V

    .line 352
    iget-object p3, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->mOpusAudioProcessor:Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;

    invoke-virtual {p3, p1, p2}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->setPositionUs(J)V

    .line 353
    iget-object p1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer;->mOpusAudioProcessor:Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;

    invoke-virtual {p1}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->consume()V

    return-void
.end method

.method protected abstract renderOutputBuffer(Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public supportsFormat(Lcom/oculus/android/exoplayer2/Format;)I
    .locals 1

    .line 368
    invoke-static {}, Lcom/oculus/android/exoplayer2/ext/opus/OpusLibrary;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "audio/opus"

    .line 369
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
