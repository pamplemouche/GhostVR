.class public Lcom/oculus/video/renderer/VanillaMediaCodecVideoRenderer;
.super Lcom/oculus/android/exoplayer2/video/MediaCodecVideoRenderer;
.source "VanillaMediaCodecVideoRenderer.java"

# interfaces
.implements Lcom/oculus/video/renderer/FrameReleaser;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private volatile lastPresentationTimeUs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/oculus/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 0
    .param p5    # Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
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
            "I)V"
        }
    .end annotation

    .line 76
    invoke-direct/range {p0 .. p9}, Lcom/oculus/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/oculus/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;I)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 51
    iput-wide p1, p0, Lcom/oculus/video/renderer/VanillaMediaCodecVideoRenderer;->lastPresentationTimeUs:J

    return-void
.end method


# virtual methods
.method public getLastPresentationTimeUs()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/oculus/video/renderer/VanillaMediaCodecVideoRenderer;->lastPresentationTimeUs:J

    return-wide v0
.end method

.method protected renderOutputBuffer(Landroid/media/MediaCodec;IJ)V
    .locals 0

    .line 89
    iput-wide p3, p0, Lcom/oculus/video/renderer/VanillaMediaCodecVideoRenderer;->lastPresentationTimeUs:J

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oculus/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;IJ)V

    return-void
.end method

.method protected renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 105
    iput-wide p3, p0, Lcom/oculus/video/renderer/VanillaMediaCodecVideoRenderer;->lastPresentationTimeUs:J

    .line 106
    invoke-super/range {p0 .. p6}, Lcom/oculus/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V

    return-void
.end method
