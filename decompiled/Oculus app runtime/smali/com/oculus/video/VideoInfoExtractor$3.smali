.class Lcom/oculus/video/VideoInfoExtractor$3;
.super Ljava/lang/Object;
.source "VideoInfoExtractor.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/VideoInfoExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/VideoInfoExtractor;


# direct methods
.method constructor <init>(Lcom/oculus/video/VideoInfoExtractor;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/oculus/video/VideoInfoExtractor$3;->this$0:Lcom/oculus/video/VideoInfoExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/oculus/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lcom/oculus/android/exoplayer2/ExoPlaybackException;)V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "frame-rate"

    const-string v2, "rotation-degrees"

    const-string v3, "height"

    const-string v4, "width"

    const-string v5, "channel-count"

    .line 401
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 410
    :try_start_0
    new-instance v6, Landroid/media/MediaExtractor;

    invoke-direct {v6}, Landroid/media/MediaExtractor;-><init>()V

    .line 411
    iget-object v7, v0, Lcom/oculus/video/VideoInfoExtractor$3;->this$0:Lcom/oculus/video/VideoInfoExtractor;

    invoke-static {v7}, Lcom/oculus/video/VideoInfoExtractor;->access$000(Lcom/oculus/video/VideoInfoExtractor;)Lcom/oculus/video/Video;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oculus/video/Video;->getVideoUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, ""

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    move-object v11, v8

    move-object v12, v11

    const/4 v8, 0x0

    const/high16 v14, -0x40800000    # -1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_0
    if-ge v8, v7, :cond_a

    .line 415
    :try_start_1
    invoke-virtual {v6, v8}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v13

    const-string v10, "mime"

    .line 416
    invoke-virtual {v13, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v19, v6

    .line 417
    invoke-static {v10}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v6

    move/from16 v20, v7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 419
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v11, v10

    .line 422
    :cond_0
    invoke-virtual {v13, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 423
    invoke-virtual {v13, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 425
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    .line 427
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v12, v10

    .line 432
    :cond_3
    invoke-virtual {v13, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 433
    invoke-virtual {v13, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v15

    .line 435
    :cond_4
    invoke-virtual {v13, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 436
    invoke-virtual {v13, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v16

    :cond_5
    move/from16 v7, v16

    .line 438
    invoke-virtual {v13, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v10, v6, :cond_6

    .line 440
    invoke-virtual {v13, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v18

    :cond_6
    if-lez v15, :cond_7

    if-lez v7, :cond_7

    int-to-float v6, v15

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v6, v6, v10

    int-to-float v10, v7

    div-float v17, v6, v10

    .line 445
    :cond_7
    invoke-virtual {v13, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 446
    invoke-virtual {v13, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    int-to-float v14, v6

    :cond_8
    move/from16 v16, v7

    :cond_9
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v19

    move/from16 v7, v20

    goto/16 :goto_0

    .line 450
    :cond_a
    iget-object v6, v0, Lcom/oculus/video/VideoInfoExtractor$3;->this$0:Lcom/oculus/video/VideoInfoExtractor;

    sget-object v7, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v1, ""

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v8, v11

    move-object v10, v12

    move-object v11, v1

    move-object v12, v2

    invoke-static/range {v6 .. v20}, Lcom/oculus/video/VideoInfoExtractor;->access$200(Lcom/oculus/video/VideoInfoExtractor;Lcom/oculus/video/audio/AudioChannelLayout;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/video/projection/VideoProjection;FIIFIZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 467
    :catch_0
    iget-object v1, v0, Lcom/oculus/video/VideoInfoExtractor$3;->this$0:Lcom/oculus/video/VideoInfoExtractor;

    invoke-static {v1}, Lcom/oculus/video/VideoInfoExtractor;->access$300(Lcom/oculus/video/VideoInfoExtractor;)V

    :goto_3
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/oculus/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Lcom/oculus/android/exoplayer2/source/TrackGroupArray;Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 297
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 298
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v3, ""

    const/4 v6, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 310
    :goto_0
    iget v2, v1, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v2, :cond_d

    .line 311
    invoke-virtual {v1, v3}, Lcom/oculus/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/oculus/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v6

    const/4 v6, 0x0

    .line 312
    :goto_1
    iget v5, v2, Lcom/oculus/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v6, v5, :cond_c

    .line 313
    invoke-virtual {v2, v6}, Lcom/oculus/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v5

    .line 314
    iget-object v1, v5, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v18, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 317
    :try_start_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    iget-object v8, v5, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 320
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v5, Lcom/oculus/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_3

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 322
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    iget-object v10, v5, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 325
    :cond_2
    iget-object v1, v5, Lcom/oculus/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 326
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subtitle_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v2

    const/16 v19, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    :cond_3
    iget-object v2, v5, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v7, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_4
    const/16 v19, 0x1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 331
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 332
    iget-object v9, v5, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 334
    :cond_5
    iget-object v1, v5, Lcom/oculus/android/exoplayer2/Format;->projectionData:[B

    if-eqz v1, :cond_6

    .line 335
    invoke-static {v5}, Lcom/oculus/video/projection/VideoProjection;->fromSphericalV2(Lcom/oculus/android/exoplayer2/Format;)Lcom/oculus/video/projection/VideoProjection;

    move-result-object v11

    .line 337
    :cond_6
    iget v12, v5, Lcom/oculus/android/exoplayer2/Format;->frameRate:F

    .line 338
    iget v1, v5, Lcom/oculus/android/exoplayer2/Format;->width:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 339
    iget v1, v5, Lcom/oculus/android/exoplayer2/Format;->height:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    if-lez v13, :cond_7

    if-lez v14, :cond_7

    int-to-float v1, v13

    .line 341
    iget v15, v5, Lcom/oculus/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    mul-float v1, v1, v15

    int-to-float v15, v14

    div-float v15, v1, v15

    .line 344
    :cond_7
    iget v1, v5, Lcom/oculus/android/exoplayer2/Format;->rotationDegrees:I

    if-ltz v1, :cond_b

    .line 345
    iget v1, v5, Lcom/oculus/android/exoplayer2/Format;->rotationDegrees:I

    move/from16 v16, v1

    goto :goto_3

    :cond_8
    const/4 v2, 0x4

    if-ne v1, v2, :cond_b

    if-nez v17, :cond_a

    const-string v1, "application/x-camera-motion"

    .line 348
    iget-object v2, v5, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 349
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    const/16 v17, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    const/16 v17, 0x1

    :catch_0
    :cond_b
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move-object v6, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    goto/16 :goto_0

    .line 357
    :cond_d
    iget-object v1, v0, Lcom/oculus/video/VideoInfoExtractor$3;->this$0:Lcom/oculus/video/VideoInfoExtractor;

    invoke-static {v1}, Lcom/oculus/video/VideoInfoExtractor;->access$100(Lcom/oculus/video/VideoInfoExtractor;)Lcom/oculus/android/exoplayer2/ExoPlayer;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/oculus/video/VideoInfoExtractor$3;->this$0:Lcom/oculus/video/VideoInfoExtractor;

    invoke-static {v1}, Lcom/oculus/video/VideoInfoExtractor;->access$100(Lcom/oculus/video/VideoInfoExtractor;)Lcom/oculus/android/exoplayer2/ExoPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    :cond_e
    const/4 v2, 0x0

    .line 358
    :goto_4
    instance-of v1, v2, Lcom/oculus/video/source/dash/OculusDashManifest;

    if-eqz v1, :cond_f

    check-cast v2, Lcom/oculus/video/source/dash/OculusDashManifest;

    iget-object v1, v2, Lcom/oculus/video/source/dash/OculusDashManifest;->audioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    goto :goto_5

    :cond_f
    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    :goto_5
    move-object v2, v1

    .line 362
    iget-object v1, v0, Lcom/oculus/video/VideoInfoExtractor$3;->this$0:Lcom/oculus/video/VideoInfoExtractor;

    const/16 v17, 0x1

    move-object v3, v6

    move-object v5, v8

    move-object v6, v9

    move-object v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    move v12, v14

    move v13, v15

    move/from16 v14, v16

    move/from16 v15, v17

    invoke-static/range {v1 .. v15}, Lcom/oculus/video/VideoInfoExtractor;->access$200(Lcom/oculus/video/VideoInfoExtractor;Lcom/oculus/video/audio/AudioChannelLayout;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/video/projection/VideoProjection;FIIFIZZ)V

    return-void
.end method
