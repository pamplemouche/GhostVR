.class public Lorg/chromium/media/HdrMetadata;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/HdrMetadata;->b:Ljava/lang/Object;

    .line 3
    iput-wide p1, p0, Lorg/chromium/media/HdrMetadata;->a:J

    return-void
.end method

.method private close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/media/HdrMetadata;->b:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 2
    :try_start_0
    iput-wide v1, p0, Lorg/chromium/media/HdrMetadata;->a:J

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static create(J)Lorg/chromium/media/HdrMetadata;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/media/HdrMetadata;

    invoke-direct {v0, p0, p1}, Lorg/chromium/media/HdrMetadata;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/media/MediaFormat;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/chromium/media/HdrMetadata;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    const-string p1, "HdrMetadata"

    const-string v1, "HDR not supported before Android N"

    new-array v2, v3, [Ljava/lang/Object;

    .line 3
    invoke-static {p1, v1, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-wide v1, p0, Lorg/chromium/media/HdrMetadata;->a:J

    .line 6
    invoke-static {v1, v2, p0}, LJ/N;->M6EY_9Mw(JLjava/lang/Object;)I

    move-result v1

    const/4 v2, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eq v1, v5, :cond_2

    const/16 v7, 0x9

    if-eq v1, v7, :cond_1

    const/4 v7, 0x4

    if-eq v1, v7, :cond_3

    const/4 v8, 0x5

    if-eq v1, v8, :cond_3

    if-eq v1, v4, :cond_3

    if-eq v1, v2, :cond_3

    const/4 v7, -0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x6

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    :cond_3
    :goto_0
    if-eq v7, v6, :cond_4

    const-string v1, "color-standard"

    .line 7
    invoke-virtual {p1, v1, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 8
    :cond_4
    iget-wide v7, p0, Lorg/chromium/media/HdrMetadata;->a:J

    .line 9
    invoke-static {v7, v8, p0}, LJ/N;->Myx2EYmS(JLjava/lang/Object;)I

    move-result v1

    if-eq v1, v5, :cond_7

    const/16 v7, 0x10

    if-eq v1, v7, :cond_6

    const/16 v7, 0x12

    if-eq v1, v7, :cond_8

    if-eq v1, v4, :cond_7

    if-eq v1, v2, :cond_7

    const/16 v2, 0x8

    if-eq v1, v2, :cond_5

    const/4 v2, -0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x6

    goto :goto_1

    :cond_7
    const/4 v2, 0x3

    :cond_8
    :goto_1
    if-eq v2, v6, :cond_9

    const-string v1, "color-transfer"

    .line 10
    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 11
    :cond_9
    iget-wide v1, p0, Lorg/chromium/media/HdrMetadata;->a:J

    .line 12
    invoke-static {v1, v2, p0}, LJ/N;->MGKRBsYQ(JLjava/lang/Object;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v5, :cond_b

    if-eq v1, v2, :cond_a

    const/4 v2, -0x1

    goto :goto_2

    :cond_a
    const/4 v2, 0x1

    :cond_b
    :goto_2
    if-eq v2, v6, :cond_c

    const-string v1, "color-range"

    .line 13
    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_c
    const/16 v1, 0x19

    new-array v1, v1, [B

    .line 14
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 15
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 17
    iget-wide v2, p0, Lorg/chromium/media/HdrMetadata;->a:J

    .line 18
    invoke-static {v2, v3, p0}, LJ/N;->Mc0wiJ8$(JLjava/lang/Object;)F

    move-result v2

    const v3, 0x47435000    # 50000.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 20
    iget-wide v5, p0, Lorg/chromium/media/HdrMetadata;->a:J

    .line 21
    invoke-static {v5, v6, p0}, LJ/N;->MYP0SLZ2(JLjava/lang/Object;)F

    move-result v2

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 23
    iget-wide v5, p0, Lorg/chromium/media/HdrMetadata;->a:J

    .line 24
    invoke-static {v5, v6, p0}, LJ/N;->MRQrYl4t(JLjava/lang/Object;)F

    move-result v2

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 26
    iget-wide v5, p0, Lorg/chromium/media/HdrMetadata;->a:J

    .line 27
    invoke-static {v5, v6, p0}, LJ/N;->MtgfnGGz(JLjava/lang/Object;)F

    move-result v2

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 29
    iget-wide v5, p0, Lorg/chromium/media/HdrMetadata;->a:J

    .line 30
    invoke-static {v5, v6, p0}, LJ/N;->McEG$Qxu(JLjava/lang/Object;)F

    move-result v2

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 32
    iget-wide v5, p0, Lorg/chromium/media/HdrMetadata;->a:J

    .line 33
    invoke-static {v5, v6, p0}, LJ/N;->MU6WBitK(JLjava/lang/Object;)F

    move-result v2

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 35
    iget-wide v5, p0, Lorg/chromium/media/HdrMetadata;->a:J

    .line 36
    invoke-static {v5, v6, p0}, LJ/N;->M8pzdQ$h(JLjava/lang/Object;)F

    move-result v2

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 38
    iget-wide v5, p0, Lorg/chromium/media/HdrMetadata;->a:J

    .line 39
    invoke-static {v5, v6, p0}, LJ/N;->MXbY07SE(JLjava/lang/Object;)F

    move-result v2

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41
    iget-wide v2, p0, Lorg/chromium/media/HdrMetadata;->a:J

    .line 42
    invoke-static {v2, v3, p0}, LJ/N;->MOL90CVq(JLjava/lang/Object;)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 44
    iget-wide v2, p0, Lorg/chromium/media/HdrMetadata;->a:J

    .line 45
    invoke-static {v2, v3, p0}, LJ/N;->MM07Xk18(JLjava/lang/Object;)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 47
    iget-wide v2, p0, Lorg/chromium/media/HdrMetadata;->a:J

    .line 48
    invoke-static {v2, v3, p0}, LJ/N;->MMmvZ$nS(JLjava/lang/Object;)I

    move-result v2

    int-to-short v2, v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 50
    iget-wide v2, p0, Lorg/chromium/media/HdrMetadata;->a:J

    .line 51
    invoke-static {v2, v3, p0}, LJ/N;->MzRCryEE(JLjava/lang/Object;)I

    move-result v2

    int-to-short v2, v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const-string v2, "hdr-static-info"

    .line 54
    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 55
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_3
.end method
