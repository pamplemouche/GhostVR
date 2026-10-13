.class Lcom/oculus/vrshell/AudioCapture$AudioCodecThread;
.super Ljava/lang/Thread;
.source "AudioCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/AudioCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioCodecThread"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private putInt([BII)V
    .locals 2

    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 245
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 246
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 247
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    shr-int/lit8 p3, p3, 0x18

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    .line 248
    aput-byte p3, p1, p2

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "audio/mp4a-latm"

    const-string v2, "AudioCapture"

    const-string v3, "Audio codec thread started"

    .line 252
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :try_start_0
    const-string v4, "Audio createEncoderByType()"

    .line 258
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    const v5, 0xbb80

    const/4 v12, 0x2

    .line 261
    invoke-static {v0, v5, v12}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v5, "bitrate"

    const/high16 v6, 0x10000

    .line 262
    invoke-virtual {v0, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "max-input-size"

    const/16 v6, 0x2000

    .line 263
    invoke-virtual {v0, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "aac-profile"

    const/16 v6, 0x1d

    .line 264
    invoke-virtual {v0, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "configure()"

    .line 265
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v13, 0x1

    .line 266
    invoke-virtual {v4, v0, v5, v5, v13}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const-string v0, "start()"

    .line 267
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$100()I

    move-result v0

    mul-int/lit16 v0, v0, 0x780

    const/16 v14, 0x1000

    div-int/2addr v0, v14

    move-object v15, v5

    .line 280
    :goto_0
    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$000()Z

    move-result v5

    if-nez v5, :cond_7

    .line 281
    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$100()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x780

    mul-long v5, v5, v7

    add-int/lit8 v11, v0, 0x1

    int-to-long v7, v11

    const-wide/16 v9, 0x1000

    mul-long v7, v7, v9

    move/from16 v16, v11

    const-wide/16 v11, 0xfa0

    const/4 v13, 0x0

    cmp-long v19, v5, v7

    if-ltz v19, :cond_1

    .line 283
    invoke-virtual {v4, v11, v12}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    if-ltz v6, :cond_1

    .line 285
    invoke-virtual {v4, v6}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    int-to-long v7, v0

    mul-long v9, v9, v7

    const-wide/32 v19, 0xf000

    .line 286
    rem-long v9, v9, v19

    long-to-int v0, v9

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_0

    .line 288
    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$200()[S

    move-result-object v10

    add-int v19, v0, v9

    aget-short v10, v10, v19

    mul-int/lit8 v19, v9, 0x2

    add-int/lit8 v11, v19, 0x0

    and-int/lit16 v12, v10, 0xff

    int-to-byte v12, v12

    .line 289
    invoke-virtual {v5, v11, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v11, 0x1

    add-int/lit8 v12, v19, 0x1

    const/16 v11, 0x8

    shr-int/2addr v10, v11

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    .line 290
    invoke-virtual {v5, v12, v10}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v9, 0x1

    const-wide/16 v11, 0xfa0

    goto :goto_1

    :cond_0
    const-wide/16 v9, 0x800

    mul-long v7, v7, v9

    .line 296
    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$300()J

    move-result-wide v9

    const-wide/32 v11, 0xf4240

    mul-long v7, v7, v11

    const-wide/32 v11, 0xbb80

    div-long/2addr v7, v11

    add-long/2addr v9, v7

    const/4 v7, 0x0

    const/16 v8, 0x2000

    const/4 v11, 0x0

    move-object v5, v4

    move/from16 v0, v16

    move-object/from16 v16, v15

    const-wide/16 v14, 0xfa0

    .line 298
    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_2

    :cond_1
    move-object/from16 v16, v15

    move-wide v14, v11

    .line 304
    :goto_2
    invoke-virtual {v4, v3, v14, v15}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    const/4 v6, -0x2

    if-ne v5, v6, :cond_2

    .line 306
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Audio output format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_2
    if-ltz v5, :cond_5

    .line 309
    invoke-virtual {v4, v5}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/16 v7, 0x14

    .line 312
    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v9, v8, 0x14

    .line 314
    new-array v15, v9, [B

    const/4 v9, 0x1

    .line 315
    invoke-direct {v1, v15, v13, v9}, Lcom/oculus/vrshell/AudioCapture$AudioCodecThread;->putInt([BII)V

    const/4 v10, 0x4

    .line 316
    iget v11, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-direct {v1, v15, v10, v11}, Lcom/oculus/vrshell/AudioCapture$AudioCodecThread;->putInt([BII)V

    .line 317
    iget-wide v10, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide v18, 0xffffffffL

    and-long v10, v10, v18

    long-to-int v11, v10

    const/16 v10, 0x8

    invoke-direct {v1, v15, v10, v11}, Lcom/oculus/vrshell/AudioCapture$AudioCodecThread;->putInt([BII)V

    const/16 v10, 0xc

    .line 318
    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/16 v17, 0x20

    shr-long v12, v12, v17

    long-to-int v13, v12

    invoke-direct {v1, v15, v10, v13}, Lcom/oculus/vrshell/AudioCapture$AudioCodecThread;->putInt([BII)V

    const/16 v10, 0x10

    .line 319
    invoke-direct {v1, v15, v10, v8}, Lcom/oculus/vrshell/AudioCapture$AudioCodecThread;->putInt([BII)V

    .line 320
    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v6, v15, v7, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    .line 322
    invoke-virtual {v4, v5, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 324
    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$400()[[B

    move-result-object v5

    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$500()I

    move-result v6

    rem-int/lit8 v6, v6, 0x40

    aput-object v15, v5, v6

    .line 325
    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$508()I

    if-nez v16, :cond_3

    .line 330
    iget v5, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Codec config is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v15

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bytes"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    const/4 v6, 0x2

    :cond_4
    move-object/from16 v15, v16

    .line 334
    :goto_3
    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$500()I

    move-result v5

    and-int/lit8 v5, v5, 0x1f

    if-nez v5, :cond_6

    if-eqz v15, :cond_6

    .line 335
    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$400()[[B

    move-result-object v5

    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$500()I

    move-result v7

    rem-int/lit8 v7, v7, 0x40

    aput-object v15, v5, v7

    .line 336
    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$508()I

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v6, 0x2

    const/4 v9, 0x1

    move-object/from16 v15, v16

    :cond_6
    :goto_5
    const/4 v12, 0x2

    const/4 v13, 0x1

    const/16 v14, 0x1000

    goto/16 :goto_0

    .line 341
    :cond_7
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 342
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    const-string v0, "Audio codec thread ended"

    .line 344
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioCodec init failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
