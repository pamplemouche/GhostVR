.class public Lorg/chromium/media/ScreenCapture;
.super Landroid/app/Fragment;
.source "PG"


# instance fields
.field public A:Landroid/media/projection/MediaProjectionManager;

.field public B:Landroid/hardware/display/VirtualDisplay;

.field public C:Landroid/view/Surface;

.field public D:Landroid/media/ImageReader;

.field public E:Landroid/os/HandlerThread;

.field public F:Landroid/os/Handler;

.field public G:Landroid/view/Display;

.field public H:I

.field public I:Landroid/content/Intent;

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public final w:J

.field public final x:Ljava/lang/Object;

.field public y:I

.field public z:Landroid/media/projection/MediaProjection;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/media/ScreenCapture;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/ScreenCapture;->x:Ljava/lang/Object;

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lorg/chromium/media/ScreenCapture;->y:I

    .line 4
    iput-wide p1, p0, Lorg/chromium/media/ScreenCapture;->w:J

    return-void
.end method

.method public static synthetic a(Lorg/chromium/media/ScreenCapture;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/media/ScreenCapture;->a(I)V

    return-void
.end method

.method public static createScreenCaptureMachine(J)Lorg/chromium/media/ScreenCapture;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/media/ScreenCapture;

    invoke-direct {v0, p0, p1}, Lorg/chromium/media/ScreenCapture;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/chromium/media/ScreenCapture;->D:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 4
    :cond_0
    iget v0, p0, Lorg/chromium/media/ScreenCapture;->K:I

    iget v1, p0, Lorg/chromium/media/ScreenCapture;->L:I

    iget v2, p0, Lorg/chromium/media/ScreenCapture;->M:I

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/media/ScreenCapture;->D:Landroid/media/ImageReader;

    .line 5
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/media/ScreenCapture;->C:Landroid/view/Surface;

    .line 6
    new-instance v0, LY41;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY41;-><init>(Lorg/chromium/media/ScreenCapture;LX41;)V

    .line 7
    iget-object v1, p0, Lorg/chromium/media/ScreenCapture;->D:Landroid/media/ImageReader;

    iget-object v2, p0, Lorg/chromium/media/ScreenCapture;->F:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/chromium/media/ScreenCapture;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iput p1, p0, Lorg/chromium/media/ScreenCapture;->y:I

    .line 10
    iget-object p1, p0, Lorg/chromium/media/ScreenCapture;->x:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public allocate(II)Z
    .locals 2

    .line 1
    iput p1, p0, Lorg/chromium/media/ScreenCapture;->K:I

    .line 2
    iput p2, p0, Lorg/chromium/media/ScreenCapture;->L:I

    .line 3
    sget-object p1, LzT;->a:Landroid/content/Context;

    const-string p2, "media_projection"

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    iput-object p1, p0, Lorg/chromium/media/ScreenCapture;->A:Landroid/media/projection/MediaProjectionManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "cr_ScreenCapture"

    const-string v1, "mMediaProjectionManager is null"

    .line 5
    invoke-static {v0, v1, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 6
    :cond_0
    sget-object p1, LzT;->a:Landroid/content/Context;

    const-string p2, "window"

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 8
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/media/ScreenCapture;->G:Landroid/view/Display;

    .line 9
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 10
    iget-object p2, p0, Lorg/chromium/media/ScreenCapture;->G:Landroid/view/Display;

    invoke-virtual {p2, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 11
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lorg/chromium/media/ScreenCapture;->J:I

    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/chromium/media/ScreenCapture;->B:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/chromium/media/ScreenCapture;->z:Landroid/media/projection/MediaProjection;

    iget v3, p0, Lorg/chromium/media/ScreenCapture;->K:I

    iget v4, p0, Lorg/chromium/media/ScreenCapture;->L:I

    iget v5, p0, Lorg/chromium/media/ScreenCapture;->J:I

    const/16 v6, 0x10

    iget-object v7, p0, Lorg/chromium/media/ScreenCapture;->C:Landroid/view/Surface;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "ScreenCapture"

    invoke-virtual/range {v1 .. v9}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/media/ScreenCapture;->B:Landroid/hardware/display/VirtualDisplay;

    return-void
.end method

.method public final c()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/media/ScreenCapture;->G:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/16 v1, 0xb4

    const/16 v2, 0x5a

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    goto :goto_1

    :cond_1
    const/16 v0, 0xb4

    goto :goto_1

    :cond_2
    const/16 v0, 0x5a

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_5

    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 2
    :goto_2
    iget v2, p0, Lorg/chromium/media/ScreenCapture;->H:I

    if-ne v1, v2, :cond_6

    return v3

    .line 3
    :cond_6
    iput v1, p0, Lorg/chromium/media/ScreenCapture;->H:I

    if-ne v1, v4, :cond_7

    .line 4
    iget v2, p0, Lorg/chromium/media/ScreenCapture;->K:I

    iget v3, p0, Lorg/chromium/media/ScreenCapture;->L:I

    if-lt v2, v3, :cond_8

    :cond_7
    if-nez v1, :cond_9

    iget v1, p0, Lorg/chromium/media/ScreenCapture;->L:I

    iget v2, p0, Lorg/chromium/media/ScreenCapture;->K:I

    if-ge v1, v2, :cond_9

    .line 5
    :cond_8
    iget v1, p0, Lorg/chromium/media/ScreenCapture;->K:I

    iget v2, p0, Lorg/chromium/media/ScreenCapture;->L:I

    iput v1, p0, Lorg/chromium/media/ScreenCapture;->L:I

    sub-int/2addr v2, v1

    add-int/2addr v2, v1

    iput v2, p0, Lorg/chromium/media/ScreenCapture;->K:I

    .line 6
    :cond_9
    iget-wide v1, p0, Lorg/chromium/media/ScreenCapture;->w:J

    .line 7
    invoke-static {v1, v2, p0, v0}, LJ/N;->Ml8UDaFX(JLjava/lang/Object;I)V

    return v4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 1
    iput p2, p0, Lorg/chromium/media/ScreenCapture;->N:I

    .line 2
    iput-object p3, p0, Lorg/chromium/media/ScreenCapture;->I:Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Lorg/chromium/media/ScreenCapture;->a(I)V

    .line 4
    :cond_1
    iget-wide v1, p0, Lorg/chromium/media/ScreenCapture;->w:J

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-static {v1, v2, p0, v0}, LJ/N;->M2auslLM(JLjava/lang/Object;Z)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lorg/chromium/media/ScreenCapture;->a(I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lorg/chromium/media/ScreenCapture;->a(I)V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 2
    invoke-virtual {p0}, Lorg/chromium/media/ScreenCapture;->stopCapture()V

    return-void
.end method

.method public startCapture()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/media/ScreenCapture;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/chromium/media/ScreenCapture;->y:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const-string v1, "cr_ScreenCapture"

    const-string v2, "startCapture() invoked without user permission."

    new-array v4, v3, [Ljava/lang/Object;

    .line 3
    invoke-static {v1, v2, v4}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    monitor-exit v0

    return v3

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lorg/chromium/media/ScreenCapture;->A:Landroid/media/projection/MediaProjectionManager;

    iget v1, p0, Lorg/chromium/media/ScreenCapture;->N:I

    iget-object v4, p0, Lorg/chromium/media/ScreenCapture;->I:Landroid/content/Intent;

    invoke-virtual {v0, v1, v4}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/media/ScreenCapture;->z:Landroid/media/projection/MediaProjection;

    if-nez v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "cr_ScreenCapture"

    const-string v2, "mMediaProjection is null"

    .line 7
    invoke-static {v1, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 8
    :cond_1
    new-instance v1, LZ41;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, LZ41;-><init>(Lorg/chromium/media/ScreenCapture;LX41;)V

    invoke-virtual {v0, v1, v3}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 9
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScreenCapture"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/media/ScreenCapture;->E:Landroid/os/HandlerThread;

    .line 10
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 11
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/media/ScreenCapture;->E:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/media/ScreenCapture;->F:Landroid/os/Handler;

    .line 12
    iput v2, p0, Lorg/chromium/media/ScreenCapture;->M:I

    .line 13
    invoke-virtual {p0}, Lorg/chromium/media/ScreenCapture;->c()Z

    .line 14
    invoke-virtual {p0}, Lorg/chromium/media/ScreenCapture;->a()V

    .line 15
    invoke-virtual {p0}, Lorg/chromium/media/ScreenCapture;->b()V

    const/4 v0, 0x2

    .line 16
    invoke-virtual {p0, v0}, Lorg/chromium/media/ScreenCapture;->a(I)V

    return v2

    :catchall_0
    move-exception v1

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startPrompt()Z
    .locals 6

    .line 1
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "cr_ScreenCapture"

    const-string v3, "activity is null"

    .line 2
    invoke-static {v2, v3, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v2, "screencapture"

    .line 5
    invoke-virtual {v0, p0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 7
    iget-object v0, p0, Lorg/chromium/media/ScreenCapture;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :goto_0
    :try_start_1
    iget v2, p0, Lorg/chromium/media/ScreenCapture;->y:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 9
    :try_start_2
    iget-object v2, p0, Lorg/chromium/media/ScreenCapture;->x:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "cr_ScreenCapture"

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenCaptureException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    iget-object v0, p0, Lorg/chromium/media/ScreenCapture;->A:Landroid/media/projection/MediaProjectionManager;

    .line 13
    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    .line 14
    invoke-virtual {p0, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    return v2

    :catch_1
    move-exception v0

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScreenCaptureException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "cr_ScreenCapture"

    invoke-static {v3, v0, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :catchall_0
    move-exception v1

    .line 16
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :catch_2
    move-exception v0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScreenCaptureExcaption "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "cr_ScreenCapture"

    invoke-static {v3, v0, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public stopCapture()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/media/ScreenCapture;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/ScreenCapture;->z:Landroid/media/projection/MediaProjection;

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/chromium/media/ScreenCapture;->y:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 3
    iget-object v1, p0, Lorg/chromium/media/ScreenCapture;->z:Landroid/media/projection/MediaProjection;

    invoke-virtual {v1}, Landroid/media/projection/MediaProjection;->stop()V

    const/4 v1, 0x3

    .line 4
    invoke-virtual {p0, v1}, Lorg/chromium/media/ScreenCapture;->a(I)V

    .line 5
    :goto_0
    iget v1, p0, Lorg/chromium/media/ScreenCapture;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_1

    .line 6
    :try_start_1
    iget-object v1, p0, Lorg/chromium/media/ScreenCapture;->x:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "cr_ScreenCapture"

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenCaptureEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v2}, Lorg/chromium/media/ScreenCapture;->a(I)V

    .line 9
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
