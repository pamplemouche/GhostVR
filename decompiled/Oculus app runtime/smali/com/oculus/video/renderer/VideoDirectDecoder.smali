.class public Lcom/oculus/video/renderer/VideoDirectDecoder;
.super Ljava/lang/Object;
.source "VideoDirectDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/renderer/VideoDirectDecoder$EventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.oculus.video.renderer.VideoDirectDecoder"


# instance fields
.field private final decoderStateAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile isActive:Z

.field private listener:Lcom/oculus/video/renderer/VideoDirectDecoder$EventListener;

.field private mNativePtr:J

.field private volatile needToReleaseOutputSurface:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 81
    iput-wide v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->isActive:Z

    .line 83
    iput-boolean v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->needToReleaseOutputSurface:Z

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->listener:Lcom/oculus/video/renderer/VideoDirectDecoder$EventListener;

    .line 86
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->decoderStateAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 89
    invoke-static {}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDestroy(J)I
.end method

.method private static native nativeFetchLastRenderTextureSize(J)Ljava/lang/String;
.end method

.method private static native nativeGetBuffersInCodecCount(J)I
.end method

.method private static native nativeGetNextRenderBufferPresentationTime(J)J
.end method

.method private static native nativeIsExtractedBufferReady(J)Z
.end method

.method private static native nativeIsOutputStreamEnded(J)Z
.end method

.method private static native nativeOnPositionReset(J)I
.end method

.method private static native nativeReleaseOutputSurface(J)V
.end method

.method private static native nativeRequestVideoBufferDrop(JJ)V
.end method

.method private static native nativeRequestVideoBufferRelease(J)V
.end method

