.class public Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;
.super Ljava/lang/Object;
.source "OculusExoPlayer.java"

# interfaces
.implements Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/OculusExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OculusVideoRendererEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/OculusExoPlayer;


# direct methods
.method protected constructor <init>(Lcom/oculus/video/OculusExoPlayer;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProjectionType(Lcom/oculus/android/exoplayer2/Format;)Lcom/oculus/video/projection/ProjectionType;
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$1200(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/projection/VideoProjection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    .line 464
    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$1200(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/projection/VideoProjection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/video/projection/VideoProjection;->getProjectionData()Lcom/oculus/video/projection/ProjectionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/video/projection/ProjectionData;->getProjectionType()Lcom/oculus/video/projection/ProjectionType;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

    .line 466
    :goto_0
    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v1}, Lcom/oculus/video/OculusExoPlayer;->access$1800(Lcom/oculus/video/OculusExoPlayer;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v1}, Lcom/oculus/video/OculusExoPlayer;->access$1800(Lcom/oculus/video/OculusExoPlayer;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p1, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    .line 467
    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$1800(Lcom/oculus/video/OculusExoPlayer;)Ljava/util/Map;

    move-result-object v0

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oculus/video/projection/ProjectionType;

    :cond_1
    return-object v0
.end method

.method public onDroppedFrames(IJ)V
    .locals 19

    move-object/from16 v0, p0

    .line 401
    iget-object v1, v0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v1}, Lcom/oculus/video/OculusExoPlayer;->access$1500(Lcom/oculus/video/OculusExoPlayer;)J

    move-result-wide v1

    .line 402
    iget-object v3, v0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v3}, Lcom/oculus/video/OculusExoPlayer;->access$1600(Lcom/oculus/video/OculusExoPlayer;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    sub-long v7, v1, v3

    .line 407
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 409
    iget-object v9, v0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v9}, Lcom/oculus/video/OculusExoPlayer;->access$1700(Lcom/oculus/video/OculusExoPlayer;)J

    move-result-wide v10

    sub-long/2addr v3, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    sub-long/2addr v10, v3

    invoke-static {v9, v10, v11}, Lcom/oculus/video/OculusExoPlayer;->access$1702(Lcom/oculus/video/OculusExoPlayer;J)J

    move/from16 v3, p1

    move-wide v8, v7

    goto :goto_0

    :cond_0
    move/from16 v3, p1

    move-wide v8, v5

    :goto_0
    int-to-long v6, v3

    add-long/2addr v1, v6

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 419
    iget-object v5, v0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v5}, Lcom/oculus/video/OculusExoPlayer;->access$1000(Lcom/oculus/video/OculusExoPlayer;)J

    move-result-wide v10

    sub-long v17, v3, v10

    .line 420
    iget-object v5, v0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v5, v3, v4}, Lcom/oculus/video/OculusExoPlayer;->access$1002(Lcom/oculus/video/OculusExoPlayer;J)J

    .line 424
    iget-object v3, v0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v3}, Lcom/oculus/video/OculusExoPlayer;->access$1300(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/android/exoplayer2/Renderer;

    move-result-object v3

    instance-of v3, v3, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    .line 425
    invoke-static {v3}, Lcom/oculus/video/OculusExoPlayer;->access$600(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/trackselection/OculusTrackSelectorManager;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v3}, Lcom/oculus/video/OculusExoPlayer;->access$600(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/trackselection/OculusTrackSelectorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->getTrackSelector()Lcom/oculus/video/trackselection/OculusTrackSelector;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 426
    iget-object v3, v0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v3}, Lcom/oculus/video/OculusExoPlayer;->access$600(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/trackselection/OculusTrackSelectorManager;

    move-result-object v3

    .line 427
    invoke-virtual {v3}, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->getTrackSelector()Lcom/oculus/video/trackselection/OculusTrackSelector;

    move-result-object v10

    move-wide v11, v6

    move-wide v13, v1

    move-wide/from16 v15, v17

    .line 428
    invoke-virtual/range {v10 .. v16}, Lcom/oculus/video/trackselection/OculusTrackSelector;->onDroppedDelayedFrame(JJJ)V

    .line 431
    :cond_1
    iget-object v3, v0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v3}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v3

    move-wide/from16 v4, v17

    move-wide v10, v1

    invoke-interface/range {v3 .. v11}, Lcom/oculus/video/VideoPlayer$EventListener;->onDroppedFrames(JJJJ)V

    return-void
.end method

.method public onRenderedFirstFrame(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public onVideoDisabled(Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$800(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    .line 455
    invoke-virtual {p0, p1, v0, v1}, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->onDroppedFrames(IJ)V

    .line 456
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/oculus/video/OculusExoPlayer;->access$802(Lcom/oculus/video/OculusExoPlayer;Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;)Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    .line 457
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {p1, v0, v1}, Lcom/oculus/video/OculusExoPlayer;->access$1002(Lcom/oculus/video/OculusExoPlayer;J)J

    :cond_0
    return-void
.end method

.method public onVideoEnabled(Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$800(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    move-result-object v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/oculus/video/OculusExoPlayer;->access$902(Lcom/oculus/video/OculusExoPlayer;J)J

    .line 370
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0, p1}, Lcom/oculus/video/OculusExoPlayer;->access$802(Lcom/oculus/video/OculusExoPlayer;Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;)Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    .line 371
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/oculus/video/OculusExoPlayer;->access$1002(Lcom/oculus/video/OculusExoPlayer;J)J

    :cond_0
    return-void
.end method

.method public onVideoInputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V
    .locals 13

    .line 381
    iget-object v0, p1, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/oculus/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    :goto_0
    move-object v9, v0

    .line 385
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {p1}, Lcom/oculus/video/projection/VideoProjection;->fromSphericalV2(Lcom/oculus/android/exoplayer2/Format;)Lcom/oculus/video/projection/VideoProjection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/video/OculusExoPlayer;->access$1100(Lcom/oculus/video/OculusExoPlayer;Lcom/oculus/video/projection/VideoProjection;)V

    .line 387
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v1

    iget v2, p1, Lcom/oculus/android/exoplayer2/Format;->width:I

    iget v3, p1, Lcom/oculus/android/exoplayer2/Format;->height:I

    iget v0, p1, Lcom/oculus/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    iget v0, p1, Lcom/oculus/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    :goto_1
    iget v5, p1, Lcom/oculus/android/exoplayer2/Format;->rotationDegrees:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    iget v5, p1, Lcom/oculus/android/exoplayer2/Format;->rotationDegrees:I

    :goto_2
    iget-object v6, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    .line 391
    invoke-static {v6}, Lcom/oculus/video/OculusExoPlayer;->access$1200(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/projection/VideoProjection;

    move-result-object v6

    iget v7, p1, Lcom/oculus/android/exoplayer2/Format;->frameRate:F

    cmpl-float v4, v7, v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    iget v4, p1, Lcom/oculus/android/exoplayer2/Format;->frameRate:F

    move v7, v4

    :goto_3
    iget v8, p1, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    iget-object v4, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    .line 395
    invoke-static {v4}, Lcom/oculus/video/OculusExoPlayer;->access$1300(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/android/exoplayer2/Renderer;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, ""

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v4}, Lcom/oculus/video/OculusExoPlayer;->access$1300(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/android/exoplayer2/Renderer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_4
    move-object v10, v4

    iget-object v4, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    .line 396
    invoke-static {v4}, Lcom/oculus/video/OculusExoPlayer;->access$1400(Lcom/oculus/video/OculusExoPlayer;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v4}, Lcom/oculus/video/OculusExoPlayer;->access$1400(Lcom/oculus/video/OculusExoPlayer;)Ljava/util/Map;

    move-result-object v4

    iget-object v11, p1, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-interface {v4, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v4}, Lcom/oculus/video/OculusExoPlayer;->access$1400(Lcom/oculus/video/OculusExoPlayer;)Ljava/util/Map;

    move-result-object v4

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    goto :goto_5

    :cond_5
    const-wide/16 v11, 0x0

    :goto_5
    move v4, v0

    .line 387
    invoke-interface/range {v1 .. v12}, Lcom/oculus/video/VideoPlayer$EventListener;->onVideoFormatChanged(IIFILcom/oculus/video/projection/VideoProjection;FILjava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1

    .line 437
    iget-object p3, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {p3}, Lcom/oculus/video/OculusExoPlayer;->access$600(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/trackselection/OculusTrackSelectorManager;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {p3}, Lcom/oculus/video/OculusExoPlayer;->access$600(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/trackselection/OculusTrackSelectorManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->getTrackSelector()Lcom/oculus/video/trackselection/OculusTrackSelector;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 438
    iget-object p3, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {p3}, Lcom/oculus/video/OculusExoPlayer;->access$600(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/trackselection/OculusTrackSelectorManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->getTrackSelector()Lcom/oculus/video/trackselection/OculusTrackSelector;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/oculus/video/trackselection/OculusTrackSelector;->onVideoSizeChange(II)V

    :cond_0
    const/4 p3, 0x0

    .line 441
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$1300(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/android/exoplayer2/Renderer;

    move-result-object v0

    instance-of v0, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;

    if-eqz v0, :cond_1

    .line 442
    iget-object p3, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {p3}, Lcom/oculus/video/OculusExoPlayer;->access$1300(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/android/exoplayer2/Renderer;

    move-result-object p3

    check-cast p3, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;

    invoke-virtual {p3}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->getCurrentFrameCropRect()Landroid/graphics/Rect;

    move-result-object p3

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p4, p3}, Lcom/oculus/video/VideoPlayer$EventListener;->onVideoSizeChanged(IIFLandroid/graphics/Rect;)V

    return-void
.end method
