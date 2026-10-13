.class Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;
.super Lcom/oculus/video/audio/OutputBufferConsumer;
.source "OpusAudioRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/renderer/OpusAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpusAudioProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/video/audio/OutputBufferConsumer<",
        "Lcom/oculus/android/exoplayer2/ExoPlaybackException;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mCurrentPositionUs:J

.field private mDecoder:Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

.field private final mFlagsOnlyBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final mFormatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

.field private mInputBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

.field private volatile mInputStreamEnded:Z

.field private volatile mOutputStreamEnded:Z

.field final synthetic this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;


# direct methods
.method constructor <init>(Lcom/oculus/video/renderer/OpusAudioRenderer;Z)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    const/4 p1, 0x1

    .line 46
    invoke-direct {p0, p2, p1}, Lcom/oculus/video/audio/OutputBufferConsumer;-><init>(ZZ)V

    .line 37
    invoke-static {}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->newFlagsOnlyInstance()Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mFlagsOnlyBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 38
    new-instance p1, Lcom/oculus/android/exoplayer2/FormatHolder;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/FormatHolder;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mFormatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

    const-wide/16 p1, 0x0

    .line 43
    iput-wide p1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mCurrentPositionUs:J

    return-void
.end method

.method private decodeToOutputBuffer()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 66
    iget-object v0, v1, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$100(Lcom/oculus/video/renderer/OpusAudioRenderer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, v1, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$100(Lcom/oculus/video/renderer/OpusAudioRenderer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->readFormat()Lcom/oculus/android/exoplayer2/Format;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 71
    :cond_0
    iget-object v0, v1, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$100(Lcom/oculus/video/renderer/OpusAudioRenderer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 76
    :cond_1
    iget-object v0, v1, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mDecoder:Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    if-nez v0, :cond_3

    .line 82
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 83
    iget-object v0, v1, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$100(Lcom/oculus/video/renderer/OpusAudioRenderer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/android/exoplayer2/Format;

    iget-object v10, v0, Lcom/oculus/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 84
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x1

    if-lt v0, v12, :cond_2

    .line 90
    :try_start_0
    new-instance v0, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    const/16 v7, 0x10

    const/16 v8, 0x10

    const/16 v9, 0x2580

    const/4 v11, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;-><init>(IIILjava/util/List;Lcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;)V

    iput-object v0, v1, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mDecoder:Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long v15, v6, v4

    .line 100
    iget-object v0, v1, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$400(Lcom/oculus/video/renderer/OpusAudioRenderer;)Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v13

    const-class v0, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sub-long v17, v15, v2

    invoke-virtual/range {v13 .. v18}, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 101
    iget-object v0, v1, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    iget-object v0, v0, Lcom/oculus/video/renderer/OpusAudioRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/2addr v2, v12

    iput v2, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    iget-object v2, v1, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v2}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$300(Lcom/oculus/video/renderer/OpusAudioRenderer;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 85
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Missing initialization data"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    .line 87
    invoke-static {v2}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$200(Lcom/oculus/video/renderer/OpusAudioRenderer;)I

    move-result v2

    .line 85
    invoke-static {v0, v2}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 106
    :cond_3
    :goto_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->drainOutputBuffer()V

    .line 107
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->feedInputBuffer()Z

    move-result v0
    :try_end_1
    .catch Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_4

    goto :goto_1

    .line 112
    :cond_4
    iget-object v0, v1, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    iget-object v0, v0, Lcom/oculus/video/renderer/OpusAudioRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    return-void

    :catch_1
    move-exception v0

    .line 110
    iget-object v2, v1, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v2}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$500(Lcom/oculus/video/renderer/OpusAudioRenderer;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private drainOutputBuffer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;,
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 164
    iget-boolean v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mOutputStreamEnded:Z

    if-eqz v0, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$000(Lcom/oculus/video/renderer/OpusAudioRenderer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mDecoder:Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->dequeueOutputBuffer()Lcom/oculus/android/exoplayer2/decoder/OutputBuffer;

    move-result-object v1

    check-cast v1, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-direct {p0, v1}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->renderAndGetRemaining(Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;)Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private feedInputBuffer()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoderException;
        }
    .end annotation

    .line 129
    iget-boolean v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mInputStreamEnded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mInputBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mDecoder:Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->dequeueInputBuffer()Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mInputBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 135
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mInputBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    if-nez v0, :cond_1

    return v1

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mInputBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v2, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mCurrentPositionUs:J

    iput-wide v2, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 141
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    iget-object v2, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mFormatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

    iget-object v3, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mInputBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-static {v0, v2, v3, v1}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$700(Lcom/oculus/video/renderer/OpusAudioRenderer;Lcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v0

    const/4 v2, -0x3

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v2, -0x5

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    .line 146
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$100(Lcom/oculus/video/renderer/OpusAudioRenderer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mFormatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/FormatHolder;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$400(Lcom/oculus/video/renderer/OpusAudioRenderer;)Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mFormatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/FormatHolder;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-virtual {v0, v1}, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V

    return v3

    :cond_3
    const/4 v2, -0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_4

    .line 151
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mInputBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 152
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mDecoder:Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    iget-object v2, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mInputBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0, v2}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->queueInputBuffer(Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 153
    iput-object v4, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mInputBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 154
    iput-boolean v3, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mInputStreamEnded:Z

    return v1

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mDecoder:Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    iget-object v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mInputBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0, v1}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->queueInputBuffer(Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 159
    iput-object v4, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mInputBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    return v3
.end method

.method private flushInternal()V
    .locals 2

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mInputStreamEnded:Z

    .line 206
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mOutputStreamEnded:Z

    .line 208
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mDecoder:Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mInputBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 214
    iget-object v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v1}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$000(Lcom/oculus/video/renderer/OpusAudioRenderer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;

    if-nez v1, :cond_1

    return-void

    .line 219
    :cond_1
    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 220
    iget-object v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v1}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$000(Lcom/oculus/video/renderer/OpusAudioRenderer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 222
    iget-object v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v1}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$100(Lcom/oculus/video/renderer/OpusAudioRenderer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 223
    iput-wide v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mCurrentPositionUs:J

    .line 225
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mDecoder:Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->flush()V

    return-void
.end method

.method private readFormat()Lcom/oculus/android/exoplayer2/Format;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mFlagsOnlyBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 118
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    iget-object v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mFormatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

    iget-object v2, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mFlagsOnlyBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$600(Lcom/oculus/video/renderer/OpusAudioRenderer;Lcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v0

    const/4 v1, -0x5

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mFormatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/FormatHolder;->format:Lcom/oculus/android/exoplayer2/Format;

    .line 121
    iget-object v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v1}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$400(Lcom/oculus/video/renderer/OpusAudioRenderer;)Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V

    .line 122
    iget-object v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/Format;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/video/renderer/OpusAudioRenderer;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private renderAndGetRemaining(Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;)Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 176
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;->isEndOfStream()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 177
    iput-boolean v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mOutputStreamEnded:Z

    .line 178
    iget-object v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-virtual {v1}, Lcom/oculus/video/renderer/OpusAudioRenderer;->onOutputStreamEnded()V

    .line 179
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    return-object v0

    .line 183
    :cond_1
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;->isDecodeOnly()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-virtual {v1, p1}, Lcom/oculus/video/renderer/OpusAudioRenderer;->renderOutputBuffer(Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return-object p1

    .line 184
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    return-object v0
.end method


# virtual methods
.method protected consumeSynchronously()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$000(Lcom/oculus/video/renderer/OpusAudioRenderer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->decodeToOutputBuffer()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->isAsync()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$000(Lcom/oculus/video/renderer/OpusAudioRenderer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v1}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$000(Lcom/oculus/video/renderer/OpusAudioRenderer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-direct {p0, v1}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->renderAndGetRemaining(Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;)Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 57
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v0}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$000(Lcom/oculus/video/renderer/OpusAudioRenderer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    invoke-static {v1}, Lcom/oculus/video/renderer/OpusAudioRenderer;->access$000(Lcom/oculus/video/renderer/OpusAudioRenderer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-direct {p0, v1}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->renderAndGetRemaining(Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;)Lcom/oculus/android/exoplayer2/decoder/SimpleOutputBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public disable()V
    .locals 2

    .line 244
    invoke-super {p0}, Lcom/oculus/video/audio/OutputBufferConsumer;->disable()V

    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    invoke-direct {p0}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->flushInternal()V

    .line 253
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mDecoder:Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mDecoder:Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;->release()V

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mDecoder:Lcom/oculus/android/exoplayer2/ext/opus/OpusDecoder;

    .line 256
    iget-object v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->this$0:Lcom/oculus/video/renderer/OpusAudioRenderer;

    iget-object v0, v0, Lcom/oculus/video/renderer/OpusAudioRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 258
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method flush()V
    .locals 1

    .line 229
    invoke-super {p0}, Lcom/oculus/video/audio/OutputBufferConsumer;->disable()V

    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    invoke-direct {p0}, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->flushInternal()V

    .line 237
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-super {p0}, Lcom/oculus/video/audio/OutputBufferConsumer;->enable()V

    return-void

    :catchall_0
    move-exception v0

    .line 237
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method isEnded()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mOutputStreamEnded:Z

    return v0
.end method

.method public setPositionUs(J)V
    .locals 0

    .line 198
    iput-wide p1, p0, Lcom/oculus/video/renderer/OpusAudioRenderer$OpusAudioProcessor;->mCurrentPositionUs:J

    return-void
.end method