.method private static native nativeSetFormat(JZZLjava/lang/String;IIIIII[B)V
.end method

.method private static native nativeSetNextVideoBufferInfoFlag(J)V
.end method

.method private static native nativeSetOutputSurface(JLandroid/view/Surface;)V
.end method

.method private static native nativeStart(J)V
.end method

.method private static native nativeStop(J)I
.end method

.method private static native nativeWriteBuffer(JLjava/nio/ByteBuffer;IIJIZ)V
.end method

.method private static native nativeWriteBufferWithCrypto(JLjava/nio/ByteBuffer;IIJIZ[B[BI[I[II)V
.end method

.method private static native nativeWriteCsdBuffer(JLjava/lang/String;[B)V
.end method


# virtual methods
.method checkRenderTextureSizeChange()V
    .locals 12

    .line 251
    iget-object v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->listener:Lcom/oculus/video/renderer/VideoDirectDecoder$EventListener;

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    iget-wide v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeFetchLastRenderTextureSize(J)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, " "

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 259
    array-length v1, v0

    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    return-void

    .line 263
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->listener:Lcom/oculus/video/renderer/VideoDirectDecoder$EventListener;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 264
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v1, 0x3

    aget-object v1, v0, v1

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v1, 0x4

    aget-object v1, v0, v1

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v1, 0x5

    aget-object v1, v0, v1

    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 270
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 263
    invoke-interface/range {v3 .. v11}, Lcom/oculus/video/renderer/VideoDirectDecoder$EventListener;->onRenderTextureSizeChange(IIIIIIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    sget-object v0, Lcom/oculus/video/renderer/VideoDirectDecoder;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected render size on output format change"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->decoderStateAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 96
    :try_start_0
    iget-wide v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeDestroy(J)I

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->isActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->decoderStateAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 101
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 99
    iget-object v1, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->decoderStateAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method getBuffersInCodecCount()I
    .locals 2

    .line 247
    iget-wide v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeGetBuffersInCodecCount(J)I

    move-result v0

    return v0
.end method

.method getNextRenderBufferPresentationTime()J
    .locals 2

    .line 231
    iget-wide v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeGetNextRenderBufferPresentationTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method isActive()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->isActive:Z

    return v0
.end method

.method isExtractedBufferReady()Z
    .locals 2

    .line 243
    iget-wide v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeIsExtractedBufferReady(J)Z

    move-result v0

    return v0
.end method

.method isOutputStreamEnded()Z
    .locals 2

    .line 239
    iget-wide v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeIsOutputStreamEnded(J)Z

    move-result v0

    return v0
.end method

.method onPositionReset()I
    .locals 2

    .line 179
    iget-wide v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeOnPositionReset(J)I

    move-result v0

    return v0
.end method

.method public releaseOutputSurface()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->decoderStateAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 143
    :try_start_0
    iget-boolean v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->isActive:Z

    if-nez v0, :cond_0

    .line 144
    iget-wide v2, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    invoke-static {v2, v3}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeReleaseOutputSurface(J)V

    .line 145
    iput-boolean v1, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->needToReleaseOutputSurface:Z

    goto :goto_0

    .line 149
    :cond_0
    iput-boolean v2, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->needToReleaseOutputSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->decoderStateAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->decoderStateAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 156
    :cond_1
    iget-boolean v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->isActive:Z

    if-nez v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->decoderStateAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 161
    :try_start_1
    iget-wide v2, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    invoke-static {v2, v3}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeReleaseOutputSurface(J)V

    .line 162
    iput-boolean v1, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->needToReleaseOutputSurface:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    iget-object v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->decoderStateAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->decoderStateAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 169
    :cond_2
    iput-boolean v2, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->needToReleaseOutputSurface:Z

    :goto_1
    return-void
.end method

.method requestVideoBufferDrop(J)V
    .locals 2

    .line 227
    iget-wide v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeRequestVideoBufferDrop(JJ)V

    return-void
.end method

.method requestVideoBufferRelease()V
    .locals 2

    .line 223
    iget-wide v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeRequestVideoBufferRelease(J)V

    return-void
.end method

.method setNextVideoBufferInfoFlag(I)V
    .locals 2

    .line 235
    iget-wide v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeSetNextVideoBufferInfoFlag(J)V

    return-void
.end method

.method setOutputSurface(Landroid/view/Surface;)V
    .locals 2

    .line 183
    iget-wide v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeSetOutputSurface(JLandroid/view/Surface;)V

    return-void
.end method

.method setVideoExtractorInfo(ZZLjava/lang/String;IIIIII[B)V
    .locals 13

    move-object v0, p0

    .line 195
    iget-wide v1, v0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    move v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-static/range {v1 .. v12}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeSetFormat(JZZLjava/lang/String;IIIIII[B)V

    return-void
.end method

.method start(Lcom/oculus/video/renderer/VideoDirectDecoder$EventListener;)V
    .locals 2

    .line 105
    iput-object p1, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->listener:Lcom/oculus/video/renderer/VideoDirectDecoder$EventListener;

    .line 107
    iget-object p1, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->decoderStateAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 p1, 0x1

    .line 109
    :try_start_0
    iput-boolean p1, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->isActive:Z

    .line 110
    iget-wide v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeStart(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p1, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->decoderStateAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->decoderStateAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method stop()I
    .locals 4

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->listener:Lcom/oculus/video/renderer/VideoDirectDecoder$EventListener;

    .line 120
    iget-object v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->decoderStateAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 122
    :try_start_0
    iget-wide v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeStop(J)I

    move-result v0

    const/4 v1, 0x0

    .line 123
    iput-boolean v1, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->isActive:Z

    .line 125
    iget-boolean v2, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->needToReleaseOutputSurface:Z

    if-eqz v2, :cond_0

    .line 126
    iget-wide v2, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    invoke-static {v2, v3}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeReleaseOutputSurface(J)V

    .line 128
    :cond_0
    iput-boolean v1, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->needToReleaseOutputSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v1, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->decoderStateAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->decoderStateAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method writeBuffer(Ljava/nio/ByteBuffer;IIJIZ)V
    .locals 10

    move-object v0, p0

    .line 208
    iget-wide v1, v0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeWriteBuffer(JLjava/nio/ByteBuffer;IIJIZ)V

    return-void
.end method

.method writeBufferWithCrypto(Ljava/nio/ByteBuffer;IIJIZ[B[BI[I[II)V
    .locals 16

    move-object/from16 v0, p0

    .line 214
    iget-wide v1, v0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    invoke-static/range {v1 .. v15}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeWriteBufferWithCrypto(JLjava/nio/ByteBuffer;IIJIZ[B[BI[I[II)V

    return-void
.end method

.method writeCsdBuffer(Ljava/lang/String;[B)V
    .locals 2

    .line 219
    iget-wide v0, p0, Lcom/oculus/video/renderer/VideoDirectDecoder;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/oculus/video/renderer/VideoDirectDecoder;->nativeWriteCsdBuffer(JLjava/lang/String;[B)V

    return-void
.end method
