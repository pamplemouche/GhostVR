.class public Lcom/oculus/video/metadata/OculusMetadataRenderer;
.super Lcom/oculus/android/exoplayer2/BaseRenderer;
.source "OculusMetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MAX_PENDING_METADATA_COUNT:I = 0x5

.field private static final MSG_INVOKE_RENDERER:I


# instance fields
.field private final buffer:Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;

.field private decoder:Lcom/oculus/android/exoplayer2/metadata/MetadataDecoder;

.field private final decoderFactory:Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;

.field private final formatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

.field private inputStreamEnded:Z

.field private final output:Lcom/oculus/android/exoplayer2/metadata/MetadataOutput;

.field private final outputHandler:Landroid/os/Handler;

.field private final pendingMetadata:[Lcom/oculus/android/exoplayer2/metadata/Metadata;

.field private pendingMetadataCount:I

.field private pendingMetadataIndex:I

.field private final pendingMetadataTimestamps:[J


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;)V
    .locals 1

    .line 52
    sget-object v0, Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;->DEFAULT:Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/video/metadata/OculusMetadataRenderer;-><init>(Lcom/oculus/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/oculus/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;)V
    .locals 1

    const/4 v0, 0x4

    .line 66
    invoke-direct {p0, v0}, Lcom/oculus/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 67
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/metadata/MetadataOutput;

    iput-object p1, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->output:Lcom/oculus/android/exoplayer2/metadata/MetadataOutput;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 68
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->outputHandler:Landroid/os/Handler;

    .line 69
    invoke-static {p3}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;

    iput-object p1, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->decoderFactory:Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;

    .line 70
    new-instance p1, Lcom/oculus/android/exoplayer2/FormatHolder;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/FormatHolder;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->formatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

    .line 71
    new-instance p1, Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->buffer:Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;

    const/4 p1, 0x5

    .line 72
    new-array p2, p1, [Lcom/oculus/android/exoplayer2/metadata/Metadata;

    iput-object p2, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadata:[Lcom/oculus/android/exoplayer2/metadata/Metadata;

    .line 73
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadataTimestamps:[J

    return-void
.end method

.method private flushPendingMetadata()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadata:[Lcom/oculus/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 164
    iput v0, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadataIndex:I

    .line 165
    iput v0, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadataCount:I

    return-void
.end method

.method private invokeRenderer(Lcom/oculus/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 158
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/video/metadata/OculusMetadataRenderer;->invokeRendererInternal(Lcom/oculus/android/exoplayer2/metadata/Metadata;)V

    :goto_0
    return-void
.end method

.method private invokeRendererInternal(Lcom/oculus/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->output:Lcom/oculus/android/exoplayer2/metadata/MetadataOutput;

    invoke-interface {v0, p1}, Lcom/oculus/android/exoplayer2/metadata/MetadataOutput;->onMetadata(Lcom/oculus/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 173
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oculus/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, p1}, Lcom/oculus/video/metadata/OculusMetadataRenderer;->invokeRendererInternal(Lcom/oculus/android/exoplayer2/metadata/Metadata;)V

    const/4 p1, 0x1

    return p1

    .line 177
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public isEnded()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->inputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/oculus/video/metadata/OculusMetadataRenderer;->flushPendingMetadata()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->decoder:Lcom/oculus/android/exoplayer2/metadata/MetadataDecoder;

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/oculus/video/metadata/OculusMetadataRenderer;->flushPendingMetadata()V

    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->inputStreamEnded:Z

    return-void
.end method

.method protected onStreamChanged([Lcom/oculus/android/exoplayer2/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 87
    iget-object p2, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->decoderFactory:Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;->createDecoder(Lcom/oculus/android/exoplayer2/Format;)Lcom/oculus/android/exoplayer2/metadata/MetadataDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->decoder:Lcom/oculus/android/exoplayer2/metadata/MetadataDecoder;

    return-void
.end method

.method public render(JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 98
    :goto_0
    iget-boolean p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->inputStreamEnded:Z

    const/4 p4, 0x5

    const/4 v0, 0x1

    if-nez p3, :cond_2

    iget p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadataCount:I

    if-ge p3, p4, :cond_2

    .line 99
    iget-object p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->buffer:Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {p3}, Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;->clear()V

    .line 100
    iget-object p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->formatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

    iget-object v1, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->buffer:Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v1, v2}, Lcom/oculus/video/metadata/OculusMetadataRenderer;->readSource(Lcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p3

    const/4 v1, -0x4

    if-ne p3, v1, :cond_2

    .line 102
    iget-object p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->buffer:Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {p3}, Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;->isEndOfStream()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 103
    iput-boolean v0, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->inputStreamEnded:Z

    goto :goto_0

    .line 104
    :cond_0
    iget-object p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->buffer:Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {p3}, Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;->isDecodeOnly()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    iget-object p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->buffer:Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;

    iget-object v1, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->formatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/FormatHolder;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-wide v1, v1, Lcom/oculus/android/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide v1, p3, Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    .line 110
    iget-object p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->buffer:Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {p3}, Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;->flip()V

    .line 112
    :try_start_0
    iget p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadataIndex:I

    iget v1, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadataCount:I

    add-int/2addr p3, v1

    rem-int/2addr p3, p4

    .line 113
    iget-object p4, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadata:[Lcom/oculus/android/exoplayer2/metadata/Metadata;

    iget-object v1, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->decoder:Lcom/oculus/android/exoplayer2/metadata/MetadataDecoder;

    iget-object v2, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->buffer:Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-interface {v1, v2}, Lcom/oculus/android/exoplayer2/metadata/MetadataDecoder;->decode(Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;)Lcom/oculus/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    aput-object v1, p4, p3

    .line 114
    iget-object p4, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadataTimestamps:[J

    iget-object v1, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->buffer:Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;

    iget-wide v1, v1, Lcom/oculus/android/exoplayer2/metadata/MetadataInputBuffer;->timeUs:J

    aput-wide v1, p4, p3

    .line 115
    iget p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadataCount:I

    add-int/2addr p3, v0

    iput p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadataCount:I
    :try_end_0
    .catch Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p0}, Lcom/oculus/video/metadata/OculusMetadataRenderer;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 125
    :cond_2
    iget-object p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->decoder:Lcom/oculus/android/exoplayer2/metadata/MetadataDecoder;

    instance-of p3, p3, Lcom/oculus/video/metadata/CameraMotionDecoder;

    if-eqz p3, :cond_3

    const-wide/32 v1, 0x186a0

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x0

    .line 129
    :goto_1
    iget p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadataCount:I

    if-lez p3, :cond_4

    iget-object p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadataTimestamps:[J

    iget v3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadataIndex:I

    aget-wide v4, p3, v3

    add-long v6, p1, v1

    cmp-long p3, v4, v6

    if-gtz p3, :cond_4

    .line 131
    iget-object p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadata:[Lcom/oculus/android/exoplayer2/metadata/Metadata;

    aget-object p3, p3, v3

    invoke-direct {p0, p3}, Lcom/oculus/video/metadata/OculusMetadataRenderer;->invokeRenderer(Lcom/oculus/android/exoplayer2/metadata/Metadata;)V

    .line 132
    iget-object p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadata:[Lcom/oculus/android/exoplayer2/metadata/Metadata;

    iget v3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadataIndex:I

    const/4 v4, 0x0

    aput-object v4, p3, v3

    add-int/2addr v3, v0

    .line 133
    rem-int/2addr v3, p4

    iput v3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadataIndex:I

    .line 134
    iget p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadataCount:I

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->pendingMetadataCount:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public supportsFormat(Lcom/oculus/android/exoplayer2/Format;)I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/oculus/video/metadata/OculusMetadataRenderer;->decoderFactory:Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-interface {v0, p1}, Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;->supportsFormat(Lcom/oculus/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 79
    iget-object p1, p1, Lcom/oculus/android/exoplayer2/Format;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    invoke-static {v0, p1}, Lcom/oculus/video/metadata/OculusMetadataRenderer;->supportsFormatDrm(Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;Lcom/oculus/android/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
