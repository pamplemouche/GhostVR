.class public Lr51;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:J

.field public final synthetic x:Ls51;


# direct methods
.method public constructor <init>(Ls51;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr51;->x:Ls51;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lr51;->w:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, "TakePhotoTask.run"

    const-string v1, "VideoCaptureCamera2.java"

    .line 1
    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lr51;->x:Ls51;

    .line 3
    iget-object v2, v0, Ls51;->g:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x0

    const-string v4, "VideoCapture"

    if-eqz v2, :cond_5

    .line 4
    iget v2, v0, Ls51;->o:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    iget v0, v0, Lorg/chromium/media/VideoCapture;->d:I

    .line 6
    invoke-static {v0}, Ls51;->b(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 7
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v2, 0x100

    .line 8
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 9
    iget-object v6, p0, Lr51;->x:Ls51;

    .line 10
    iget v7, v6, Ls51;->r:I

    .line 11
    iget v6, v6, Ls51;->s:I

    .line 12
    invoke-static {v0, v7, v6}, Ls51;->a([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v0

    .line 13
    iget-object v6, p0, Lr51;->x:Ls51;

    .line 14
    iget v7, v6, Ls51;->r:I

    .line 15
    iget v6, v6, Ls51;->s:I

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    :cond_1
    const-string v6, "TakePhotoTask.run creating ImageReader"

    .line 17
    invoke-static {v1, v6}, Lorg/chromium/base/TraceEvent;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lr51;->x:Ls51;

    iget-object v6, v6, Lorg/chromium/media/VideoCapture;->c:Lorg/chromium/media/VideoCaptureFormat;

    .line 19
    iget v6, v6, Lorg/chromium/media/VideoCaptureFormat;->a:I

    :goto_0
    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lr51;->x:Ls51;

    iget-object v0, v0, Lorg/chromium/media/VideoCapture;->c:Lorg/chromium/media/VideoCaptureFormat;

    .line 21
    iget v0, v0, Lorg/chromium/media/VideoCaptureFormat;->b:I

    :goto_1
    const/4 v7, 0x1

    .line 22
    invoke-static {v6, v0, v2, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v10

    .line 23
    new-instance v0, Lh51;

    iget-object v2, p0, Lr51;->x:Ls51;

    iget-wide v8, p0, Lr51;->w:J

    invoke-direct {v0, v2, v8, v9}, Lh51;-><init>(Ls51;J)V

    .line 24
    iget-object v2, p0, Lr51;->x:Ls51;

    .line 25
    iget-object v2, v2, Ls51;->l:Landroid/os/Handler;

    .line 26
    invoke-virtual {v10, v0, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    invoke-virtual {v10}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :try_start_0
    iget-object v2, p0, Lr51;->x:Ls51;

    .line 30
    iget-object v2, v2, Ls51;->g:Landroid/hardware/camera2/CameraDevice;

    .line 31
    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v2, :cond_4

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "photoRequestBuilder error"

    .line 32
    invoke-static {v4, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lr51;->x:Ls51;

    iget-wide v1, p0, Lr51;->w:J

    invoke-virtual {v0, v1, v2}, Lorg/chromium/media/VideoCapture;->a(J)V

    return-void

    .line 34
    :cond_4
    invoke-virtual {v10}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 35
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, p0, Lr51;->x:Ls51;

    invoke-virtual {v6}, Lorg/chromium/media/VideoCapture;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string v5, "TakePhotoTask.run calling configureCommonCaptureSettings"

    .line 36
    invoke-static {v1, v5}, Lorg/chromium/base/TraceEvent;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v5, p0, Lr51;->x:Ls51;

    .line 38
    invoke-virtual {v5, v2}, Ls51;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const-string v5, "TakePhotoTask.run calling photoRequestBuilder.build()"

    .line 39
    invoke-static {v1, v5}, Lorg/chromium/base/TraceEvent;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    .line 41
    new-instance v2, Li51;

    iget-object v9, p0, Lr51;->x:Ls51;

    iget-wide v12, p0, Lr51;->w:J

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Li51;-><init>(Ls51;Landroid/media/ImageReader;Landroid/hardware/camera2/CaptureRequest;J)V

    :try_start_1
    const-string v5, "TakePhotoTask.run calling mCameraDevice.createCaptureSession()"

    .line 42
    invoke-static {v1, v5}, Lorg/chromium/base/TraceEvent;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lr51;->x:Ls51;

    .line 44
    iget-object v1, v1, Ls51;->g:Landroid/hardware/camera2/CameraDevice;

    .line 45
    iget-object v5, p0, Lr51;->x:Ls51;

    .line 46
    iget-object v5, v5, Ls51;->l:Landroid/os/Handler;

    .line 47
    invoke-virtual {v1, v0, v2, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 48
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCaptureSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lr51;->x:Ls51;

    iget-wide v1, p0, Lr51;->w:J

    invoke-virtual {v0, v1, v2}, Lorg/chromium/media/VideoCapture;->a(J)V

    :goto_3
    return-void

    :catch_3
    move-exception v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "createCaptureRequest() error "

    .line 50
    invoke-static {v4, v0, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lr51;->x:Ls51;

    iget-wide v1, p0, Lr51;->w:J

    invoke-virtual {v0, v1, v2}, Lorg/chromium/media/VideoCapture;->a(J)V

    return-void

    :cond_5
    :goto_4
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "TakePhoto failed because mCameraDevice == null || mCameraState != CameraState.STARTED"

    .line 52
    invoke-static {v4, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lr51;->x:Ls51;

    iget-wide v1, p0, Lr51;->w:J

    invoke-virtual {v0, v1, v2}, Lorg/chromium/media/VideoCapture;->a(J)V

    return-void
.end method
