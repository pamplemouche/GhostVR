.class public Lorg/webrtc/VideoRendererGui;
.super Ljava/lang/Object;
.source "VideoRendererGui.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/VideoRendererGui$YuvImageRenderer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoRendererGui"

.field private static drawThread:Ljava/lang/Thread;

.field private static eglContext:Lorg/webrtc/EglBase$Context;

.field private static eglContextReady:Ljava/lang/Runnable;

.field private static instance:Lorg/webrtc/VideoRendererGui;

.field private static renderFrameThread:Ljava/lang/Thread;


# instance fields
.field private onSurfaceCreatedCalled:Z

.field private screenHeight:I

.field private screenWidth:I

.field private surface:Landroid/opengl/GLSurfaceView;

.field private final yuvImageRenderers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/webrtc/VideoRendererGui$YuvImageRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    .line 42
    sput-object v0, Lorg/webrtc/VideoRendererGui;->eglContextReady:Ljava/lang/Runnable;

    .line 45
    sput-object v0, Lorg/webrtc/VideoRendererGui;->eglContext:Lorg/webrtc/EglBase$Context;

    return-void
.end method

.method private constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/webrtc/VideoRendererGui;->surface:Landroid/opengl/GLSurfaceView;

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 63
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 64
    invoke-virtual {p1, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/webrtc/VideoRendererGui;->renderFrameThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 38
    sput-object p0, Lorg/webrtc/VideoRendererGui;->renderFrameThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$400()Lorg/webrtc/VideoRendererGui;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    return-object v0
.end method

.method static synthetic access$500(Lorg/webrtc/VideoRendererGui;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lorg/webrtc/VideoRendererGui;->screenWidth:I

    return v0
.end method

.method static synthetic access$600(Lorg/webrtc/VideoRendererGui;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lorg/webrtc/VideoRendererGui;->screenHeight:I

    return v0
.end method

.method public static declared-synchronized create(IIIILorg/webrtc/RendererCommon$ScalingType;Z)Lorg/webrtc/VideoRendererGui$YuvImageRenderer;
    .locals 8

    .prologue
    .line 452
    const-class v7, Lorg/webrtc/VideoRendererGui;

    monitor-enter v7

    :try_start_0
    new-instance v6, Lorg/webrtc/GlRectDrawer;

    invoke-direct {v6}, Lorg/webrtc/GlRectDrawer;-><init>()V

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/webrtc/VideoRendererGui;->create(IIIILorg/webrtc/RendererCommon$ScalingType;ZLorg/webrtc/RendererCommon$GlDrawer;)Lorg/webrtc/VideoRendererGui$YuvImageRenderer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v7

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized create(IIIILorg/webrtc/RendererCommon$ScalingType;ZLorg/webrtc/RendererCommon$GlDrawer;)Lorg/webrtc/VideoRendererGui$YuvImageRenderer;
    .locals 12

    .prologue
    .line 463
    const-class v11, Lorg/webrtc/VideoRendererGui;

    monitor-enter v11

    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x64

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0x64

    if-gt p3, v0, :cond_0

    add-int v0, p0, p2

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    add-int v0, p1, p3

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 466
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Incorrect window parameters."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    .line 469
    :cond_1
    :try_start_1
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    if-nez v0, :cond_2

    .line 470
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to create yuv renderer before setting GLSurfaceView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_2
    new-instance v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    sget-object v1, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v1, v1, Lorg/webrtc/VideoRendererGui;->surface:Landroid/opengl/GLSurfaceView;

    sget-object v2, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v2, v2, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    .line 474
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;-><init>(Landroid/opengl/GLSurfaceView;IIIIILorg/webrtc/RendererCommon$ScalingType;ZLorg/webrtc/RendererCommon$GlDrawer;Lorg/webrtc/VideoRendererGui$1;)V

    .line 476
    sget-object v1, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v1, v1, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    :try_start_2
    sget-object v2, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-boolean v2, v2, Lorg/webrtc/VideoRendererGui;->onSurfaceCreatedCalled:Z

    if-eqz v2, :cond_3

    .line 481
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 482
    sget-object v3, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v3, v3, Lorg/webrtc/VideoRendererGui;->surface:Landroid/opengl/GLSurfaceView;

    new-instance v4, Lorg/webrtc/VideoRendererGui$1;

    invoke-direct {v4, v0, v2}, Lorg/webrtc/VideoRendererGui$1;-><init>(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 493
    :try_start_3
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 499
    :cond_3
    :try_start_4
    sget-object v2, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v2, v2, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 501
    monitor-exit v11

    return-object v0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 500
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static createGui(IIIILorg/webrtc/RendererCommon$ScalingType;Z)Lorg/webrtc/VideoRenderer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 434
    invoke-static/range {p0 .. p5}, Lorg/webrtc/VideoRendererGui;->create(IIIILorg/webrtc/RendererCommon$ScalingType;Z)Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    move-result-object v0

    .line 436
    new-instance v1, Lorg/webrtc/VideoRenderer;

    invoke-direct {v1, v0}, Lorg/webrtc/VideoRenderer;-><init>(Lorg/webrtc/VideoRenderer$Callbacks;)V

    return-object v1
.end method

.method public static createGuiRenderer(IIIILorg/webrtc/RendererCommon$ScalingType;Z)Lorg/webrtc/VideoRenderer$Callbacks;
    .locals 1

    .prologue
    .line 442
    invoke-static/range {p0 .. p5}, Lorg/webrtc/VideoRendererGui;->create(IIIILorg/webrtc/RendererCommon$ScalingType;Z)Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized dispose()V
    .locals 4

    .prologue
    .line 410
    const-class v1, Lorg/webrtc/VideoRendererGui;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 426
    :goto_0
    monitor-exit v1

    return-void

    .line 413
    :cond_0
    :try_start_1
    const-string v0, "VideoRendererGui"

    const-string v2, "VideoRendererGui.dispose"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v2, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 415
    :try_start_2
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v0, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    .line 416
    invoke-static {v0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->access$100(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;)V

    goto :goto_1

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 410
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 418
    :cond_1
    :try_start_4
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v0, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 419
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 420
    const/4 v0, 0x0

    :try_start_5
    sput-object v0, Lorg/webrtc/VideoRendererGui;->renderFrameThread:Ljava/lang/Thread;

    .line 421
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/VideoRendererGui;->drawThread:Ljava/lang/Thread;

    .line 422
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/webrtc/VideoRendererGui;->surface:Landroid/opengl/GLSurfaceView;

    .line 423
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/VideoRendererGui;->eglContext:Lorg/webrtc/EglBase$Context;

    .line 424
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/VideoRendererGui;->eglContextReady:Ljava/lang/Runnable;

    .line 425
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public static declared-synchronized getEglBaseContext()Lorg/webrtc/EglBase$Context;
    .locals 2

    .prologue
    .line 405
    const-class v0, Lorg/webrtc/VideoRendererGui;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/webrtc/VideoRendererGui;->eglContext:Lorg/webrtc/EglBase$Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static printStackTrace(Ljava/lang/Thread;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 569
    if-eqz p0, :cond_0

    .line 570
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 571
    array-length v0, v1

    if-lez v0, :cond_0

    .line 572
    const-string v0, "VideoRendererGui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stacks trace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 574
    const-string v4, "VideoRendererGui"

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    :cond_0
    return-void
.end method

.method public static declared-synchronized printStackTraces()V
    .locals 3

    .prologue
    .line 581
    const-class v1, Lorg/webrtc/VideoRendererGui;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 586
    :goto_0
    monitor-exit v1

    return-void

    .line 584
    :cond_0
    :try_start_1
    sget-object v0, Lorg/webrtc/VideoRendererGui;->renderFrameThread:Ljava/lang/Thread;

    const-string v2, "Render frame thread"

    invoke-static {v0, v2}, Lorg/webrtc/VideoRendererGui;->printStackTrace(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 585
    sget-object v0, Lorg/webrtc/VideoRendererGui;->drawThread:Ljava/lang/Thread;

    const-string v2, "Draw thread"

    invoke-static {v0, v2}, Lorg/webrtc/VideoRendererGui;->printStackTrace(Ljava/lang/Thread;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized remove(Lorg/webrtc/VideoRenderer$Callbacks;)V
    .locals 4

    .prologue
    .line 538
    const-class v1, Lorg/webrtc/VideoRendererGui;

    monitor-enter v1

    :try_start_0
    const-string v0, "VideoRendererGui"

    const-string v2, "VideoRendererGui.remove"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Attempt to remove renderer before setting GLSurfaceView"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 543
    :cond_0
    :try_start_1
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v2, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    :try_start_2
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v0, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 545
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 546
    const-string v0, "VideoRendererGui"

    const-string v3, "Couldn\'t remove renderer (not present in current list)"

    invoke-static {v0, v3}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 551
    monitor-exit v1

    return-void

    .line 548
    :cond_1
    :try_start_3
    sget-object v3, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v3, v3, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    invoke-static {v0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->access$100(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;)V

    goto :goto_0

    .line 550
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static declared-synchronized reset(Lorg/webrtc/VideoRenderer$Callbacks;)V
    .locals 4

    .prologue
    .line 554
    const-class v1, Lorg/webrtc/VideoRendererGui;

    monitor-enter v1

    :try_start_0
    const-string v0, "VideoRendererGui"

    const-string v2, "VideoRendererGui.reset"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Attempt to reset renderer before setting GLSurfaceView"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 559
    :cond_0
    :try_start_1
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v2, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 560
    :try_start_2
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v0, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    .line 561
    if-ne v0, p0, :cond_1

    .line 562
    invoke-virtual {v0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->reset()V

    goto :goto_0

    .line 565
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 566
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized setRendererEvents(Lorg/webrtc/VideoRenderer$Callbacks;Lorg/webrtc/RendererCommon$RendererEvents;)V
    .locals 4

    .prologue
    .line 523
    const-class v1, Lorg/webrtc/VideoRendererGui;

    monitor-enter v1

    :try_start_0
    const-string v0, "VideoRendererGui"

    const-string v2, "VideoRendererGui.setRendererEvents"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Attempt to set renderer events before setting GLSurfaceView"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 528
    :cond_0
    :try_start_1
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v2, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    :try_start_2
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v0, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    .line 530
    if-ne v0, p0, :cond_1

    .line 531
    invoke-static {v0, p1}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->access$702(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;Lorg/webrtc/RendererCommon$RendererEvents;)Lorg/webrtc/RendererCommon$RendererEvents;

    goto :goto_0

    .line 534
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 535
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized setView(Landroid/opengl/GLSurfaceView;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 399
    const-class v1, Lorg/webrtc/VideoRendererGui;

    monitor-enter v1

    :try_start_0
    const-string v0, "VideoRendererGui"

    const-string v2, "VideoRendererGui.setView"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    new-instance v0, Lorg/webrtc/VideoRendererGui;

    invoke-direct {v0, p0}, Lorg/webrtc/VideoRendererGui;-><init>(Landroid/opengl/GLSurfaceView;)V

    sput-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    .line 401
    sput-object p1, Lorg/webrtc/VideoRendererGui;->eglContextReady:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit v1

    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized update(Lorg/webrtc/VideoRenderer$Callbacks;IIIILorg/webrtc/RendererCommon$ScalingType;Z)V
    .locals 10

    .prologue
    .line 507
    const-class v7, Lorg/webrtc/VideoRendererGui;

    monitor-enter v7

    :try_start_0
    const-string v0, "VideoRendererGui"

    const-string v1, "VideoRendererGui.update"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to update yuv renderer before setting GLSurfaceView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 512
    :cond_0
    :try_start_1
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v8, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    :try_start_2
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v0, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    .line 514
    if-ne v0, p0, :cond_1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    .line 515
    invoke-virtual/range {v0 .. v6}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->setPosition(IIIILorg/webrtc/RendererCommon$ScalingType;Z)V

    goto :goto_0

    .line 518
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 519
    monitor-exit v7

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 637
    sget-object v0, Lorg/webrtc/VideoRendererGui;->drawThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 638
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lorg/webrtc/VideoRendererGui;->drawThread:Ljava/lang/Thread;

    .line 640
    :cond_0
    iget v0, p0, Lorg/webrtc/VideoRendererGui;->screenWidth:I

    iget v1, p0, Lorg/webrtc/VideoRendererGui;->screenHeight:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 641
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 642
    iget-object v1, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 643
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    .line 644
    invoke-static {v0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->access$800(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;)V

    goto :goto_0

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 647
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5

    .prologue
    .line 624
    const-string v0, "VideoRendererGui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoRendererGui.onSurfaceChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iput p2, p0, Lorg/webrtc/VideoRendererGui;->screenWidth:I

    .line 627
    iput p3, p0, Lorg/webrtc/VideoRendererGui;->screenHeight:I

    .line 628
    iget-object v1, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 629
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    .line 630
    iget v3, p0, Lorg/webrtc/VideoRendererGui;->screenWidth:I

    iget v4, p0, Lorg/webrtc/VideoRendererGui;->screenHeight:I

    invoke-virtual {v0, v3, v4}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->setScreenSize(II)V

    goto :goto_0

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const v4, 0x3e19999a    # 0.15f

    .line 591
    const-string v0, "VideoRendererGui"

    const-string v1, "VideoRendererGui.onSurfaceCreated"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-class v1, Lorg/webrtc/VideoRendererGui;

    monitor-enter v1

    .line 594
    :try_start_0
    invoke-static {}, Lorg/webrtc/EglBase14;->isEGL14Supported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    new-instance v0, Lorg/webrtc/EglBase14$Context;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/webrtc/EglBase14$Context;-><init>(Landroid/opengl/EGLContext;)V

    sput-object v0, Lorg/webrtc/VideoRendererGui;->eglContext:Lorg/webrtc/EglBase$Context;

    .line 600
    :goto_0
    const-string v0, "VideoRendererGui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoRendererGui EGL Context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/webrtc/VideoRendererGui;->eglContext:Lorg/webrtc/EglBase$Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 603
    iget-object v1, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 605
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    .line 606
    invoke-static {v0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->access$300(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;)V

    goto :goto_1

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 597
    :cond_0
    :try_start_2
    new-instance v2, Lorg/webrtc/EglBase10$Context;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/webrtc/EglBase10$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    sput-object v2, Lorg/webrtc/VideoRendererGui;->eglContext:Lorg/webrtc/EglBase$Context;

    goto :goto_0

    .line 601
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 608
    :cond_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lorg/webrtc/VideoRendererGui;->onSurfaceCreatedCalled:Z

    .line 609
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 610
    const-string v0, "onSurfaceCreated done"

    invoke-static {v0}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 611
    const/16 v0, 0xcf5

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 612
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v4, v4, v4, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 615
    const-class v1, Lorg/webrtc/VideoRendererGui;

    monitor-enter v1

    .line 616
    :try_start_4
    sget-object v0, Lorg/webrtc/VideoRendererGui;->eglContextReady:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 617
    sget-object v0, Lorg/webrtc/VideoRendererGui;->eglContextReady:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 619
    :cond_2
    monitor-exit v1

    .line 620
    return-void

    .line 619
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method
