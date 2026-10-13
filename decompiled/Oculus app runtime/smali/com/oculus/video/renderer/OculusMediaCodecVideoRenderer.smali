.class public Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;
.super Lcom/oculus/android/exoplayer2/BaseRenderer;
.source "OculusMediaCodecVideoRenderer.java"

# interfaces
.implements Lcom/oculus/video/renderer/FrameReleaser;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$Callback;,
        Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;,
        Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;,
        Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$DecoderInitializationException;
    }
.end annotation


# static fields
.field private static final ADAPTATION_WORKAROUND_BUFFER:[B

.field private static final FRAME_DROP_FPS_THRESHOLD:D = 45.0

.field private static final ILLEGAL_PRESENTATION_TIME:J = 0x7fffffffffffffffL

.field private static final KEY_CSD_0:Ljava/lang/String; = "csd-0"

.field private static final KEY_CSD_1:Ljava/lang/String; = "csd-1"

.field private static final KEY_CSD_2:Ljava/lang/String; = "csd-2"

.field private static final MAX_CODEC_HOTSWAP_TIME_MS:J = 0x3e8L

.field private static final MAX_CODEC_PIXEL_THROUGHPUT:J = 0x34bc0000L

.field private static final MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY:I = 0x32

.field private static final MAX_LATE_BUFFER_US:I = -0xea60

.field public static final MAX_RENDER_DELAY_MS:I = 0x64

.field private static final MAX_VERY_LATE_BUFFER_US:I = -0x7a120

.field private static final RECONFIGURATION_STATE_NONE:I = 0x0

.field private static final RECONFIGURATION_STATE_QUEUE_PENDING:I = 0x2

.field private static final RECONFIGURATION_STATE_WRITE_PENDING:I = 0x1

.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final SECOND_FRAME_RELEASE_THRESHOLD_NS:D = 1.6666666E7

.field private static final STANDARD_LONG_EDGE_VIDEO_PX:[I

.field private static final TAG:Ljava/lang/String; = "OculusVideoRenderer"

.field public static final VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;


# instance fields
.field private final allowedJoiningTimeMs:J

.field private final buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

.field private codecHotswapDeadlineMs:J

.field private codecIsAdaptive:Z

.field private codecMaxValues:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;

.field private codecNeedsAdaptationWorkaround:Z

.field private codecNeedsAdaptationWorkaroundBuffer:Z

.field private codecNeedsDiscardToSpsWorkaround:Z

.field private codecNeedsEosFlushWorkaround:Z

.field private codecNeedsEosOutputExceptionWorkaround:Z

.field private codecReceivedBuffers:Z

.field private codecReceivedEos:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private codecReinitializationState:I

.field private consecutiveDroppedFrameCount:I

.field private final currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

.field private decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

.field private final deviceNeedsAutoFrcWorkaround:Z

.field private drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/android/exoplayer2/drm/DrmSession<",
            "Lcom/oculus/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final drmSessionManager:Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/oculus/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private final eventDispatcher:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private final flagsOnlyBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

.field private format:Lcom/oculus/android/exoplayer2/Format;

.field private final formatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

.field private final formatSupportMap:Landroid/util/SparseIntArray;

.field private final frameReleaseTimeHelper:Lcom/oculus/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

.field private inputBuffer:Ljava/nio/ByteBuffer;

.field private inputBufferSet:Z

.field private inputStreamEnded:Z

.field private joiningDeadlineMs:J

.field private lastElapsedRealtimeUs:J

.field private volatile lastEmittedPresentationTimeUs:J

.field private lastExoPlaybackException:Lcom/oculus/android/exoplayer2/ExoPlaybackException;

.field private lastPositionUs:J

.field private volatile lastPresentationTimeUs:J

.field private lastReleaseTimeNs:J

.field private lastRenderTimeMs:J

.field private final mediaCodecSelector:Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;

.field private outputStreamEnded:Z

.field private pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/android/exoplayer2/drm/DrmSession<",
            "Lcom/oculus/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final playClearSamplesWithoutKeys:Z

.field private releasedFirstFrame:Z

.field private renderedFirstFrame:Z

.field private final rendererCallback:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$Callback;

.field private final reportedVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

.field private volatile shouldReleaseNextFrame:Z

.field private streamFormats:[Lcom/oculus/android/exoplayer2/Format;

.field private surface:Landroid/view/Surface;

.field private final videoBufferReleaseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private waitingForDropToKey:Z

.field private waitingForFirstSyncFrame:Z

.field private waitingForKeys:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    .line 281
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    const/16 v0, 0x9

    .line 295
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    .line 304
    new-instance v0, Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-direct {v0}, Lcom/oculus/video/renderer/VideoDirectDecoder;-><init>()V

    sput-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    return-void

    nop

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/oculus/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "J",
            "Lcom/oculus/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/oculus/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 401
    invoke-direct {p0, v0}, Lcom/oculus/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 315
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->formatSupportMap:Landroid/util/SparseIntArray;

    .line 358
    new-instance v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    invoke-direct {v1}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;-><init>()V

    iput-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    .line 359
    new-instance v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    invoke-direct {v1}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;-><init>()V

    iput-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->reportedVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    const/4 v1, 0x0

    .line 361
    iput-boolean v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->shouldReleaseNextFrame:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 362
    iput-wide v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastPositionUs:J

    .line 363
    iput-wide v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastElapsedRealtimeUs:J

    .line 364
    iput-wide v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastReleaseTimeNs:J

    .line 365
    iput-wide v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastRenderTimeMs:J

    .line 366
    iput-wide v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastEmittedPresentationTimeUs:J

    .line 367
    iput-wide v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastPresentationTimeUs:J

    .line 368
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->videoBufferReleaseLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v4, 0x0

    .line 369
    iput-object v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastExoPlaybackException:Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    .line 402
    sget v5, Lcom/oculus/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 403
    invoke-static {p2}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;

    iput-object p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->mediaCodecSelector:Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;

    .line 404
    iput-object p5, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSessionManager:Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;

    .line 405
    iput-boolean p6, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->playClearSamplesWithoutKeys:Z

    .line 407
    new-instance p2, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p2, v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 408
    invoke-static {}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->newFlagsOnlyInstance()Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->flagsOnlyBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 409
    new-instance p2, Lcom/oculus/android/exoplayer2/FormatHolder;

    invoke-direct {p2}, Lcom/oculus/android/exoplayer2/FormatHolder;-><init>()V

    iput-object p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->formatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

    .line 410
    iput v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReconfigurationState:I

    .line 411
    iput v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReinitializationState:I

    .line 412
    iput-wide p3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    .line 413
    new-instance p2, Lcom/oculus/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-direct {p2, p1}, Lcom/oculus/android/exoplayer2/video/VideoFrameReleaseTimeHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->frameReleaseTimeHelper:Lcom/oculus/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    .line 414
    instance-of p1, p8, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$Callback;

    if-eqz p1, :cond_1

    move-object v4, p8

    check-cast v4, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$Callback;

    :cond_1
    iput-object v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->rendererCallback:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$Callback;

    .line 415
    new-instance p1, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-direct {p1, p7, p8}, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;)V

    iput-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->eventDispatcher:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 416
    invoke-static {}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->deviceNeedsAutoFrcWorkaround()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->deviceNeedsAutoFrcWorkaround:Z

    .line 417
    iput-wide v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 418
    iput-boolean v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->waitingForDropToKey:Z

    return-void
.end method

.method private static areAdaptationCompatible(ZLcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/Format;)Z
    .locals 2

    .line 1677
    iget-object v0, p1, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p2, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1678
    invoke-static {p1}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getRotationDegrees(Lcom/oculus/android/exoplayer2/Format;)I

    move-result v0

    invoke-static {p2}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getRotationDegrees(Lcom/oculus/android/exoplayer2/Format;)I

    move-result v1

    if-ne v0, v1, :cond_1

    if-nez p0, :cond_0

    iget p0, p1, Lcom/oculus/android/exoplayer2/Format;->width:I

    iget v0, p2, Lcom/oculus/android/exoplayer2/Format;->width:I

    if-ne p0, v0, :cond_1

    iget p0, p1, Lcom/oculus/android/exoplayer2/Format;->height:I

    iget p1, p2, Lcom/oculus/android/exoplayer2/Format;->height:I

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private clearRenderedFirstFrame()V
    .locals 2

    const/4 v0, 0x0

    .line 607
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->renderedFirstFrame:Z

    .line 608
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->releasedFirstFrame:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 609
    iput-wide v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastReleaseTimeNs:J

    .line 610
    iput-wide v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastEmittedPresentationTimeUs:J

    return-void
.end method

.method private static codecNeedsAdaptationWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 1731
    sget v0, Lcom/oculus/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    const-string v0, "OMX.Nvidia.h264.decode"

    .line 1732
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    sget-object p0, Lcom/oculus/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "flounder"

    .line 1733
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/oculus/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "flounder_lte"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/oculus/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "grouper"

    .line 1734
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/oculus/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "tilapia"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 1751
    sget v0, Lcom/oculus/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 1766
    sget v0, Lcom/oculus/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private configureCodec(Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/oculus/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 809
    iget-object v2, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->streamFormats:[Lcom/oculus/android/exoplayer2/Format;

    move-object/from16 v3, p1

    invoke-direct {v0, v3, v1, v2}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getCodecMaxValues(Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/oculus/android/exoplayer2/Format;[Lcom/oculus/android/exoplayer2/Format;)Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;

    move-result-object v2

    iput-object v2, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecMaxValues:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;

    .line 810
    iget-object v2, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecMaxValues:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;

    iget-boolean v3, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->deviceNeedsAutoFrcWorkaround:Z

    invoke-static {v1, v2, v3}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getMediaFormat(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;Z)Landroid/media/MediaFormat;

    move-result-object v2

    .line 814
    iget-object v3, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSessionManager:Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    .line 817
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v7, "sessions"

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 818
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 819
    iget-object v7, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSessionManager:Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 820
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 821
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 822
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "sessionId"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 823
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 824
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v3, v6

    :goto_0
    move-object v6, v3

    :catch_0
    if-nez v6, :cond_1

    const-string v3, "OculusVideoRenderer"

    const-string v7, "Failed to get DRM sessionId. Proceed w/o MediaCrypto"

    .line 829
    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v18, v6

    .line 834
    iget-object v3, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSessionManager:Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;

    if-nez v3, :cond_3

    iget-boolean v3, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsAdaptationWorkaround:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-nez v9, :cond_4

    .line 837
    iput v5, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReconfigurationState:I

    .line 842
    :cond_4
    iget-object v3, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecMaxValues:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;

    iget v3, v3, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 843
    sget-object v3, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    iget-object v5, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v3, v5}, Lcom/oculus/video/renderer/VideoDirectDecoder;->setOutputSurface(Landroid/view/Surface;)V

    .line 844
    sget-object v8, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    iget-boolean v10, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecIsAdaptive:Z

    const-string v3, "mime"

    .line 847
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "max-input-size"

    .line 848
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    iget v13, v1, Lcom/oculus/android/exoplayer2/Format;->rotationDegrees:I

    const-string v1, "width"

    .line 850
    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    const-string v1, "height"

    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v15

    const-string v1, "max-width"

    .line 851
    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v16

    const-string v1, "max-height"

    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v17

    .line 844
    invoke-virtual/range {v8 .. v18}, Lcom/oculus/video/renderer/VideoDirectDecoder;->setVideoExtractorInfo(ZZLjava/lang/String;IIIIII[B)V

    const-string v1, "csd-0"

    const-string v3, "csd-1"

    const-string v5, "csd-2"

    .line 856
    filled-new-array {v1, v3, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 857
    array-length v3, v1

    :goto_3
    if-ge v4, v3, :cond_6

    aget-object v5, v1, v4

    .line 858
    invoke-virtual {v2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 859
    invoke-virtual {v2, v5}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 860
    sget-object v7, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Lcom/oculus/video/renderer/VideoDirectDecoder;->writeCsdBuffer(Ljava/lang/String;[B)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 865
    :cond_6
    sget-object v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    iget-object v2, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    invoke-virtual {v1, v2}, Lcom/oculus/video/renderer/VideoDirectDecoder;->start(Lcom/oculus/video/renderer/VideoDirectDecoder$EventListener;)V

    return-void
.end method

.method private static deviceNeedsAutoFrcWorkaround()Z
    .locals 2

    .line 1784
    sget v0, Lcom/oculus/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/oculus/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "foster"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oculus/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private dropOutputBuffer(J)V
    .locals 1

    .line 1376
    sget-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/video/renderer/VideoDirectDecoder;->requestVideoBufferDrop(J)V

    .line 1377
    iput-wide p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastEmittedPresentationTimeUs:J

    const/4 p1, 0x1

    .line 1378
    invoke-virtual {p0, p1}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->updateDroppedBufferCounters(I)V

    return-void
.end method

.method private static getCodecMaxSize(Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/oculus/android/exoplayer2/Format;)Landroid/graphics/Point;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1570
    iget v0, p1, Lcom/oculus/android/exoplayer2/Format;->height:I

    iget v1, p1, Lcom/oculus/android/exoplayer2/Format;->width:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1571
    iget v1, p1, Lcom/oculus/android/exoplayer2/Format;->height:I

    goto :goto_1

    :cond_1
    iget v1, p1, Lcom/oculus/android/exoplayer2/Format;->width:I

    :goto_1
    if-eqz v0, :cond_2

    .line 1572
    iget v3, p1, Lcom/oculus/android/exoplayer2/Format;->width:I

    goto :goto_2

    :cond_2
    iget v3, p1, Lcom/oculus/android/exoplayer2/Format;->height:I

    :goto_2
    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 1574
    sget-object v5, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    array-length v6, v5

    :goto_3
    const/4 v7, 0x0

    if-ge v2, v6, :cond_a

    aget v8, v5, v2

    int-to-float v9, v8

    mul-float v9, v9, v4

    float-to-int v9, v9

    if-le v8, v1, :cond_a

    if-gt v9, v3, :cond_3

    goto :goto_7

    .line 1579
    :cond_3
    sget v7, Lcom/oculus/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v7, v10, :cond_6

    if-eqz v0, :cond_4

    move v7, v9

    goto :goto_4

    :cond_4
    move v7, v8

    :goto_4
    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v8, v9

    .line 1580
    :goto_5
    invoke-virtual {p0, v7, v8}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;->alignVideoSizeV21(II)Landroid/graphics/Point;

    move-result-object v7

    .line 1582
    iget v8, p1, Lcom/oculus/android/exoplayer2/Format;->frameRate:F

    .line 1583
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v8

    if-eqz v8, :cond_9

    return-object v7

    :cond_6
    const/16 v7, 0x10

    .line 1588
    invoke-static {v8, v7}, Lcom/oculus/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    .line 1589
    invoke-static {v9, v7}, Lcom/oculus/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v9

    mul-int/lit8 v7, v9, 0x10

    mul-int v9, v8, v7

    .line 1590
    invoke-static {}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v10

    if-gt v9, v10, :cond_9

    .line 1591
    new-instance p0, Landroid/graphics/Point;

    if-eqz v0, :cond_7

    move p1, v7

    goto :goto_6

    :cond_7
    move p1, v8

    :goto_6
    if-eqz v0, :cond_8

    move v7, v8

    :cond_8
    invoke-direct {p0, p1, v7}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_7
    return-object v7
.end method

.method private getCodecMaxValues(Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/oculus/android/exoplayer2/Format;[Lcom/oculus/android/exoplayer2/Format;)Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1526
    iget v0, p2, Lcom/oculus/android/exoplayer2/Format;->width:I

    .line 1527
    iget v1, p2, Lcom/oculus/android/exoplayer2/Format;->height:I

    .line 1528
    invoke-static {p2}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getMaxInputSize(Lcom/oculus/android/exoplayer2/Format;)I

    move-result v2

    if-eqz p3, :cond_6

    .line 1529
    array-length v3, p3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 1535
    :cond_0
    array-length v3, p3

    const/4 v5, 0x0

    move v6, v1

    move v7, v2

    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    aget-object v8, p3, v0

    .line 1536
    iget-boolean v9, p1, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    invoke-static {v9, p2, v8}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->areAdaptationCompatible(ZLcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/Format;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1537
    iget v9, v8, Lcom/oculus/android/exoplayer2/Format;->width:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget v9, v8, Lcom/oculus/android/exoplayer2/Format;->height:I

    if-ne v9, v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    or-int/2addr v1, v9

    .line 1539
    iget v9, v8, Lcom/oculus/android/exoplayer2/Format;->width:I

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1540
    iget v9, v8, Lcom/oculus/android/exoplayer2/Format;->height:I

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1541
    invoke-static {v8}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getMaxInputSize(Lcom/oculus/android/exoplayer2/Format;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 1545
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "OculusVideoRenderer"

    invoke-static {v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    invoke-static {p1, p2}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getCodecMaxSize(Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/oculus/android/exoplayer2/Format;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1548
    iget p3, p1, Landroid/graphics/Point;->x:I

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1549
    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1550
    iget-object p1, p2, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1551
    invoke-static {p1, v2, v6}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getMaxInputSize(Ljava/lang/String;II)I

    move-result p1

    .line 1550
    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1552
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Codec max resolution adjusted to: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_5
    new-instance p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v2, v6, v7}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1

    .line 1532
    :cond_6
    :goto_3
    new-instance p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v0, v1, v2}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1
.end method

.method private static getFrameworkCryptoInfo(Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 3

    .line 1085
    iget-object p0, p0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/oculus/android/exoplayer2/decoder/CryptoInfo;

    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/decoder/CryptoInfo;->getFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object p0

    if-nez p1, :cond_0

    return-object p0

    .line 1092
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1093
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 1095
    :cond_1
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    return-object p0
.end method

.method private getLayoutID(Lcom/oculus/android/exoplayer2/Format;)I
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->rendererCallback:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$Callback;

    if-eqz v0, :cond_0

    .line 928
    invoke-interface {v0, p1}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$Callback;->getProjectionType(Lcom/oculus/android/exoplayer2/Format;)Lcom/oculus/video/projection/ProjectionType;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

    .line 930
    :goto_0
    invoke-virtual {p1}, Lcom/oculus/video/projection/ProjectionType;->getLayoutID()I

    move-result p1

    return p1
.end method

.method private static getMaxInputSize(Lcom/oculus/android/exoplayer2/Format;)I
    .locals 2

    .line 1607
    iget v0, p0, Lcom/oculus/android/exoplayer2/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1609
    iget p0, p0, Lcom/oculus/android/exoplayer2/Format;->maxInputSize:I

    return p0

    .line 1611
    :cond_0
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v1, p0, Lcom/oculus/android/exoplayer2/Format;->width:I

    iget p0, p0, Lcom/oculus/android/exoplayer2/Format;->height:I

    invoke-static {v0, v1, p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getMaxInputSize(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static getMaxInputSize(Ljava/lang/String;II)I
    .locals 7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    if-ne p2, v0, :cond_0

    goto/16 :goto_4

    .line 1632
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "video/avc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "video/mp4v-es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "video/hevc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "video/3gpp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_5

    if-eq p0, v3, :cond_5

    if-eq p0, v6, :cond_3

    if-eq p0, v5, :cond_5

    if-eq p0, v4, :cond_2

    if-eq p0, v2, :cond_2

    return v0

    :cond_2
    mul-int p1, p1, p2

    goto :goto_3

    .line 1639
    :cond_3
    sget-object p0, Lcom/oculus/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "BRAVIA 4K 2015"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    const/16 p0, 0x10

    .line 1645
    invoke-static {p1, p0}, Lcom/oculus/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p1

    invoke-static {p2, p0}, Lcom/oculus/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p2

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x10

    mul-int/lit8 p1, p1, 0x10

    goto :goto_2

    :cond_5
    mul-int p1, p1, p2

    :goto_2
    const/4 v4, 0x2

    :goto_3
    mul-int/lit8 p1, p1, 0x3

    mul-int/lit8 v4, v4, 0x2

    .line 1663
    div-int/2addr p1, v4

    return p1

    :cond_6
    :goto_4
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getMediaFormat(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;Z)Landroid/media/MediaFormat;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1499
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/Format;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object p0

    .line 1501
    iget v0, p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;->width:I

    const-string v1, "max-width"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1502
    iget v0, p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;->height:I

    const-string v1, "max-height"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1504
    iget v0, p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1505
    iget p1, p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    const-string v0, "max-input-size"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x0

    const-string p2, "auto-frc"

    .line 1509
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    return-object p0
.end method

.method private static getPixelWidthHeightRatio(Lcom/oculus/android/exoplayer2/Format;)F
    .locals 2

    .line 1683
    iget v0, p0, Lcom/oculus/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/oculus/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    :goto_0
    return p0
.end method

.method private static getRotationDegrees(Lcom/oculus/android/exoplayer2/Format;)I
    .locals 2

    .line 1687
    iget v0, p0, Lcom/oculus/android/exoplayer2/Format;->rotationDegrees:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/oculus/android/exoplayer2/Format;->rotationDegrees:I

    :goto_0
    return p0
.end method

.method private static isBufferLate(J)Z
    .locals 3

    const-wide/32 v0, -0xea60

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeFeedInputBuffer()Z
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 941
    sget-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/VideoDirectDecoder;->isExtractedBufferReady()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReinitializationState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_14

    iget-boolean v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->inputStreamEnded:Z

    if-nez v0, :cond_14

    iget-boolean v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->waitingForDropToKey:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 948
    :cond_0
    iget-boolean v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->inputBufferSet:Z

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 949
    iput-boolean v4, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->inputBufferSet:Z

    .line 950
    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v5, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->inputBuffer:Ljava/nio/ByteBuffer;

    iput-object v5, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 951
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 954
    :cond_1
    iget v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReinitializationState:I

    if-ne v0, v4, :cond_2

    .line 955
    iput-boolean v4, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReceivedEos:Z

    .line 956
    sget-object v5, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v6, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 957
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    const/4 v8, 0x4

    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v9, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    .line 958
    invoke-direct {v1, v0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getLayoutID(Lcom/oculus/android/exoplayer2/Format;)I

    move-result v11

    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v12

    .line 956
    invoke-virtual/range {v5 .. v12}, Lcom/oculus/video/renderer/VideoDirectDecoder;->writeBuffer(Ljava/nio/ByteBuffer;IIJIZ)V

    .line 959
    iput-boolean v2, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->inputBufferSet:Z

    .line 960
    iput v3, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReinitializationState:I

    return v2

    .line 964
    :cond_2
    iget-boolean v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v0, :cond_3

    .line 965
    iput-boolean v2, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 966
    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v3, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 967
    sget-object v5, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v6, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    array-length v7, v0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    .line 968
    invoke-direct {v1, v0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getLayoutID(Lcom/oculus/android/exoplayer2/Format;)I

    move-result v11

    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v12

    .line 967
    invoke-virtual/range {v5 .. v12}, Lcom/oculus/video/renderer/VideoDirectDecoder;->writeBuffer(Ljava/nio/ByteBuffer;IIJIZ)V

    .line 969
    iput-boolean v4, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReceivedBuffers:Z

    .line 970
    iput-boolean v2, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->inputBufferSet:Z

    return v4

    .line 976
    :cond_3
    iget-boolean v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_4

    const/4 v0, -0x4

    const/4 v5, 0x0

    goto :goto_1

    .line 982
    :cond_4
    iget v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReconfigurationState:I

    if-ne v0, v4, :cond_6

    const/4 v0, 0x0

    .line 983
    :goto_0
    iget-object v5, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v5, v5, Lcom/oculus/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 984
    iget-object v5, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v5, v5, Lcom/oculus/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 985
    iget-object v6, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v6, v6, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 987
    :cond_5
    iput v3, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReconfigurationState:I

    .line 989
    :cond_6
    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 990
    iget-object v5, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->formatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

    iget-object v6, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v5, v6, v2}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->readSource(Lcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v5

    move/from16 v27, v5

    move v5, v0

    move/from16 v0, v27

    :goto_1
    const/4 v6, -0x3

    if-ne v0, v6, :cond_7

    return v2

    :cond_7
    const/4 v6, -0x5

    if-ne v0, v6, :cond_9

    .line 997
    iget v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReconfigurationState:I

    if-ne v0, v3, :cond_8

    .line 1000
    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 1001
    iput v4, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReconfigurationState:I

    .line 1003
    :cond_8
    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->formatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/FormatHolder;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-virtual {v1, v0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->onInputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V

    return v4

    .line 1008
    :cond_9
    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1009
    iget v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReconfigurationState:I

    if-ne v0, v3, :cond_a

    .line 1013
    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 1014
    iput v4, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReconfigurationState:I

    .line 1016
    :cond_a
    iput-boolean v4, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->inputStreamEnded:Z

    .line 1017
    iget-boolean v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReceivedBuffers:Z

    if-nez v0, :cond_b

    .line 1018
    invoke-direct/range {p0 .. p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->processEndOfStream()V

    return v2

    .line 1022
    :cond_b
    :try_start_0
    iput-boolean v4, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReceivedEos:Z

    .line 1023
    sget-object v5, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v6, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 1024
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    const/4 v8, 0x4

    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v9, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    .line 1025
    invoke-direct {v1, v0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getLayoutID(Lcom/oculus/android/exoplayer2/Format;)I

    move-result v11

    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v12

    .line 1023
    invoke-virtual/range {v5 .. v12}, Lcom/oculus/video/renderer/VideoDirectDecoder;->writeBuffer(Ljava/nio/ByteBuffer;IIJIZ)V

    .line 1026
    iput-boolean v2, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->inputBufferSet:Z
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 1028
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getIndex()I

    move-result v2

    invoke-static {v0, v2}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 1032
    :cond_c
    iget-boolean v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->waitingForFirstSyncFrame:Z

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->isKeyFrame()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1033
    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 1034
    iget v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReconfigurationState:I

    if-ne v0, v3, :cond_d

    .line 1037
    iput v4, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReconfigurationState:I

    :cond_d
    return v4

    .line 1041
    :cond_e
    iput-boolean v2, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->waitingForFirstSyncFrame:Z

    .line 1042
    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    .line 1043
    invoke-direct {v1, v0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->shouldWaitForKeys(Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->waitingForKeys:Z

    .line 1044
    iget-boolean v3, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->waitingForKeys:Z

    if-eqz v3, :cond_f

    return v2

    .line 1047
    :cond_f
    iget-boolean v3, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    if-eqz v3, :cond_11

    if-nez v0, :cond_11

    .line 1048
    iget-object v3, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v3, v3, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->discardToSps(Ljava/nio/ByteBuffer;)V

    .line 1049
    iget-object v3, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v3, v3, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_10

    return v4

    .line 1052
    :cond_10
    iput-boolean v2, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 1055
    :cond_11
    :try_start_1
    iget-object v3, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v3}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->onQueueInputBuffer(Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 1057
    iget-object v3, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1058
    iget-object v3, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    iget v6, v3, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr v6, v4

    iput v6, v3, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    :cond_12
    if-eqz v0, :cond_13

    .line 1062
    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-static {v0, v5}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getFrameworkCryptoInfo(Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    .line 1064
    sget-object v5, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    iget-object v3, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v6, v3, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v3, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v3, v3, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    const/4 v8, 0x0

    iget-object v3, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v9, v3, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-object v3, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    .line 1065
    invoke-direct {v1, v3}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getLayoutID(Lcom/oculus/android/exoplayer2/Format;)I

    move-result v11

    iget-object v3, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v12

    iget-object v13, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iget-object v14, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iget v15, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    iget-object v3, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iget-object v4, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iget v0, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v0

    .line 1064
    invoke-virtual/range {v5 .. v18}, Lcom/oculus/video/renderer/VideoDirectDecoder;->writeBufferWithCrypto(Ljava/nio/ByteBuffer;IIJIZ[B[BI[I[II)V

    goto :goto_2

    .line 1069
    :cond_13
    sget-object v19, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    iget-object v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v3, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v3, v3, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v21

    const/16 v22, 0x0

    iget-object v3, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v3, v3, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-object v5, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    .line 1070
    invoke-direct {v1, v5}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getLayoutID(Lcom/oculus/android/exoplayer2/Format;)I

    move-result v25

    iget-object v5, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v5}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v26

    move-object/from16 v20, v0

    move-wide/from16 v23, v3

    .line 1069
    invoke-virtual/range {v19 .. v26}, Lcom/oculus/video/renderer/VideoDirectDecoder;->writeBuffer(Ljava/nio/ByteBuffer;IIJIZ)V

    .line 1072
    :goto_2
    iput-boolean v2, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->inputBufferSet:Z

    const/4 v0, 0x1

    .line 1073
    iput-boolean v0, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReceivedBuffers:Z

    .line 1074
    iput v2, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReconfigurationState:I

    .line 1075
    iget-object v2, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    iget v3, v2, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception v0

    .line 1077
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getIndex()I

    move-result v2

    invoke-static {v0, v2}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_14
    :goto_3
    return v2
.end method

.method private final maybeInitCodec()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 734
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->shouldInitCodec()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    .line 738
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 741
    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 742
    invoke-interface {v1}, Lcom/oculus/android/exoplayer2/drm/DrmSession;->getMediaCrypto()Lcom/oculus/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v1

    check-cast v1, Lcom/oculus/android/exoplayer2/drm/FrameworkMediaCrypto;

    if-nez v1, :cond_2

    .line 744
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/drm/DrmSession;->getError()Lcom/oculus/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 746
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 751
    :cond_2
    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/drm/FrameworkMediaCrypto;->getWrappedMediaCrypto()Landroid/media/MediaCrypto;

    move-result-object v4

    .line 752
    invoke-virtual {v1, v0}, Lcom/oculus/android/exoplayer2/drm/FrameworkMediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_3
    move-object v4, v3

    const/4 v1, 0x0

    .line 757
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->mediaCodecSelector:Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;

    iget-object v6, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-virtual {p0, v5, v6, v1}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getDecoderInfo(Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/oculus/android/exoplayer2/Format;Z)Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v5
    :try_end_0
    .catch Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_4

    if-eqz v1, :cond_4

    .line 763
    :try_start_1
    iget-object v6, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->mediaCodecSelector:Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;

    iget-object v7, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-virtual {p0, v6, v7, v2}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getDecoderInfo(Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/oculus/android/exoplayer2/Format;Z)Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "OculusVideoRenderer"

    .line 765
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Drm session requires secure decoder for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "no secure decoder available. Trying to proceed with "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v3

    .line 770
    :goto_1
    new-instance v6, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$DecoderInitializationException;

    iget-object v7, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    const v8, -0xc34e

    invoke-direct {v6, v7, v0, v1, v8}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$DecoderInitializationException;-><init>(Lcom/oculus/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v6}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->throwDecoderInitError(Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$DecoderInitializationException;)V

    :cond_4
    :goto_2
    if-nez v5, :cond_5

    .line 775
    new-instance v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$DecoderInitializationException;

    iget-object v6, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    const v7, -0xc34f

    invoke-direct {v0, v6, v3, v1, v7}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$DecoderInitializationException;-><init>(Lcom/oculus/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->throwDecoderInitError(Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$DecoderInitializationException;)V

    .line 780
    :cond_5
    iget-object v0, v5, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 781
    iget-boolean v6, v5, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    iput-boolean v6, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecIsAdaptive:Z

    .line 782
    invoke-static {v0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsAdaptationWorkaround(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsAdaptationWorkaround:Z

    .line 783
    invoke-static {v0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 784
    invoke-static {v0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 786
    :try_start_2
    iget-object v6, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-direct {p0, v5, v3, v6, v4}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->configureCodec(Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/oculus/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    .line 788
    new-instance v4, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$DecoderInitializationException;

    iget-object v5, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-direct {v4, v5, v3, v1, v0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$DecoderInitializationException;-><init>(Lcom/oculus/android/exoplayer2/Format;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->throwDecoderInitError(Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$DecoderInitializationException;)V

    .line 791
    :goto_3
    invoke-virtual {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 792
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    add-long/2addr v0, v3

    goto :goto_4

    :cond_6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4
    iput-wide v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecHotswapDeadlineMs:J

    .line 793
    iput-boolean v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->inputBufferSet:Z

    const/4 v0, 0x1

    .line 794
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->waitingForFirstSyncFrame:Z

    .line 795
    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    return-void
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 6

    .line 1436
    iget v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_0

    .line 1437
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1438
    iget-wide v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 1439
    iget-object v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->eventDispatcher:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    const/4 v2, 0x0

    .line 1440
    iput v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->droppedFrames:I

    .line 1441
    iput-wide v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_0
    return-void
.end method

.method private maybeNotifyRenderedFirstFrame()V
    .locals 5

    .line 1456
    iget-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->releasedFirstFrame:Z

    if-eqz v0, :cond_0

    .line 1458
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastReleaseTimeNs:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x416fca0540000000L    # 1.6666666E7

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    .line 1459
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->renderedFirstFrame:Z

    .line 1460
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->shouldReleaseNextFrame:Z

    .line 1461
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->eventDispatcher:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private maybeNotifyVideoSizeChanged(J)V
    .locals 5

    .line 1473
    sget-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/VideoDirectDecoder;->checkRenderTextureSizeChange()V

    .line 1474
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    iget-wide v0, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->presentationTimeUs:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    iget-wide v0, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->presentationTimeUs:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->reportedVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    iget-object p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    .line 1476
    invoke-virtual {p1, p2}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->equals(Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1477
    iget-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->eventDispatcher:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    iget p2, p2, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->width:I

    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    iget v0, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->height:I

    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    iget v1, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->rotationDegrees:I

    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    iget v2, v2, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->pixelWidthHeightRatio:F

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    .line 1481
    iget-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->reportedVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    iget-object p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    invoke-virtual {p1, p2}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->copy(Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;)V

    :cond_0
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .locals 2

    .line 1466
    iget-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->eventDispatcher:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .locals 5

    .line 1486
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->reportedVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    iget v0, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->reportedVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    iget v0, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->height:I

    if-eq v0, v1, :cond_1

    .line 1488
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->eventDispatcher:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    iget v1, v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->width:I

    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    iget v2, v2, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->height:I

    iget-object v3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    iget v3, v3, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->rotationDegrees:I

    iget-object v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    iget v4, v4, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->pixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    :cond_1
    return-void
.end method

.method private maybeRequestVideoBufferRelease()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1289
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->videoBufferReleaseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1291
    :try_start_0
    sget-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/VideoDirectDecoder;->isActive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1327
    :goto_0
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->videoBufferReleaseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 1295
    :cond_0
    :try_start_1
    sget-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/VideoDirectDecoder;->getNextRenderBufferPresentationTime()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_0

    .line 1300
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getState()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    iget-wide v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastPositionUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    iget-wide v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastElapsedRealtimeUs:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1306
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    iget-wide v8, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastElapsedRealtimeUs:J

    sub-long/2addr v4, v8

    .line 1307
    iget-wide v8, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastPositionUs:J

    add-long/2addr v8, v4

    sub-long v4, v2, v8

    .line 1310
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1311
    invoke-static {v4, v5}, Ljava/lang/Long;->signum(J)I

    mul-long v4, v4, v6

    add-long/2addr v4, v8

    .line 1314
    :try_start_2
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->frameReleaseTimeHelper:Lcom/oculus/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/oculus/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->adjustReleaseTime(JJ)J

    move-result-wide v4

    sub-long/2addr v4, v8

    .line 1316
    div-long/2addr v4, v6

    const-wide/16 v6, -0x1f40

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    const-wide/16 v6, 0x5dc0

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    .line 1320
    iget-boolean v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->shouldReleaseNextFrame:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_4

    goto :goto_2

    .line 1327
    :cond_4
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->videoBufferReleaseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    .line 1322
    :cond_5
    :goto_2
    :try_start_3
    invoke-direct {p0, v2, v3}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->releaseVideoBufferToRender(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1327
    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->videoBufferReleaseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->videoBufferReleaseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_6
    :goto_3
    return v1
.end method

.method private processEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1709
    iget v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReinitializationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1711
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->releaseCodec()V

    .line 1712
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeInitCodec()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1714
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->outputStreamEnded:Z

    :goto_0
    return-void
.end method

.method private releaseCodec()V
    .locals 3

    .line 869
    sget-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/VideoDirectDecoder;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    sget-object v2, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v2}, Lcom/oculus/video/renderer/VideoDirectDecoder;->stop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 871
    iput-wide v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecHotswapDeadlineMs:J

    const/4 v0, 0x0

    .line 872
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->inputBufferSet:Z

    .line 873
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->waitingForKeys:Z

    .line 874
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReconfigured:Z

    .line 875
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReceivedBuffers:Z

    .line 876
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecIsAdaptive:Z

    .line 877
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsAdaptationWorkaround:Z

    .line 878
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 879
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 880
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReceivedEos:Z

    .line 881
    iput v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReconfigurationState:I

    .line 882
    iput v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReinitializationState:I

    .line 883
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 884
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->buffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 885
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    if-eq v2, v0, :cond_0

    .line 887
    :try_start_0
    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSessionManager:Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v2, v0}, Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/oculus/android/exoplayer2/drm/DrmSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    iput-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private releaseVideoBufferToRender(J)V
    .locals 5

    .line 1423
    iput-wide p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastPresentationTimeUs:J

    .line 1424
    invoke-direct {p0, p1, p2}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(J)V

    .line 1426
    sget-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/VideoDirectDecoder;->requestVideoBufferRelease()V

    .line 1427
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 v0, 0x0

    .line 1428
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->shouldReleaseNextFrame:Z

    .line 1429
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastReleaseTimeNs:J

    .line 1430
    iput-wide p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastEmittedPresentationTimeUs:J

    .line 1431
    iput-boolean v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->releasedFirstFrame:Z

    .line 1432
    iput v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    return-void
.end method

.method private setJoiningDeadlineMs()V
    .locals 5

    .line 1449
    iget-wide v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1450
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->joiningDeadlineMs:J

    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_3

    .line 623
    iput-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 624
    invoke-virtual {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getState()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_1

    .line 626
    :cond_0
    sget v0, Lcom/oculus/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_1

    .line 627
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->releaseCodec()V

    .line 628
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeInitCodec()V

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 633
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 635
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    if-ne p1, v1, :cond_4

    .line 637
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_0

    .line 641
    :cond_2
    iget-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->reportedVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    invoke-virtual {p1}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->clear()V

    .line 642
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 647
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 648
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    :cond_4
    :goto_0
    return-void
.end method

.method private shouldInitCodec()Z
    .locals 1

    .line 523
    sget-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/VideoDirectDecoder;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1104
    :cond_0
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    if-nez p1, :cond_1

    .line 1108
    iget-boolean p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->playClearSamplesWithoutKeys:Z

    if-nez p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 1106
    :cond_3
    iget-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/drm/DrmSession;->getError()Lcom/oculus/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method private supportsFormat(Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/oculus/android/exoplayer2/Format;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 452
    iget-object v0, p2, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 453
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 457
    :cond_0
    iget-object v1, p2, Lcom/oculus/android/exoplayer2/Format;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 459
    :goto_0
    iget v5, v1, Lcom/oculus/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    if-ge v3, v5, :cond_2

    .line 460
    invoke-virtual {v1, v3}, Lcom/oculus/android/exoplayer2/drm/DrmInitData;->get(I)Lcom/oculus/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v5

    iget-boolean v5, v5, Lcom/oculus/android/exoplayer2/drm/DrmInitData$SchemeData;->requiresSecureDecryption:Z

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 463
    :cond_2
    invoke-interface {p1, v0, v4}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    return v0

    .line 469
    :cond_3
    iget-object v1, p2, Lcom/oculus/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;->isCodecSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 470
    iget v3, p2, Lcom/oculus/android/exoplayer2/Format;->width:I

    if-lez v3, :cond_d

    iget v3, p2, Lcom/oculus/android/exoplayer2/Format;->height:I

    if-lez v3, :cond_d

    .line 471
    sget v1, Lcom/oculus/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_b

    .line 478
    iget v1, p2, Lcom/oculus/android/exoplayer2/Format;->width:I

    const/16 v3, 0x1000

    if-gt v1, v3, :cond_4

    iget v1, p2, Lcom/oculus/android/exoplayer2/Format;->height:I

    if-gt v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_6

    .line 479
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "oculus"

    .line 480
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, 0x1

    .line 482
    :goto_3
    iget v3, p2, Lcom/oculus/android/exoplayer2/Format;->width:I

    iget v4, p2, Lcom/oculus/android/exoplayer2/Format;->height:I

    mul-int v3, v3, v4

    int-to-double v3, v3

    iget v5, p2, Lcom/oculus/android/exoplayer2/Format;->frameRate:F

    float-to-double v5, v5

    .line 483
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    const-wide v5, 0x41ca5e0000000000L    # 8.84736E8

    cmpg-double v7, v3, v5

    if-gtz v7, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    if-eqz v1, :cond_8

    if-nez v3, :cond_9

    .line 485
    :cond_8
    iget v1, p2, Lcom/oculus/android/exoplayer2/Format;->width:I

    iget v3, p2, Lcom/oculus/android/exoplayer2/Format;->height:I

    iget p2, p2, Lcom/oculus/android/exoplayer2/Format;->frameRate:F

    float-to-double v4, p2

    .line 486
    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result p2

    if-eqz p2, :cond_a

    :cond_9
    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    goto :goto_6

    .line 488
    :cond_b
    iget v1, p2, Lcom/oculus/android/exoplayer2/Format;->width:I

    iget v3, p2, Lcom/oculus/android/exoplayer2/Format;->height:I

    mul-int v1, v1, v3

    invoke-static {}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v3

    if-gt v1, v3, :cond_c

    const/4 v1, 0x1

    goto :goto_5

    :cond_c
    const/4 v1, 0x0

    :goto_5
    if-nez v1, :cond_d

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FalseCheck [legacyFrameSize, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/oculus/android/exoplayer2/Format;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/oculus/android/exoplayer2/Format;->height:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/oculus/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OculusVideoRenderer"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_d
    :goto_6
    iget-boolean p2, p1, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    if-eqz p2, :cond_e

    const/16 p2, 0x10

    goto :goto_7

    :cond_e
    const/16 p2, 0x8

    .line 497
    :goto_7
    iget-boolean p1, p1, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;->tunneling:Z

    if-eqz p1, :cond_f

    const/16 v2, 0x20

    :cond_f
    if-eqz v1, :cond_10

    const/4 p1, 0x4

    goto :goto_8

    :cond_10
    const/4 p1, 0x3

    :goto_8
    or-int/2addr p2, v2

    or-int/2addr p1, p2

    return p1
.end method

.method private throwDecoderInitError(Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$DecoderInitializationException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 519
    invoke-virtual {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method protected canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/Format;)Z
    .locals 0

    .line 1210
    invoke-static {p2, p3, p4}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->areAdaptationCompatible(ZLcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p4, Lcom/oculus/android/exoplayer2/Format;->width:I

    iget-object p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecMaxValues:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;

    iget p2, p2, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;->width:I

    if-gt p1, p2, :cond_0

    iget p1, p4, Lcom/oculus/android/exoplayer2/Format;->height:I

    iget-object p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecMaxValues:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;

    iget p2, p2, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;->height:I

    if-gt p1, p2, :cond_0

    iget p1, p4, Lcom/oculus/android/exoplayer2/Format;->maxInputSize:I

    iget-object p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecMaxValues:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;

    iget p2, p2, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected flushCodec()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 896
    sget-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/VideoDirectDecoder;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 897
    iput-wide v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecHotswapDeadlineMs:J

    const/4 v0, 0x0

    .line 898
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->inputBufferSet:Z

    const/4 v1, 0x1

    .line 899
    iput-boolean v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->waitingForFirstSyncFrame:Z

    .line 900
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->waitingForKeys:Z

    .line 901
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 902
    iget-boolean v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReceivedEos:Z

    if-eqz v2, :cond_0

    .line 903
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->releaseCodec()V

    .line 904
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeInitCodec()V

    goto :goto_0

    .line 905
    :cond_0
    iget v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReinitializationState:I

    if-eqz v2, :cond_1

    .line 908
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->releaseCodec()V

    .line 909
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeInitCodec()V

    goto :goto_0

    .line 912
    :cond_1
    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    iget v3, v2, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    sget-object v4, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v4}, Lcom/oculus/video/renderer/VideoDirectDecoder;->onPositionReset()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 913
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReceivedBuffers:Z

    .line 915
    :goto_0
    iget-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReconfigured:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    if-eqz v0, :cond_2

    .line 918
    iput v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReconfigurationState:I

    .line 923
    :cond_2
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    return-void
.end method

.method public getCurrentFrameCropRect()Landroid/graphics/Rect;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->reportedVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method protected getDecoderInfo(Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/oculus/android/exoplayer2/Format;Z)Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 514
    iget-object p2, p2, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p1

    return-object p1
.end method

.method public getLastPresentationTimeUs()J
    .locals 2

    .line 1789
    iget-wide v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastPresentationTimeUs:J

    return-wide v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 529
    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 531
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oculus/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 729
    iget-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 9

    .line 707
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 708
    iget-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->renderedFirstFrame:Z

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->shouldInitCodec()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->waitingForKeys:Z

    if-nez v0, :cond_2

    .line 710
    invoke-virtual {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecHotswapDeadlineMs:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecHotswapDeadlineMs:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    .line 712
    :cond_1
    iput-wide v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v1

    .line 714
    :cond_2
    iget-wide v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    return v0

    .line 717
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    return v1

    .line 722
    :cond_4
    iput-wide v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v0
.end method

.method protected maybeDropBuffersToKeyframe(J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1391
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->waitingForDropToKey:Z

    .line 1392
    invoke-virtual {p0, p1, p2}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->skipSource(J)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 1394
    iput-boolean p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->waitingForDropToKey:Z

    return p2

    .line 1397
    :cond_0
    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 1400
    sget-object v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v1}, Lcom/oculus/video/renderer/VideoDirectDecoder;->getBuffersInCodecCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 1401
    invoke-virtual {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->flushCodec()V

    .line 1402
    iput-boolean p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->waitingForDropToKey:Z

    return v0
.end method

.method protected maybeRequestVideoBufferRelease(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1230
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastExoPlaybackException:Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    if-nez v0, :cond_9

    .line 1236
    iput-wide p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastPositionUs:J

    .line 1237
    iput-wide p3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastElapsedRealtimeUs:J

    .line 1239
    sget-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/VideoDirectDecoder;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1243
    :cond_0
    sget-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/VideoDirectDecoder;->isOutputStreamEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1244
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->processEndOfStream()V

    return-void

    .line 1248
    :cond_1
    sget-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/VideoDirectDecoder;->getNextRenderBufferPresentationTime()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    return-void

    .line 1253
    :cond_2
    iget-boolean v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->releasedFirstFrame:Z

    if-nez v2, :cond_3

    .line 1255
    invoke-direct {p0, v0, v1}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->releaseVideoBufferToRender(J)V

    .line 1260
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    sub-long/2addr v2, p3

    add-long/2addr v2, p1

    sub-long p3, v0, v2

    .line 1262
    invoke-virtual {p0, p3, p4, v0, v1}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->shouldDropBuffersToKeyframe(JJ)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1263
    invoke-virtual {p0, p1, p2}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeDropBuffersToKeyframe(J)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 1267
    :cond_4
    iget-wide p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastRenderTimeMs:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmp-long v2, p1, p3

    if-eqz v2, :cond_5

    .line 1269
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastRenderTimeMs:J

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x64

    cmp-long v2, p1, p3

    if-lez v2, :cond_5

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 1270
    :goto_0
    iget-boolean p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->shouldReleaseNextFrame:Z

    if-nez p2, :cond_7

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_1
    iput-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->shouldReleaseNextFrame:Z

    .line 1274
    iget-boolean p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->shouldReleaseNextFrame:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-eqz p1, :cond_8

    .line 1275
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeRequestVideoBufferRelease()Z

    :cond_8
    return-void

    :cond_9
    const/4 p1, 0x0

    .line 1232
    iput-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastExoPlaybackException:Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    .line 1233
    throw v0
.end method

.method protected onDisabled()V
    .locals 4

    .line 575
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->clear()V

    .line 576
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->reportedVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->clear()V

    .line 577
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 578
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->frameReleaseTimeHelper:Lcom/oculus/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->disable()V

    const/4 v0, 0x0

    .line 581
    :try_start_0
    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 583
    :try_start_1
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->releaseCodec()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 586
    :try_start_2
    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSessionManager:Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/oculus/android/exoplayer2/drm/DrmSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 591
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_1

    .line 592
    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSessionManager:Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/oculus/android/exoplayer2/drm/DrmSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 595
    :cond_1
    :try_start_4
    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    .line 596
    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 601
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 602
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->eventDispatcher:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v1

    .line 595
    :try_start_5
    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    .line 596
    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    :catchall_1
    move-exception v1

    .line 591
    :try_start_6
    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_2

    .line 592
    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSessionManager:Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/oculus/android/exoplayer2/drm/DrmSession;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 595
    :cond_2
    :try_start_7
    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    .line 596
    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    throw v1

    :catchall_2
    move-exception v1

    .line 595
    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    .line 596
    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catchall_3
    move-exception v1

    .line 586
    :try_start_8
    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_3

    .line 587
    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSessionManager:Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/oculus/android/exoplayer2/drm/DrmSession;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 591
    :cond_3
    :try_start_9
    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_4

    .line 592
    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSessionManager:Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/oculus/android/exoplayer2/drm/DrmSession;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 595
    :cond_4
    :try_start_a
    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    .line 596
    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    throw v1

    :catchall_4
    move-exception v1

    .line 595
    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    .line 596
    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_5
    move-exception v1

    .line 591
    :try_start_b
    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_5

    .line 592
    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSessionManager:Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/oculus/android/exoplayer2/drm/DrmSession;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 595
    :cond_5
    :try_start_c
    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    .line 596
    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    throw v1

    :catchall_6
    move-exception v1

    .line 595
    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    .line 596
    iput-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :catchall_7
    move-exception v0

    .line 601
    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 602
    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->eventDispatcher:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 537
    new-instance p1, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    .line 538
    iget-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->eventDispatcher:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, v0}, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;)V

    .line 539
    iget-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->frameReleaseTimeHelper:Lcom/oculus/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->enable()V

    return-void
.end method

.method protected onInputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1120
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    .line 1121
    iput-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    .line 1123
    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/Format;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/oculus/android/exoplayer2/Format;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    :goto_0
    invoke-static {v1, v3}, Lcom/oculus/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 1126
    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/Format;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    if-eqz v1, :cond_2

    .line 1127
    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSessionManager:Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;

    if-eqz v1, :cond_1

    .line 1131
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v5, v5, Lcom/oculus/android/exoplayer2/Format;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    invoke-interface {v1, v4, v5}, Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/oculus/android/exoplayer2/drm/DrmInitData;)Lcom/oculus/android/exoplayer2/drm/DrmSession;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    .line 1132
    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    iget-object v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    if-ne v1, v4, :cond_3

    .line 1133
    iget-object v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSessionManager:Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v4, v1}, Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/oculus/android/exoplayer2/drm/DrmSession;)V

    goto :goto_1

    .line 1128
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getIndex()I

    move-result v0

    .line 1128
    invoke-static {p1, v0}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 1136
    :cond_2
    iput-object v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    .line 1140
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->pendingDrmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    iget-object v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->drmSession:Lcom/oculus/android/exoplayer2/drm/DrmSession;

    const/4 v5, 0x0

    if-ne v1, v4, :cond_5

    sget-object v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v1}, Lcom/oculus/video/renderer/VideoDirectDecoder;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecIsAdaptive:Z

    iget-object v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    .line 1141
    invoke-virtual {p0, v2, v1, v0, v4}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/Format;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1142
    iput-boolean v3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReconfigured:Z

    .line 1143
    iput v3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReconfigurationState:I

    .line 1144
    iget-boolean v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsAdaptationWorkaround:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v1, v1, Lcom/oculus/android/exoplayer2/Format;->width:I

    iget v2, v0, Lcom/oculus/android/exoplayer2/Format;->width:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v1, v1, Lcom/oculus/android/exoplayer2/Format;->height:I

    iget v0, v0, Lcom/oculus/android/exoplayer2/Format;->height:I

    if-ne v1, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    goto :goto_3

    .line 1147
    :cond_5
    iget-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReceivedBuffers:Z

    if-eqz v0, :cond_6

    .line 1149
    iput v3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->codecReinitializationState:I

    goto :goto_3

    .line 1152
    :cond_6
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->releaseCodec()V

    .line 1153
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeInitCodec()V

    .line 1157
    :goto_3
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->eventDispatcher:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V

    .line 1159
    iget v0, p1, Lcom/oculus/android/exoplayer2/Format;->width:I

    .line 1160
    iget v1, p1, Lcom/oculus/android/exoplayer2/Format;->height:I

    .line 1161
    invoke-static {p1}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getPixelWidthHeightRatio(Lcom/oculus/android/exoplayer2/Format;)F

    move-result v2

    .line 1162
    invoke-static {p1}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getRotationDegrees(Lcom/oculus/android/exoplayer2/Format;)I

    move-result p1

    .line 1163
    sget v3, Lcom/oculus/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_9

    const/16 v3, 0x5a

    if-eq p1, v3, :cond_7

    const/16 v3, 0x10e

    if-ne p1, v3, :cond_8

    :cond_7
    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p1, v2

    move v2, p1

    move v6, v1

    move v1, v0

    move v0, v6

    :cond_8
    const/4 p1, 0x0

    .line 1175
    :cond_9
    iget-object v3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    invoke-virtual {v3, v0, v1, p1, v2}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->set(IIIF)V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 550
    iput-boolean p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->inputStreamEnded:Z

    .line 551
    iput-boolean p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->outputStreamEnded:Z

    .line 552
    iput p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 553
    invoke-virtual {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->flushCodec()V

    if-eqz p3, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 557
    iput-wide p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->joiningDeadlineMs:J

    :goto_0
    return-void
.end method

.method protected onQueueInputBuffer(Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 5

    .line 1186
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    iget-wide v0, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->presentationTimeUs:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->currentVideoSizeParams:Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;

    iget-wide v1, p1, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v1, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->presentationTimeUs:J

    :cond_0
    return-void
.end method

.method public onRender(Z)V
    .locals 2

    if-nez p1, :cond_1

    .line 1691
    iget-boolean p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->shouldReleaseNextFrame:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->shouldReleaseNextFrame:Z

    .line 1693
    :goto_2
    :try_start_0
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeRequestVideoBufferRelease()Z

    move-result p1
    :try_end_0
    .catch Lcom/oculus/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1696
    iput-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastExoPlaybackException:Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    .line 1700
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastRenderTimeMs:J

    return-void
.end method

.method protected onStarted()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 563
    iput-wide v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->joiningDeadlineMs:J

    return-void
.end method

.method protected onStopped()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 568
    iput-wide v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastPositionUs:J

    .line 569
    iput-wide v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastElapsedRealtimeUs:J

    .line 570
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    return-void
.end method

.method protected onStreamChanged([Lcom/oculus/android/exoplayer2/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 544
    iput-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->streamFormats:[Lcom/oculus/android/exoplayer2/Format;

    .line 545
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/BaseRenderer;->onStreamChanged([Lcom/oculus/android/exoplayer2/Format;J)V

    return-void
.end method

.method public render(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 658
    iget-boolean v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->format:Lcom/oculus/android/exoplayer2/Format;

    const/4 v1, -0x4

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->flagsOnlyBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 664
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->formatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

    iget-object v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->flagsOnlyBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v4, v3}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->readSource(Lcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 666
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->formatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/FormatHolder;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->onInputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 669
    iget-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->flagsOnlyBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 670
    iput-boolean v3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->inputStreamEnded:Z

    .line 671
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->processEndOfStream()V

    :cond_2
    return-void

    .line 679
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeInitCodec()V

    .line 680
    sget-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/VideoDirectDecoder;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "drainAndFeed"

    .line 681
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeRequestVideoBufferRelease(JJ)V

    .line 683
    :goto_1
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeFeedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 685
    :cond_4
    invoke-static {}, Lcom/oculus/android/exoplayer2/util/TraceUtil;->endSection()V

    goto :goto_2

    .line 687
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->skipSource(J)I

    .line 692
    iget-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->flagsOnlyBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 693
    iget-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->formatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

    iget-object p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->flagsOnlyBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->readSource(Lcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 695
    iget-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->formatHolder:Lcom/oculus/android/exoplayer2/FormatHolder;

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/FormatHolder;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-virtual {p0, p1}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->onInputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V

    goto :goto_2

    :cond_6
    if-ne p1, v1, :cond_7

    .line 697
    iget-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->flagsOnlyBuffer:Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 698
    iput-boolean v3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->inputStreamEnded:Z

    .line 699
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->processEndOfStream()V

    .line 702
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJ)Z
    .locals 7

    .line 1363
    iget-wide v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastEmittedPresentationTimeUs:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    .line 1364
    iget-wide v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastEmittedPresentationTimeUs:J

    sub-long/2addr p3, v4

    long-to-double p3, p3

    div-double/2addr v0, p3

    const-wide p3, 0x4046800000000000L    # 45.0

    cmpl-double v4, v0, p3

    if-lez v4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    const-wide/32 p3, -0x7a120

    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method protected shouldDropOutputBuffer(JJ)Z
    .locals 7

    .line 1347
    iget-wide v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastEmittedPresentationTimeUs:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    .line 1348
    iget-wide v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->lastEmittedPresentationTimeUs:J

    sub-long/2addr p3, v4

    long-to-double p3, p3

    div-double/2addr v0, p3

    const-wide p3, 0x4046800000000000L    # 45.0

    cmpl-double v4, v0, p3

    if-lez v4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 1351
    invoke-static {p1, p2}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public final supportsFormat(Lcom/oculus/android/exoplayer2/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->formatSupportMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/Format;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->mediaCodecSelector:Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;

    invoke-direct {p0, v0, p1}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->supportsFormat(Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/oculus/android/exoplayer2/Format;)I

    move-result v0

    .line 434
    iget-object v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->formatSupportMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/Format;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_0
    .catch Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 437
    invoke-virtual {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
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

.method protected updateDroppedBufferCounters(I)V
    .locals 2

    .line 1411
    iget-object v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    .line 1412
    iget v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->droppedFrames:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->droppedFrames:I

    .line 1413
    iget v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1414
    iget-object p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->decoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget v1, p1, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 1416
    iget p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->droppedFrames:I

    const/16 v0, 0x32

    if-lt p1, v0, :cond_0

    .line 1417
    invoke-direct {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_0
    return-void
.end method
