.class public Lorg/chromium/media/MediaCodecBridge;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static m:Landroid/os/HandlerThread;

.field public static n:Landroid/os/Handler;


# instance fields
.field public a:Landroid/media/MediaCodec;

.field public b:[Ljava/nio/ByteBuffer;

.field public c:I

.field public d:Z

.field public e:Ljava/util/Queue;

.field public f:Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;

.field public g:Z

.field public h:Z

.field public i:J

.field public j:I

.field public k:Ljava/util/Queue;

.field public l:Ljava/util/Queue;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    .line 3
    iput p2, p0, Lorg/chromium/media/MediaCodecBridge;->c:I

    .line 4
    iput-boolean p3, p0, Lorg/chromium/media/MediaCodecBridge;->d:Z

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lorg/chromium/media/MediaCodecBridge;->g:Z

    .line 6
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->e:Ljava/util/Queue;

    .line 7
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->k:Ljava/util/Queue;

    .line 8
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->l:Ljava/util/Queue;

    .line 9
    iget-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    new-instance p2, Lx41;

    invoke-direct {p2, p0, p0}, Lx41;-><init>(Lorg/chromium/media/MediaCodecBridge;Lorg/chromium/media/MediaCodecBridge;)V

    sget-object p3, Lorg/chromium/media/MediaCodecBridge;->n:Landroid/os/Handler;

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 10
    invoke-virtual {p0}, Lorg/chromium/media/MediaCodecBridge;->c()V

    return-void
.end method

.method public static createCallbackHandlerForTesting()V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/media/MediaCodecBridge;->m:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TestCallbackThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/media/MediaCodecBridge;->m:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lorg/chromium/media/MediaCodecBridge;->m:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/chromium/media/MediaCodecBridge;->n:Landroid/os/Handler;

    return-void
.end method

.method private dequeueInputBuffer(J)Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->d:Z

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v0, :cond_3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean p1, p0, Lorg/chromium/media/MediaCodecBridge;->g:Z

    if-eqz p1, :cond_0

    new-instance p1, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;

    invoke-direct {p1, v1, v4, v2}, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;-><init>(IILv41;)V

    monitor-exit p0

    return-object p1

    .line 4
    :cond_0
    iget-boolean p1, p0, Lorg/chromium/media/MediaCodecBridge;->h:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->k:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->k:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;

    monitor-exit p0

    return-object p1

    .line 6
    :cond_2
    :goto_0
    new-instance p1, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;

    invoke-direct {p1, v3, v4, v2}, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;-><init>(IILv41;)V

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    const/4 v0, 0x0

    .line 8
    :try_start_1
    iget-object v5, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {v5, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result p1

    if-ltz p1, :cond_4

    move v4, p1

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    if-ne p1, v4, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const-string p2, "cr_MediaCodecBridge"

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected index_or_status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v5}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "cr_MediaCodecBridge"

    const-string v0, "Failed to dequeue input buffer"

    .line 10
    invoke-static {p1, v0, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :goto_1
    new-instance p1, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;

    invoke-direct {p1, v1, v4, v2}, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;-><init>(IILv41;)V

    return-object p1
.end method

.method private dequeueOutputBuffer(J)Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;
    .locals 16

    move-object/from16 v1, p0

    .line 1
    iget-boolean v0, v1, Lorg/chromium/media/MediaCodecBridge;->d:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, v1, Lorg/chromium/media/MediaCodecBridge;->g:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;

    const/4 v4, 0x5

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;-><init>(IIIIJILv41;)V

    monitor-exit p0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, v1, Lorg/chromium/media/MediaCodecBridge;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;-><init>(IIIIJILv41;)V

    monitor-exit p0

    return-object v0

    .line 7
    :cond_1
    iget-object v0, v1, Lorg/chromium/media/MediaCodecBridge;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;

    invoke-static {v0}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->a(Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 8
    iget-object v0, v1, Lorg/chromium/media/MediaCodecBridge;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;

    iput-object v0, v1, Lorg/chromium/media/MediaCodecBridge;->f:Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;

    .line 9
    :cond_2
    iget-object v0, v1, Lorg/chromium/media/MediaCodecBridge;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 11
    :cond_3
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x5

    const/4 v7, 0x0

    move-wide/from16 v8, p1

    .line 12
    :try_start_1
    invoke-virtual {v1, v3, v8, v9}, Lorg/chromium/media/MediaCodecBridge;->a(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    if-ltz v0, :cond_4

    move v5, v0

    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    const/4 v8, -0x3

    if-ne v0, v8, :cond_5

    .line 13
    iget-object v0, v1, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/MediaCodecBridge;->b:[Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    const/4 v6, 0x2

    goto :goto_0

    :cond_5
    const/4 v8, -0x2

    if-ne v0, v8, :cond_6

    .line 14
    iget-object v0, v1, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    const/4 v6, 0x3

    goto :goto_0

    :cond_6
    if-ne v0, v5, :cond_7

    const/4 v6, 0x1

    goto :goto_0

    :cond_7
    const-string v2, "cr_MediaCodecBridge"

    .line 15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected index_or_status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v8}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move v9, v5

    move v8, v6

    goto :goto_1

    :catch_0
    move-exception v0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v7

    const-string v0, "cr_MediaCodecBridge"

    const-string v4, "Failed to dequeue output buffer"

    .line 16
    invoke-static {v0, v4, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x5

    const/4 v9, -0x1

    .line 17
    :goto_1
    new-instance v0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;

    iget v10, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget v11, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v14, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v15, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;-><init>(IIIIJILv41;)V

    return-object v0
.end method

.method private flush()I
    .locals 4

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V

    .line 2
    iget-boolean v2, p0, Lorg/chromium/media/MediaCodecBridge;->d:Z

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/chromium/media/MediaCodecBridge;->c()V

    .line 4
    invoke-virtual {p0}, Lorg/chromium/media/MediaCodecBridge;->d()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return v0

    :cond_0
    return v1

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v1, "cr_MediaCodecBridge"

    const-string v2, "Failed to flush MediaCodec"

    .line 5
    invoke-static {v1, v2, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "cr_MediaCodecBridge"

    const-string v1, "Failed to get input buffer"

    .line 2
    invoke-static {p1, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getName()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "cr_MediaCodecBridge"

    const-string v2, "Cannot get codec name"

    .line 2
    invoke-static {v0, v2, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "unknown"

    :goto_0
    return-object v0
.end method

.method private getOutputFormat()Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->f:Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v0, "cr_MediaCodecBridge"

    const-string v2, "Failed to get output format"

    .line 3
    invoke-static {v0, v2, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x5

    move-object v2, v1

    .line 4
    :goto_0
    new-instance v3, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;

    invoke-direct {v3, v0, v2, v1}, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;-><init>(ILandroid/media/MediaFormat;Lv41;)V

    return-object v3
.end method

.method private queueInputBuffer(IIIJI)I
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "cr_MediaCodecBridge"

    const-string p3, "Failed to queue input buffer"

    .line 2
    invoke-static {p1, p3, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x5

    return p1
.end method

.method private queueSecureInputBuffer(II[B[B[I[IIIIIJ)I
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p9

    move/from16 v2, p10

    const-string v3, "cr_MediaCodecBridge"

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    move/from16 v7, p8

    .line 1
    :try_start_0
    invoke-virtual {v1, v7}, Lorg/chromium/media/MediaCodecBridge;->c(I)I

    move-result v13

    const/4 v7, -0x1

    if-ne v13, v7, :cond_0

    return v5

    :cond_0
    const/4 v7, 0x2

    if-ne v13, v7, :cond_1

    const/4 v7, 0x1

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_0
    if-eqz v14, :cond_2

    .line 2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Lorg/chromium/media/MediaCodecUtil;->platformSupportsCbcsEncryption(I)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v0, "Encryption scheme \'cbcs\' not supported on this platform."

    new-array v2, v6, [Ljava/lang/Object;

    .line 3
    invoke-static {v3, v0, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    .line 4
    :cond_2
    new-instance v15, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v15}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    move-object v7, v15

    move/from16 v8, p7

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p4

    move-object/from16 v12, p3

    .line 5
    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    if-eqz v14, :cond_3

    .line 6
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_4

    .line 7
    invoke-static {v15, v0, v2}, LAU;->a(Landroid/media/MediaCodec$CryptoInfo;II)V

    goto :goto_1

    :cond_3
    const-string v0, "Pattern encryption only supported for \'cbcs\' scheme (CBC mode)."

    new-array v2, v6, [Ljava/lang/Object;

    .line 8
    invoke-static {v3, v0, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    .line 9
    :cond_4
    :goto_1
    iget-object v0, v1, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    move-object/from16 p3, v0

    move/from16 p4, p1

    move/from16 p5, p2

    move-object/from16 p6, v15

    move-wide/from16 p7, p11

    move/from16 p9, v2

    invoke-virtual/range {p3 .. p9}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to queue secure input buffer, IllegalStateException "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :catch_1
    move-exception v0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to queue secure input buffer, IllegalArgumentException "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :catch_2
    move-exception v0

    .line 12
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    if-ne v2, v4, :cond_5

    const/4 v0, 0x4

    return v0

    :cond_5
    const-string v2, "Failed to queue secure input buffer, CryptoException with error code "

    .line 13
    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 14
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    .line 15
    invoke-static {v3, v0, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method private requestKeyFrameSoon()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v2, "request-sync"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "cr_MediaCodecBridge"

    const-string v1, "Failed to set MediaCodec parameters"

    .line 4
    invoke-static {v0, v1, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized setBuffersAvailableListener(J)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-wide p1, p0, Lorg/chromium/media/MediaCodecBridge;->i:J

    .line 2
    iget-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->k:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->l:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/chromium/media/MediaCodecBridge;->g:Z

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/media/MediaCodecBridge;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setSurface(Landroid/view/Surface;)Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "cr_MediaCodecBridge"

    const-string v2, "Cannot set output surface"

    .line 2
    invoke-static {p1, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private setVideoBitrate(II)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/chromium/media/MediaCodecBridge;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, 0x1e

    .line 2
    div-int/2addr p1, p2

    .line 3
    :cond_2
    :goto_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "video-bitrate"

    .line 4
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    :try_start_0
    iget-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "cr_MediaCodecBridge"

    const-string v0, "Failed to set MediaCodec parameters"

    .line 6
    invoke-static {p1, v0, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private stop()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 2
    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/media/MediaCodecBridge;->c()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "cr_MediaCodecBridge"

    const-string v2, "Failed to stop MediaCodec"

    .line 3
    invoke-static {v0, v2, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaCodec$BufferInfo;J)I
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    return p1
.end method

.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/media/MediaCodecBridge;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/media/MediaCodecBridge;->i:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MNqjfk23(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 4

    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->k:Ljava/util/Queue;

    new-instance v1, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;-><init>(IILv41;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Lorg/chromium/media/MediaCodecBridge;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 11

    monitor-enter p0

    .line 9
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->l:Ljava/util/Queue;

    new-instance v10, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;

    const/4 v2, 0x0

    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget v5, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-wide v6, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v9, 0x0

    move-object v1, v10

    move v3, p1

    invoke-direct/range {v1 .. v9}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;-><init>(IIIIJILv41;)V

    invoke-interface {v0, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Lorg/chromium/media/MediaCodecBridge;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/media/MediaFormat;)V
    .locals 11

    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->l:Ljava/util/Queue;

    new-instance v10, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;-><init>(IIIIJILv41;)V

    invoke-interface {v0, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->e:Ljava/util/Queue;

    new-instance v1, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;-><init>(ILandroid/media/MediaFormat;Lv41;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p0}, Lorg/chromium/media/MediaCodecBridge;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)Z
    .locals 5

    const-string v0, "Cannot configure the video codec"

    const-string v1, "cr_MediaCodecBridge"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 18
    :try_start_0
    iget-object v4, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    .line 19
    invoke-static {v1, v0, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "Cannot configure the video codec: DRM error"

    .line 20
    invoke-static {v1, p1, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    .line 21
    invoke-static {v1, v0, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "Cannot configure the video codec, wrong format or surface"

    .line 22
    invoke-static {v1, p1, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v2
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->g:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 4
    invoke-virtual {p0}, Lorg/chromium/media/MediaCodecBridge;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(I)V
    .locals 1

    monitor-enter p0

    .line 6
    :try_start_0
    iget v0, p0, Lorg/chromium/media/MediaCodecBridge;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 7
    :try_start_1
    iput-boolean p1, p0, Lorg/chromium/media/MediaCodecBridge;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-string v1, "Unsupported cipher mode: "

    .line 8
    invoke-static {v1, p1}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "cr_MediaCodecBridge"

    invoke-static {v1, p1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->h:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->f:Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;

    .line 6
    iget v1, p0, Lorg/chromium/media/MediaCodecBridge;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/chromium/media/MediaCodecBridge;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-boolean v2, p0, Lorg/chromium/media/MediaCodecBridge;->d:Z

    if-eqz v2, :cond_2

    .line 2
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-boolean v2, p0, Lorg/chromium/media/MediaCodecBridge;->g:Z

    if-eqz v2, :cond_0

    monitor-exit p0

    return v1

    .line 4
    :cond_0
    sget-object v2, Lorg/chromium/media/MediaCodecBridge;->n:Landroid/os/Handler;

    if-nez v2, :cond_1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v2, Lorg/chromium/media/MediaCodecBridge;->n:Landroid/os/Handler;

    .line 6
    :goto_0
    new-instance v3, Lw41;

    iget v4, p0, Lorg/chromium/media/MediaCodecBridge;->j:I

    invoke-direct {v3, p0, v4}, Lw41;-><init>(Lorg/chromium/media/MediaCodecBridge;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 8
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catch_0
    move-exception v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v2, "cr_MediaCodecBridge"

    const-string v3, "Cannot start the media codec"

    .line 9
    invoke-static {v2, v3, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :catch_1
    move-exception v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v2, "cr_MediaCodecBridge"

    const-string v3, "Cannot start the media codec"

    .line 10
    invoke-static {v2, v3, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "cr_MediaCodecBridge"

    const-string v1, "Failed to get output buffer"

    .line 2
    invoke-static {p1, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public release()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->d:Z

    if-eqz v0, :cond_0

    .line 2
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 3
    :try_start_0
    iput-wide v0, p0, Lorg/chromium/media/MediaCodecBridge;->i:J

    .line 4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 5
    :try_start_1
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cr_MediaCodecBridge"

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Releasing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const-string v1, "cr_MediaCodecBridge"

    const-string v2, "Codec released"

    new-array v3, v0, [Ljava/lang/Object;

    .line 8
    invoke-static {v1, v2, v3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "cr_MediaCodecBridge"

    const-string v1, "Cannot release media codec"

    .line 9
    invoke-static {v0, v1, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    return-void
.end method

.method public releaseOutputBuffer(IZ)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "cr_MediaCodecBridge"

    const-string v0, "Failed to release output buffer"

    .line 2
    invoke-static {p1, v0, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
