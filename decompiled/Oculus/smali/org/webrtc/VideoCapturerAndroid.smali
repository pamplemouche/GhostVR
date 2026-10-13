.class public Lorg/webrtc/VideoCapturerAndroid;
.super Ljava/lang/Object;
.source "VideoCapturerAndroid.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;
.implements Lorg/webrtc/VideoCapturer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;,
        Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;,
        Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;
    }
.end annotation


# static fields
.field private static final CAMERA_FREEZE_REPORT_TIMOUT_MS:I = 0x1770

.field private static final CAMERA_OBSERVER_PERIOD_MS:I = 0x7d0

.field private static final MAX_OPEN_CAMERA_ATTEMPTS:I = 0x3

.field private static final NUMBER_OF_CAPTURE_BUFFERS:I = 0x3

.field private static final OPEN_CAMERA_DELAY_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "VideoCapturerAndroid"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private camera:Landroid/hardware/Camera;

.field private final cameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private final cameraIdLock:Ljava/lang/Object;

.field private final cameraObserver:Ljava/lang/Runnable;

.field private final cameraStatistics:Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;

.field private cameraThread:Landroid/os/HandlerThread;

.field private final cameraThreadHandler:Landroid/os/Handler;

.field private captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

.field private dropNextFrame:Z

.field private final eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

.field private firstFrameReported:Z

.field private frameObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

.field private id:I

.field private info:Landroid/hardware/Camera$CameraInfo;

.field private final isCapturingToTexture:Z

.field private openCameraAttempts:I

.field private openCameraOnCodecThreadRunner:Ljava/lang/Runnable;

.field private volatile pendingCameraSwitch:Z

.field private final pendingCameraSwitchLock:Ljava/lang/Object;

.field private final queuedBuffers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end field

.field private requestedFramerate:I

.field private requestedHeight:I

.field private requestedWidth:I

.field final surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;


