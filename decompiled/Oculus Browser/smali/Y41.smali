.class public LY41;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic a:Lorg/chromium/media/ScreenCapture;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/media/ScreenCapture;LX41;)V
    .locals 0

    .line 1
    iput-object p1, p0, LY41;->a:Lorg/chromium/media/ScreenCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 22

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, LY41;->a:Lorg/chromium/media/ScreenCapture;

    .line 2
    iget-object v2, v0, Lorg/chromium/media/ScreenCapture;->x:Ljava/lang/Object;

    .line 3
    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v0, v1, LY41;->a:Lorg/chromium/media/ScreenCapture;

    .line 5
    iget v0, v0, Lorg/chromium/media/ScreenCapture;->y:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_0

    const-string v0, "cr_ScreenCapture"

    const-string v3, "Get captured frame in unexpected state."

    new-array v4, v4, [Ljava/lang/Object;

    .line 6
    invoke-static {v0, v3, v4}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    monitor-exit v2

    return-void

    .line 8
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 9
    iget-object v0, v1, LY41;->a:Lorg/chromium/media/ScreenCapture;

    .line 10
    invoke-virtual {v0}, Lorg/chromium/media/ScreenCapture;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, v1, LY41;->a:Lorg/chromium/media/ScreenCapture;

    .line 12
    invoke-virtual {v0}, Lorg/chromium/media/ScreenCapture;->a()V

    .line 13
    iget-object v0, v1, LY41;->a:Lorg/chromium/media/ScreenCapture;

    .line 14
    invoke-virtual {v0}, Lorg/chromium/media/ScreenCapture;->b()V

    return-void

    :cond_1
    const/16 v2, 0x23

    const/4 v5, 0x1

    .line 15
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v6

    if-nez v6, :cond_3

    if-eqz v6, :cond_2

    .line 16
    invoke-virtual {v6}, Landroid/media/Image;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-void

    .line 17
    :cond_3
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/media/Image;->getWidth()I

    move-result v7

    if-ne v0, v7, :cond_8

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    invoke-virtual {v6}, Landroid/media/Image;->getHeight()I

    move-result v7

    if-ne v0, v7, :cond_8

    .line 19
    invoke-virtual {v6}, Landroid/media/Image;->getFormat()I

    move-result v0

    if-eq v0, v5, :cond_6

    if-ne v0, v2, :cond_5

    .line 20
    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    array-length v0, v0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_4

    .line 21
    iget-object v0, v1, LY41;->a:Lorg/chromium/media/ScreenCapture;

    .line 22
    iget-wide v7, v0, Lorg/chromium/media/ScreenCapture;->w:J

    .line 23
    iget-object v9, v1, LY41;->a:Lorg/chromium/media/ScreenCapture;

    .line 24
    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 25
    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    .line 26
    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 27
    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v14

    .line 28
    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v15

    invoke-virtual {v6}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 29
    invoke-virtual {v6}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v18

    .line 30
    invoke-virtual {v6}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v19

    invoke-virtual {v6}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v20

    move/from16 v16, v0

    move/from16 v17, v3

    .line 31
    invoke-static/range {v7 .. v21}, LJ/N;->MgLL$kUF(JLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;IIIIIIJ)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "cr_ScreenCapture"

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected image planes for YUV_420_888 format: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/Object;

    .line 34
    invoke-static {v0, v3, v7}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_5
    const-string v0, "cr_ScreenCapture"

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected image format: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/media/Image;->getFormat()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v7}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 38
    :cond_6
    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v5, :cond_7

    .line 39
    iget-object v0, v1, LY41;->a:Lorg/chromium/media/ScreenCapture;

    .line 40
    iget-wide v7, v0, Lorg/chromium/media/ScreenCapture;->w:J

    .line 41
    iget-object v9, v1, LY41;->a:Lorg/chromium/media/ScreenCapture;

    .line 42
    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 43
    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    invoke-virtual {v6}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v12, v0, Landroid/graphics/Rect;->left:I

    .line 44
    invoke-virtual {v6}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v13, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 45
    invoke-virtual {v6}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-virtual {v6}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v16

    .line 46
    invoke-static/range {v7 .. v17}, LJ/N;->MjDBp6op(JLjava/lang/Object;Ljava/lang/Object;IIIIIJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :goto_0
    :try_start_3
    invoke-virtual {v6}, Landroid/media/Image;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :cond_7
    :try_start_4
    const-string v0, "cr_ScreenCapture"

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected image planes for RGBA_8888 format: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/Object;

    .line 50
    invoke-static {v0, v3, v7}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_8
    const-string v0, "cr_ScreenCapture"

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImageReader size ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->getHeight()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") did not match Image size ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v6}, Landroid/media/Image;->getWidth()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v6}, Landroid/media/Image;->getHeight()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/Object;

    .line 55
    invoke-static {v0, v3, v7}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 57
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v7, v0

    .line 58
    :try_start_6
    invoke-virtual {v6}, Landroid/media/Image;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v6, v0

    .line 59
    :try_start_7
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, v3, v6}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 60
    :goto_1
    throw v7
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acquireLatestImage():"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "cr_ScreenCapture"

    invoke-static {v4, v0, v3}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, v1, LY41;->a:Lorg/chromium/media/ScreenCapture;

    .line 63
    iget v3, v0, Lorg/chromium/media/ScreenCapture;->M:I

    if-ne v3, v2, :cond_9

    .line 64
    iput v5, v0, Lorg/chromium/media/ScreenCapture;->M:I

    .line 65
    invoke-virtual {v0}, Lorg/chromium/media/ScreenCapture;->a()V

    .line 66
    iget-object v0, v1, LY41;->a:Lorg/chromium/media/ScreenCapture;

    .line 67
    invoke-virtual {v0}, Lorg/chromium/media/ScreenCapture;->b()V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireLatestImage():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "cr_ScreenCapture"

    invoke-static {v3, v0, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_2
    return-void

    :catchall_3
    move-exception v0

    .line 69
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method