# direct methods
.method private constructor <init>(ILorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;Lorg/webrtc/EglBase$Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraIdLock:Ljava/lang/Object;

    .line 70
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->pendingCameraSwitchLock:Ljava/lang/Object;

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->frameObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    .line 79
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->queuedBuffers:Ljava/util/Set;

    .line 84
    iput-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->dropNextFrame:Z

    .line 93
    new-instance v1, Lorg/webrtc/VideoCapturerAndroid$1;

    invoke-direct {v1, p0}, Lorg/webrtc/VideoCapturerAndroid$1;-><init>(Lorg/webrtc/VideoCapturerAndroid;)V

    iput-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 111
    new-instance v1, Lorg/webrtc/VideoCapturerAndroid$2;

    invoke-direct {v1, p0}, Lorg/webrtc/VideoCapturerAndroid$2;-><init>(Lorg/webrtc/VideoCapturerAndroid;)V

    iput-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraObserver:Ljava/lang/Runnable;

    .line 303
    iput p1, p0, Lorg/webrtc/VideoCapturerAndroid;->id:I

    .line 304
    iput-object p2, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    .line 305
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "VideoCapturerAndroid"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThread:Landroid/os/HandlerThread;

    .line 306
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 307
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    .line 308
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->isCapturingToTexture:Z

    .line 309
    new-instance v0, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;

    invoke-direct {v0}, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraStatistics:Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;

    .line 310
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    invoke-static {p3, v0}, Lorg/webrtc/SurfaceTextureHelper;->create(Lorg/webrtc/EglBase$Context;Landroid/os/Handler;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 311
    iget-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->isCapturingToTexture:Z

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0, p0}, Lorg/webrtc/SurfaceTextureHelper;->setListener(Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V

    .line 314
    :cond_1
    const-string v0, "VideoCapturerAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCapturerAndroid isCapturingToTexture : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/webrtc/VideoCapturerAndroid;->isCapturingToTexture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/VideoCapturerAndroid;)Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    return-object v0
.end method

.method static synthetic access$100(Lorg/webrtc/VideoCapturerAndroid;)Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraStatistics:Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/webrtc/VideoCapturerAndroid;IIILorg/webrtc/VideoCapturer$CapturerObserver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p5}, Lorg/webrtc/VideoCapturerAndroid;->startCaptureOnCameraThread(IIILorg/webrtc/VideoCapturer$CapturerObserver;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/webrtc/VideoCapturerAndroid;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->stopCaptureOnCameraThread()V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/VideoCapturerAndroid;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lorg/webrtc/VideoCapturerAndroid;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lorg/webrtc/VideoCapturerAndroid;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->switchCameraOnCameraThread()V

    return-void
.end method

.method static synthetic access$500(Lorg/webrtc/VideoCapturerAndroid;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->pendingCameraSwitchLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lorg/webrtc/VideoCapturerAndroid;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/webrtc/VideoCapturerAndroid;->pendingCameraSwitch:Z

    return p1
.end method

.method static synthetic access$700(Lorg/webrtc/VideoCapturerAndroid;)Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method static synthetic access$800(Lorg/webrtc/VideoCapturerAndroid;III)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/webrtc/VideoCapturerAndroid;->onOutputFormatRequestOnCameraThread(III)V

    return-void
.end method

.method static synthetic access$900(Lorg/webrtc/VideoCapturerAndroid;III)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/webrtc/VideoCapturerAndroid;->startPreviewOnCameraThread(III)V

    return-void
.end method

.method private checkIsOnCameraThread()V
    .locals 2

    .prologue
    .line 318
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThread:Landroid/os/HandlerThread;

    if-eq v0, v1, :cond_0

    .line 319
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    return-void
.end method

.method public static create(Ljava/lang/String;Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;)Lorg/webrtc/VideoCapturerAndroid;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/webrtc/VideoCapturerAndroid;->create(Ljava/lang/String;Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;Lorg/webrtc/EglBase$Context;)Lorg/webrtc/VideoCapturerAndroid;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;Lorg/webrtc/EglBase$Context;)Lorg/webrtc/VideoCapturerAndroid;
    .locals 2

    .prologue
    .line 195
    invoke-static {p0}, Lorg/webrtc/VideoCapturerAndroid;->lookupDeviceName(Ljava/lang/String;)I

    move-result v1

    .line 196
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/webrtc/VideoCapturerAndroid;

    invoke-direct {v0, v1, p1, p2}, Lorg/webrtc/VideoCapturerAndroid;-><init>(ILorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;Lorg/webrtc/EglBase$Context;)V

    goto :goto_0
.end method

.method private getDeviceOrientation()I
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 619
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 631
    const/4 v0, 0x0

    .line 634
    :goto_0
    return v0

    .line 621
    :pswitch_0
    const/16 v0, 0x5a

    .line 622
    goto :goto_0

    .line 624
    :pswitch_1
    const/16 v0, 0xb4

    .line 625
    goto :goto_0

    .line 627
    :pswitch_2
    const/16 v0, 0x10e

    .line 628
    goto :goto_0

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getFrameOrientation()I
    .locals 2

    .prologue
    .line 638
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->getDeviceOrientation()I

    move-result v0

    .line 639
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_0

    .line 640
    rsub-int v0, v0, 0x168

    .line 642
    :cond_0
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private static lookupDeviceName(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 326
    const-string v2, "VideoCapturerAndroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lookupDeviceName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    if-eqz p0, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 338
    :cond_1
    :goto_0
    return v0

    .line 330
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 333
    :goto_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 334
    invoke-static {v0}, Lorg/webrtc/CameraEnumerationAndroid;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 338
    goto :goto_0
.end method

.method private onOutputFormatRequestOnCameraThread(III)V
    .locals 3

    .prologue
    .line 599
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->checkIsOnCameraThread()V

    .line 600
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 601
    const-string v0, "VideoCapturerAndroid"

    const-string v1, "Calling onOutputFormatRequest() on stopped camera."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :goto_0
    return-void

    .line 604
    :cond_0
    const-string v0, "VideoCapturerAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOutputFormatRequestOnCameraThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->frameObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    invoke-interface {v0, p1, p2, p3}, Lorg/webrtc/VideoCapturer$CapturerObserver;->onOutputFormatRequest(III)V

    goto :goto_0
.end method

.method private startCaptureOnCameraThread(IIILorg/webrtc/VideoCapturer$CapturerObserver;Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 392
    const/4 v1, 0x0

    .line 393
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->checkIsOnCameraThread()V

    .line 394
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Camera has already been started."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    iput-object p5, p0, Lorg/webrtc/VideoCapturerAndroid;->applicationContext:Landroid/content/Context;

    .line 398
    iput-object p4, p0, Lorg/webrtc/VideoCapturerAndroid;->frameObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    .line 399
    iput-boolean v7, p0, Lorg/webrtc/VideoCapturerAndroid;->firstFrameReported:Z

    .line 403
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraIdLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :try_start_1
    const-string v0, "VideoCapturerAndroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/webrtc/VideoCapturerAndroid;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    iget v3, p0, Lorg/webrtc/VideoCapturerAndroid;->id:I

    invoke-interface {v0, v3}, Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;->onCameraOpening(I)V

    .line 408
    :cond_1
    iget v0, p0, Lorg/webrtc/VideoCapturerAndroid;->id:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    .line 409
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    .line 410
    iget v0, p0, Lorg/webrtc/VideoCapturerAndroid;->id:I

    iget-object v3, p0, Lorg/webrtc/VideoCapturerAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 411
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    :try_start_2
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v2}, Lorg/webrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 436
    :try_start_3
    const-string v0, "VideoCapturerAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " .Device orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 437
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->getDeviceOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 439
    invoke-direct {p0, p1, p2, p3}, Lorg/webrtc/VideoCapturerAndroid;->startPreviewOnCameraThread(III)V

    .line 440
    const/4 v0, 0x1

    invoke-interface {p4, v0}, Lorg/webrtc/VideoCapturer$CapturerObserver;->onCapturerStarted(Z)V

    .line 443
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraObserver:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 454
    :cond_2
    :goto_0
    return-void

    .line 411
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    :try_start_6
    iget v1, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraAttempts:I

    .line 414
    iget v1, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraAttempts:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    .line 415
    const-string v1, "VideoCapturerAndroid"

    const-string v2, "Camera.open failed, retrying"

    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    new-instance v0, Lorg/webrtc/VideoCapturerAndroid$8;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/VideoCapturerAndroid$8;-><init>(Lorg/webrtc/VideoCapturerAndroid;IIILorg/webrtc/VideoCapturer$CapturerObserver;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraOnCodecThreadRunner:Ljava/lang/Runnable;

    .line 422
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraOnCodecThreadRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 445
    :catch_1
    move-exception v0

    .line 448
    const-string v1, "VideoCapturerAndroid"

    const-string/jumbo v2, "startCapture failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 449
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->stopCaptureOnCameraThread()V

    .line 450
    invoke-interface {p4, v7}, Lorg/webrtc/VideoCapturer$CapturerObserver;->onCapturerStarted(Z)V

    .line 451
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    const-string v1, "Camera can not be started."

    invoke-interface {v0, v1}, Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;->onCameraError(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_3
    const/4 v1, 0x0

    :try_start_7
    iput v1, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraAttempts:I

    .line 426
    throw v0

    .line 431
    :catch_2
    move-exception v0

    .line 432
    const-string v2, "VideoCapturerAndroid"

    const-string/jumbo v3, "setPreviewTexture failed"

    invoke-static {v2, v3, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 433
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
.end method

.method private startPreviewOnCameraThread(III)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 459
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->checkIsOnCameraThread()V

    .line 460
    const-string v1, "VideoCapturerAndroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPreviewOnCameraThread requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 463
    const-string v0, "VideoCapturerAndroid"

    const-string v1, "Calling startPreviewOnCameraThread on stopped camera."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    iput p1, p0, Lorg/webrtc/VideoCapturerAndroid;->requestedWidth:I

    .line 468
    iput p2, p0, Lorg/webrtc/VideoCapturerAndroid;->requestedHeight:I

    .line 469
    iput p3, p0, Lorg/webrtc/VideoCapturerAndroid;->requestedFramerate:I

    .line 472
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 473
    mul-int/lit16 v2, p3, 0x3e8

    invoke-static {v1, v2}, Lorg/webrtc/CameraEnumerationAndroid;->getFramerateRange(Landroid/hardware/Camera$Parameters;I)[I

    move-result-object v2

    .line 476
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 475
    invoke-static {v3, p1, p2}, Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 477
    new-instance v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    aget v6, v2, v0

    aget v2, v2, v7

    invoke-direct {v4, v5, v3, v6, v2}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;-><init>(IIII)V

    .line 483
    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    invoke-virtual {v4, v2}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->isSameFormat(Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 488
    const-string v2, "VideoCapturerAndroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVideoStabilizationSupported: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 489
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 488
    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 491
    invoke-virtual {v1, v7}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 495
    :cond_2
    iget v2, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->maxFramerate:I

    if-lez v2, :cond_3

    .line 496
    iget v2, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->minFramerate:I

    iget v3, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->maxFramerate:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 498
    :cond_3
    iget v2, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget v3, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 500
    iget-boolean v2, p0, Lorg/webrtc/VideoCapturerAndroid;->isCapturingToTexture:Z

    if-nez v2, :cond_4

    .line 501
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 507
    :cond_4
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    .line 506
    invoke-static {v2, p1, p2}, Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 508
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 511
    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    if-eqz v2, :cond_5

    .line 512
    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 513
    iput-boolean v7, p0, Lorg/webrtc/VideoCapturerAndroid;->dropNextFrame:Z

    .line 516
    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 520
    :cond_5
    const-string v2, "VideoCapturerAndroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start capturing: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iput-object v4, p0, Lorg/webrtc/VideoCapturerAndroid;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 523
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 524
    const-string v3, "continuous-video"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 525
    const-string v2, "continuous-video"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 528
    :cond_6
    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 529
    iget-boolean v1, p0, Lorg/webrtc/VideoCapturerAndroid;->isCapturingToTexture:Z

    if-nez v1, :cond_8

    .line 530
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->queuedBuffers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 531
    invoke-virtual {v4}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->frameSize()I

    move-result v1

    .line 532
    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_7

    .line 533
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 534
    iget-object v3, p0, Lorg/webrtc/VideoCapturerAndroid;->queuedBuffers:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v3, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 537
    :cond_7
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 539
    :cond_8
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    goto/16 :goto_0
.end method

.method private stopCaptureOnCameraThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 558
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->checkIsOnCameraThread()V

    .line 559
    const-string v0, "VideoCapturerAndroid"

    const-string/jumbo v1, "stopCaptureOnCameraThread"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraOnCodecThreadRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraOnCodecThreadRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 563
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/VideoCapturerAndroid;->openCameraAttempts:I

    .line 564
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 565
    const-string v0, "VideoCapturerAndroid"

    const-string v1, "Calling stopCapture() for already stopped camera."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_1
    :goto_0
    return-void

    .line 569
    :cond_2
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraObserver:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 570
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraStatistics:Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;

    invoke-virtual {v0}, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;->getAndResetFrameCount()I

    .line 571
    const-string v0, "VideoCapturerAndroid"

    const-string v1, "Stop preview."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 573
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 574
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->queuedBuffers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 575
    iput-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 577
    const-string v0, "VideoCapturerAndroid"

    const-string v1, "Release camera."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 579
    iput-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    .line 580
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    invoke-interface {v0}, Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;->onCameraClosed()V

    goto :goto_0
.end method

.method private switchCameraOnCameraThread()V
    .locals 6

    .prologue
    .line 586
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->checkIsOnCameraThread()V

    .line 587
    const-string v0, "VideoCapturerAndroid"

    const-string/jumbo v1, "switchCameraOnCameraThread"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->stopCaptureOnCameraThread()V

    .line 589
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraIdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 590
    :try_start_0
    iget v0, p0, Lorg/webrtc/VideoCapturerAndroid;->id:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    rem-int/2addr v0, v2

    iput v0, p0, Lorg/webrtc/VideoCapturerAndroid;->id:I

    .line 591
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->dropNextFrame:Z

    .line 593
    iget v1, p0, Lorg/webrtc/VideoCapturerAndroid;->requestedWidth:I

    iget v2, p0, Lorg/webrtc/VideoCapturerAndroid;->requestedHeight:I

    iget v3, p0, Lorg/webrtc/VideoCapturerAndroid;->requestedFramerate:I

    iget-object v4, p0, Lorg/webrtc/VideoCapturerAndroid;->frameObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    iget-object v5, p0, Lorg/webrtc/VideoCapturerAndroid;->applicationContext:Landroid/content/Context;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/webrtc/VideoCapturerAndroid;->startCaptureOnCameraThread(IIILorg/webrtc/VideoCapturer$CapturerObserver;Landroid/content/Context;)V

    .line 595
    const-string v0, "VideoCapturerAndroid"

    const-string/jumbo v1, "switchCameraOnCameraThread done"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-void

    .line 591
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public changeCaptureFormat(III)V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/VideoCapturerAndroid$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/webrtc/VideoCapturerAndroid$5;-><init>(Lorg/webrtc/VideoCapturerAndroid;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 345
    const-string v0, "VideoCapturerAndroid"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lorg/webrtc/VideoCapturerAndroid;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/VideoCapturerAndroid$6;

    invoke-direct {v1, p0}, Lorg/webrtc/VideoCapturerAndroid$6;-><init>(Lorg/webrtc/VideoCapturerAndroid;)V

    invoke-static {v0, v1}, Lorg/webrtc/ThreadUtils;->invokeUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 357
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/webrtc/SurfaceTextureHelper;->disconnect(Landroid/os/Handler;)V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThread:Landroid/os/HandlerThread;

    .line 359
    return-void
.end method

.method getCameraThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getCurrentCameraId()I
    .locals 2

    .prologue
    .line 281
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraIdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_0
    iget v0, p0, Lorg/webrtc/VideoCapturerAndroid;->id:I

    monitor-exit v1

    return v0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSupportedFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0}, Lorg/webrtc/VideoCapturerAndroid;->getCurrentCameraId()I

    move-result v0

    invoke-static {v0}, Lorg/webrtc/CameraEnumerationAndroid;->getSupportedFormats(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceTextureHelper()Lorg/webrtc/SurfaceTextureHelper;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    return-object v0
.end method

.method public isCapturingToTexture()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->isCapturingToTexture:Z

    return v0
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOutputFormatRequest(III)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/VideoCapturerAndroid$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/webrtc/VideoCapturerAndroid$4;-><init>(Lorg/webrtc/VideoCapturerAndroid;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    .prologue
    .line 648
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->checkIsOnCameraThread()V

    .line 649
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->queuedBuffers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    if-eq v0, p2, :cond_2

    .line 654
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected camera in callback!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 658
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 660
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->firstFrameReported:Z

    if-nez v0, :cond_3

    .line 661
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    invoke-interface {v0}, Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;->onFirstFrameAvailable()V

    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->firstFrameReported:Z

    .line 665
    :cond_3
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraStatistics:Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;

    invoke-virtual {v0}, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;->addFrame()V

    .line 666
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->frameObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget v3, v0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget v4, v0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    .line 667
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->getFrameOrientation()I

    move-result v5

    move-object v2, p1

    .line 666
    invoke-interface/range {v1 .. v7}, Lorg/webrtc/VideoCapturer$CapturerObserver;->onByteBufferFrameCaptured([BIIIJ)V

    .line 668
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0
.end method

.method public onTextureFrameAvailable(I[FJ)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 674
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->checkIsOnCameraThread()V

    .line 675
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceTextureHelper;->returnTextureFrame()V

    .line 700
    :goto_0
    return-void

    .line 680
    :cond_0
    iget-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->dropNextFrame:Z

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceTextureHelper;->returnTextureFrame()V

    .line 682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->dropNextFrame:Z

    goto :goto_0

    .line 685
    :cond_1
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->firstFrameReported:Z

    if-nez v0, :cond_2

    .line 686
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->eventsHandler:Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    invoke-interface {v0}, Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;->onFirstFrameAvailable()V

    .line 687
    iput-boolean v1, p0, Lorg/webrtc/VideoCapturerAndroid;->firstFrameReported:Z

    .line 690
    :cond_2
    invoke-direct {p0}, Lorg/webrtc/VideoCapturerAndroid;->getFrameOrientation()I

    move-result v5

    .line 691
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_3

    .line 695
    invoke-static {}, Lorg/webrtc/RendererCommon;->horizontalFlipMatrix()[F

    move-result-object v0

    invoke-static {p2, v0}, Lorg/webrtc/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object v4

    .line 697
    :goto_1
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraStatistics:Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;

    invoke-virtual {v0}, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;->addFrame()V

    .line 698
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->frameObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget v1, v1, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget v2, v2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    move v3, p1

    move-wide v6, p3

    invoke-interface/range {v0 .. v7}, Lorg/webrtc/VideoCapturer$CapturerObserver;->onTextureFrameCaptured(III[FIJ)V

    goto :goto_0

    :cond_3
    move-object v4, p2

    goto :goto_1
.end method

.method public printStackTrace()V
    .locals 5

    .prologue
    .line 203
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 205
    array-length v0, v1

    if-lez v0, :cond_0

    .line 206
    const-string v0, "VideoCapturerAndroid"

    const-string v2, "VideoCapturerAndroid stacks trace:"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 208
    const-string v4, "VideoCapturerAndroid"

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method public startCapture(IIILandroid/content/Context;Lorg/webrtc/VideoCapturer$CapturerObserver;)V
    .locals 8

    .prologue
    .line 372
    const-string v0, "VideoCapturerAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCapture requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    if-nez p4, :cond_0

    .line 375
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationContext not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    if-nez p5, :cond_1

    .line 378
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "frameObserver not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_1
    iget-object v7, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v0, Lorg/webrtc/VideoCapturerAndroid$7;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/VideoCapturerAndroid$7;-><init>(Lorg/webrtc/VideoCapturerAndroid;IIILorg/webrtc/VideoCapturer$CapturerObserver;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 387
    return-void
.end method

.method public stopCapture()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 545
    const-string v0, "VideoCapturerAndroid"

    const-string/jumbo v1, "stopCapture"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 547
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/VideoCapturerAndroid$9;

    invoke-direct {v2, p0, v0}, Lorg/webrtc/VideoCapturerAndroid$9;-><init>(Lorg/webrtc/VideoCapturerAndroid;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 553
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 554
    const-string v0, "VideoCapturerAndroid"

    const-string/jumbo v1, "stopCapture done"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method public switchCamera(Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;)V
    .locals 3

    .prologue
    .line 217
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 218
    if-eqz p1, :cond_0

    .line 219
    const-string v0, "No camera to switch to."

    invoke-interface {p1, v0}, Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v1, p0, Lorg/webrtc/VideoCapturerAndroid;->pendingCameraSwitchLock:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    iget-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->pendingCameraSwitch:Z

    if-eqz v0, :cond_3

    .line 227
    const-string v0, "VideoCapturerAndroid"

    const-string v2, "Ignoring camera switch request."

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    if-eqz p1, :cond_2

    .line 229
    const-string v0, "Pending camera switch already in progress."

    invoke-interface {p1, v0}, Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    .line 231
    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 233
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/webrtc/VideoCapturerAndroid;->pendingCameraSwitch:Z

    .line 234
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/VideoCapturerAndroid$3;

    invoke-direct {v1, p0, p1}, Lorg/webrtc/VideoCapturerAndroid$3;-><init>(Lorg/webrtc/VideoCapturerAndroid;Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
