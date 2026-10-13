.class public Ls51;
.super Lorg/chromium/media/VideoCapture;
.source "PG"


# static fields
.field public static final G:[Ljava/lang/String;

.field public static final H:Landroid/util/SparseIntArray;


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public D:I

.field public E:Z

.field public F:Z

.field public final f:Ljava/lang/Object;

.field public g:Landroid/hardware/camera2/CameraDevice;

.field public h:Landroid/hardware/camera2/CameraCaptureSession;

.field public i:Landroid/hardware/camera2/CaptureRequest;

.field public j:Landroid/hardware/camera2/CaptureRequest$Builder;

.field public k:Landroid/media/ImageReader;

.field public l:Landroid/os/Handler;

.field public m:Landroid/os/ConditionVariable;

.field public n:Landroid/util/Range;

.field public o:I

.field public p:F

.field public q:Landroid/graphics/Rect;

.field public r:I

.field public s:I

.field public t:I

.field public u:F

.field public v:I

.field public w:J

.field public x:Landroid/hardware/camera2/params/MeteringRectangle;

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "Pixel 3"

    const-string v1, "Pixel 3 XL"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ls51;->G:[Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Ls51;->H:Landroid/util/SparseIntArray;

    const/16 v1, 0xb22

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 4
    sget-object v0, Ls51;->H:Landroid/util/SparseIntArray;

    const/16 v1, 0xb86

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 5
    sget-object v0, Ls51;->H:Landroid/util/SparseIntArray;

    const/16 v1, 0x109a

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 6
    sget-object v0, Ls51;->H:Landroid/util/SparseIntArray;

    const/16 v1, 0x11f8

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 7
    sget-object v0, Ls51;->H:Landroid/util/SparseIntArray;

    const/16 v1, 0x1388

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 8
    sget-object v0, Ls51;->H:Landroid/util/SparseIntArray;

    const/16 v1, 0x1770

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 9
    sget-object v0, Ls51;->H:Landroid/util/SparseIntArray;

    const/16 v1, 0x1b58

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/VideoCapture;-><init>(IJ)V

    .line 2
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls51;->f:Ljava/lang/Object;

    .line 3
    new-instance p2, Landroid/os/ConditionVariable;

    invoke-direct {p2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object p2, p0, Ls51;->m:Landroid/os/ConditionVariable;

    const/4 p2, 0x3

    .line 4
    iput p2, p0, Ls51;->o:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 5
    iput p2, p0, Ls51;->p:F

    .line 6
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Ls51;->q:Landroid/graphics/Rect;

    const/4 p3, 0x4

    .line 7
    iput p3, p0, Ls51;->t:I

    .line 8
    iput p2, p0, Ls51;->u:F

    .line 9
    iput p3, p0, Ls51;->v:I

    .line 10
    iput p3, p0, Ls51;->z:I

    const/4 p2, -0x1

    .line 11
    iput p2, p0, Ls51;->A:I

    const/4 p2, 0x1

    .line 12
    iput p2, p0, Ls51;->D:I

    .line 13
    iget-wide p2, p0, Lorg/chromium/media/VideoCapture;->e:J

    .line 14
    invoke-static {p2, p3, p0}, LJ/N;->Mqw5545M(JLjava/lang/Object;)V

    .line 15
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "VideoCaptureCamera2_CameraThread"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 17
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Ls51;->l:Landroid/os/Handler;

    .line 18
    invoke-static {p1}, Ls51;->b(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Ls51;->p:F

    :cond_0
    return-void
.end method

.method public static a([Landroid/util/Size;II)Landroid/util/Size;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 151
    :cond_0
    array-length v1, p0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    move-object v6, v0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    :goto_0
    if-ge v4, v1, :cond_4

    aget-object v7, p0, v4

    if-lez p1, :cond_1

    .line 152
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v8

    sub-int/2addr v8, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-lez p2, :cond_2

    .line 153
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v9

    sub-int/2addr v9, p2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    add-int/2addr v8, v9

    if-ge v8, v5, :cond_3

    move-object v6, v7

    move v5, v8

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ne v5, v2, :cond_5

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 154
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    const-string p1, "VideoCapture"

    const-string p2, "Couldn\'t find resolution close to (%dx%d)"

    invoke-static {p1, p2, p0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_5
    return-object v6
.end method

.method public static synthetic a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p1, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p1, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {p0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Ls51;I)V
    .locals 10

    const-string v0, "VideoCapture"

    .line 4
    iget-object v1, p0, Ls51;->g:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v1, "VideoCaptureCamera2.createPreviewObjectsAndStartPreview"

    .line 5
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v1

    .line 6
    :try_start_0
    iget-object v4, p0, Lorg/chromium/media/VideoCapture;->c:Lorg/chromium/media/VideoCaptureFormat;

    .line 7
    iget v4, v4, Lorg/chromium/media/VideoCaptureFormat;->a:I

    .line 8
    iget-object v5, p0, Lorg/chromium/media/VideoCapture;->c:Lorg/chromium/media/VideoCaptureFormat;

    .line 9
    iget v5, v5, Lorg/chromium/media/VideoCaptureFormat;->b:I

    .line 10
    iget-object v6, p0, Lorg/chromium/media/VideoCapture;->c:Lorg/chromium/media/VideoCaptureFormat;

    .line 11
    iget v6, v6, Lorg/chromium/media/VideoCaptureFormat;->d:I

    const/4 v7, 0x2

    .line 12
    invoke-static {v4, v5, v6, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v4

    iput-object v4, p0, Ls51;->k:Landroid/media/ImageReader;

    .line 13
    new-instance v4, Lj51;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lj51;-><init>(Ls51;Lg51;)V

    .line 14
    iget-object v6, p0, Ls51;->k:Landroid/media/ImageReader;

    iget-object v8, p0, Ls51;->l:Landroid/os/Handler;

    invoke-virtual {v6, v4, v8}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    iget-object v4, p0, Ls51;->g:Landroid/hardware/camera2/CameraDevice;

    .line 16
    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iput-object v4, p0, Ls51;->j:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    :try_start_2
    const-string v3, "mPreviewRequestBuilder error"

    new-array v4, v2, [Ljava/lang/Object;

    .line 17
    invoke-static {v0, v3, v4}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_6

    goto/16 :goto_4

    .line 18
    :cond_1
    iget-object v6, p0, Ls51;->k:Landroid/media/ImageReader;

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 19
    iget-object v4, p0, Ls51;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 21
    invoke-virtual {v4, v6, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 22
    iget-object v4, p0, Ls51;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 24
    invoke-virtual {v4, v6, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 25
    iget-object v4, p0, Ls51;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 26
    iget v4, p0, Lorg/chromium/media/VideoCapture;->d:I

    invoke-static {v4}, Ls51;->b(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 27
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 28
    array-length v6, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_3

    aget v9, v4, v8

    if-ne v9, v3, :cond_2

    .line 29
    iget-object v4, p0, Ls51;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 31
    invoke-virtual {v4, v6, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 32
    :cond_3
    :goto_1
    iget-object v4, p0, Ls51;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v4}, Ls51;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 33
    iget-boolean v4, p0, Ls51;->F:Z

    if-eqz v4, :cond_4

    .line 34
    iget-object v4, p0, Ls51;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 35
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 36
    invoke-virtual {v4, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 37
    iget-object v4, p0, Ls51;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 39
    invoke-virtual {v4, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 40
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    iget-object v6, p0, Ls51;->k:Landroid/media/ImageReader;

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v6, p0, Ls51;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iput-object v6, p0, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :try_start_3
    iget-object v6, p0, Ls51;->g:Landroid/hardware/camera2/CameraDevice;

    new-instance v7, Ll51;

    iget-object v8, p0, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    invoke-direct {v7, p0, v8}, Ll51;-><init>(Ls51;Landroid/hardware/camera2/CaptureRequest;)V

    invoke-virtual {v6, v4, v7, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_5

    .line 44
    invoke-static {v5, v1}, Ls51;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_5
    const/4 v2, 0x1

    goto :goto_5

    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_2

    :catch_2
    move-exception v4

    :goto_2
    :try_start_4
    const-string v6, "createCaptureSession: "

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    .line 45
    invoke-static {v0, v6, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_6

    goto :goto_4

    :catch_3
    move-exception v4

    goto :goto_3

    :catch_4
    move-exception v4

    goto :goto_3

    :catch_5
    move-exception v4

    :goto_3
    const-string v6, "createCaptureRequest: "

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    .line 46
    invoke-static {v0, v6, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_6

    .line 47
    :goto_4
    invoke-static {v5, v1}, Ls51;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    const/4 v0, 0x3

    .line 48
    invoke-virtual {p0, v0}, Ls51;->a(I)V

    .line 49
    iget-wide v0, p0, Lorg/chromium/media/VideoCapture;->e:J

    const-string v2, "Error starting or restarting preview"

    .line 50
    invoke-static {v0, v1, p0, p1, v2}, LJ/N;->MhmwjISE(JLjava/lang/Object;ILjava/lang/String;)V

    :goto_6
    return-void

    :catchall_0
    move-exception p0

    .line 51
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_8

    .line 52
    invoke-static {p0, v1}, Ls51;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_8
    throw p1
.end method

.method public static b(I)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 2

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v1, "camera"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "VideoCapture"

    const-string v1, "getCameraCharacteristics: "

    .line 4
    invoke-static {p0, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c()I
    .locals 5

    const-string v0, "VideoCapture"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    sget-object v3, LzT;->a:Landroid/content/Context;

    const-string v4, "camera"

    .line 2
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v3, :cond_0

    return v2

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v3, "getNumberOfCameras: getCameraIdList(): "

    .line 4
    invoke-static {v0, v3, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :catch_3
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v3, "getSystemService(Context.CAMERA_SERVICE): "

    .line 5
    invoke-static {v0, v3, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 147
    iget-object v0, p0, Ls51;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    iput p1, p0, Ls51;->o:I

    .line 149
    iget-object p1, p0, Ls51;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 150
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "VideoCaptureCamera2.configureCommonCaptureSettings"

    .line 53
    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v2

    const/4 v3, 0x0

    .line 54
    :try_start_0
    iget v4, v1, Lorg/chromium/media/VideoCapture;->d:I

    invoke-static {v4}, Ls51;->b(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 55
    iget v5, v1, Ls51;->t:I

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-ne v5, v6, :cond_0

    .line 56
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 57
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 58
    invoke-virtual {v0, v5, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 59
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 60
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 61
    invoke-virtual {v0, v5, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_0
    iget v5, v1, Ls51;->t:I

    if-ne v5, v7, :cond_1

    .line 63
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 64
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 65
    invoke-virtual {v0, v5, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 66
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 67
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 68
    invoke-virtual {v0, v5, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 69
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/high16 v9, 0x3f800000    # 1.0f

    iget v10, v1, Ls51;->u:F

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 70
    :cond_1
    :goto_0
    iget v5, v1, Ls51;->v:I

    const/4 v9, 0x1

    if-eq v5, v9, :cond_5

    iget v5, v1, Ls51;->v:I

    if-ne v5, v7, :cond_2

    goto :goto_3

    .line 71
    :cond_2
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 72
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 73
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 74
    invoke-virtual {v0, v5, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 75
    sget-object v5, Ls51;->G:[Ljava/lang/String;

    array-length v10, v5

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_4

    aget-object v12, v5, v11

    .line 76
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_7

    .line 77
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v10, v1, Ls51;->n:Landroid/util/Range;

    invoke-virtual {v0, v5, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_4

    .line 78
    :cond_5
    :goto_3
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 79
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 80
    invoke-virtual {v0, v5, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 81
    iget-wide v10, v1, Ls51;->w:J

    const-wide/16 v12, 0x0

    const-wide/32 v14, 0x186a0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_6

    .line 82
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-wide v10, v1, Ls51;->w:J

    div-long/2addr v10, v14

    .line 83
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 84
    invoke-virtual {v0, v5, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_4

    .line 85
    :cond_6
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    .line 86
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 87
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    add-long v16, v16, v18

    const-wide/16 v18, 0x2

    div-long v16, v16, v18

    add-long v11, v11, v16

    div-long/2addr v11, v14

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 88
    invoke-virtual {v0, v10, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 89
    :cond_7
    :goto_4
    iget-boolean v5, v1, Ls51;->E:Z

    if-eqz v5, :cond_9

    .line 90
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 91
    iget v10, v1, Ls51;->v:I

    if-ne v10, v6, :cond_8

    const/4 v10, 0x1

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    :goto_5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 92
    invoke-virtual {v0, v5, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 93
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_8

    .line 94
    :cond_9
    iget v5, v1, Ls51;->D:I

    if-eq v5, v9, :cond_d

    if-eq v5, v7, :cond_b

    const/4 v10, 0x3

    if-eq v5, v10, :cond_a

    goto :goto_7

    .line 95
    :cond_a
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 96
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 97
    invoke-virtual {v0, v5, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 98
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 99
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 100
    invoke-virtual {v0, v5, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_7

    .line 101
    :cond_b
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 102
    iget-boolean v10, v1, Ls51;->C:Z

    if-eqz v10, :cond_c

    const/4 v10, 0x4

    goto :goto_6

    :cond_c
    const/4 v10, 0x2

    :goto_6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 103
    invoke-virtual {v0, v5, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_7

    .line 104
    :cond_d
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 105
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 106
    invoke-virtual {v0, v5, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 107
    :goto_7
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 108
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 109
    invoke-virtual {v0, v5, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 110
    :goto_8
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v10, v1, Ls51;->y:I

    .line 111
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 112
    invoke-virtual {v0, v5, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 113
    iget v5, v1, Ls51;->z:I

    if-ne v5, v6, :cond_e

    .line 114
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 115
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 116
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 117
    invoke-virtual {v0, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_9

    .line 118
    :cond_e
    iget v5, v1, Ls51;->z:I

    if-ne v5, v9, :cond_f

    .line 119
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 120
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 121
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 122
    invoke-virtual {v0, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_9

    .line 123
    :cond_f
    iget v5, v1, Ls51;->z:I

    if-ne v5, v7, :cond_10

    .line 124
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 125
    :cond_10
    :goto_9
    iget v5, v1, Ls51;->A:I

    if-lez v5, :cond_16

    .line 126
    iget v5, v1, Ls51;->A:I

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 127
    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const v6, 0x7fffffff

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v10, -0x1

    const v11, 0x7fffffff

    .line 128
    :goto_a
    sget-object v12, Ls51;->H:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-ge v6, v12, :cond_15

    .line 129
    sget-object v12, Ls51;->H:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    const/4 v13, 0x0

    .line 130
    :goto_b
    array-length v14, v4

    if-ge v13, v14, :cond_12

    .line 131
    aget v14, v4, v13

    if-ne v12, v14, :cond_11

    goto :goto_c

    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_12
    const/4 v13, -0x1

    :goto_c
    if-ne v13, v7, :cond_13

    goto :goto_d

    .line 132
    :cond_13
    sget-object v12, Ls51;->H:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    sub-int v12, v5, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-lt v12, v11, :cond_14

    goto :goto_d

    .line 133
    :cond_14
    sget-object v10, Ls51;->H:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    move v11, v12

    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_15
    if-eq v10, v7, :cond_16

    .line 134
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 135
    :cond_16
    iget-object v4, v1, Ls51;->x:Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v4, :cond_17

    new-array v4, v9, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 136
    iget-object v5, v1, Ls51;->x:Landroid/hardware/camera2/params/MeteringRectangle;

    aput-object v5, v4, v8

    .line 137
    iget-object v5, v1, Ls51;->x:Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {v5}, Landroid/hardware/camera2/params/MeteringRectangle;->toString()Ljava/lang/String;

    .line 138
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v5, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 139
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v5, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 140
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v5, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 141
    :cond_17
    iget-object v4, v1, Ls51;->q:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    .line 142
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, v1, Ls51;->q:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 143
    :cond_18
    iget v4, v1, Ls51;->B:I

    if-lez v4, :cond_19

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v5, v1, Ls51;->B:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_19
    if-eqz v2, :cond_1a

    .line 144
    invoke-static {v3, v2}, Ls51;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_1a
    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 145
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    if-eqz v2, :cond_1b

    .line 146
    invoke-static {v3, v2}, Ls51;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_1b
    throw v4
.end method

.method public allocate(IIIZ)Z
    .locals 9

    .line 1
    iget-wide v0, p0, Lorg/chromium/media/VideoCapture;->e:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->Mqw5545M(JLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Ls51;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Ls51;->o:I

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget v1, p0, Ls51;->o:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget v0, p0, Lorg/chromium/media/VideoCapture;->d:I

    invoke-static {v0}, Ls51;->b(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 7
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 8
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v4, 0x23

    .line 9
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    .line 10
    invoke-static {v1, p1, p2}, Ls51;->a([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "VideoCapture"

    const-string p3, "No supported resolutions."

    .line 11
    invoke-static {p2, p3, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 12
    :cond_1
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/util/Range;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 13
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "VideoCapture"

    const-string p3, "No supported framerate ranges."

    .line 14
    invoke-static {p2, p3, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 15
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_3

    const/4 v6, 0x1

    .line 18
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    .line 19
    new-instance v7, Lb51;

    .line 20
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int v8, v8, v6

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int v5, v5, v6

    invoke-direct {v7, v8, v5}, Lb51;-><init>(II)V

    .line 21
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    mul-int/lit16 p2, p3, 0x3e8

    .line 22
    new-instance v5, La51;

    invoke-direct {v5, p2}, La51;-><init>(I)V

    invoke-static {v1, v5}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb51;

    .line 23
    new-instance v1, Landroid/util/Range;

    iget v5, p2, Lb51;->a:I

    div-int/2addr v5, v6

    .line 24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p2, p2, Lb51;->b:I

    div-int/2addr p2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, v5, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v1, p0, Ls51;->n:Landroid/util/Range;

    .line 25
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 26
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    iget-object p2, p0, Ls51;->n:Landroid/util/Range;

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    iget-object p2, p0, Ls51;->n:Landroid/util/Range;

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 27
    new-instance p2, Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 28
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {p2, v1, p1, p3, v4}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    iput-object p2, p0, Lorg/chromium/media/VideoCapture;->c:Lorg/chromium/media/VideoCaptureFormat;

    .line 29
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 30
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/chromium/media/VideoCapture;->a:I

    .line 31
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 32
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    iput-boolean v2, p0, Lorg/chromium/media/VideoCapture;->b:Z

    .line 33
    iput-boolean p4, p0, Ls51;->F:Z

    return v3

    :cond_6
    :goto_1
    :try_start_1
    const-string p1, "VideoCapture"

    const-string p2, "allocate() invoked while Camera is busy opening/configuring."

    new-array p3, v2, [Ljava/lang/Object;

    .line 34
    invoke-static {p1, p2, p3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public deallocate()V
    .locals 0

    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls51;->l:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public getPhotoCapabilitiesAsync(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/media/VideoCapture;->e:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->Mqw5545M(JLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Ls51;->l:Landroid/os/Handler;

    new-instance v1, Ln51;

    invoke-direct {v1, p0, p1, p2}, Ln51;-><init>(Ls51;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPhotoOptions(DIDIDD[DZDDIDZZIZZD)V
    .locals 31

    move-object/from16 v14, p0

    .line 1
    iget-wide v0, v14, Lorg/chromium/media/VideoCapture;->e:J

    .line 2
    invoke-static {v0, v1, v14}, LJ/N;->Mqw5545M(JLjava/lang/Object;)V

    .line 3
    iget-object v15, v14, Ls51;->l:Landroid/os/Handler;

    new-instance v13, Lp51;

    new-instance v12, Lo51;

    move-object v0, v12

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v28, v12

    move-object/from16 v12, p11

    move-object/from16 v29, v13

    move/from16 v13, p12

    move-object/from16 v30, v15

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move/from16 v18, p17

    move-wide/from16 v19, p18

    move/from16 v21, p20

    move/from16 v22, p21

    move/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move-wide/from16 v26, p25

    invoke-direct/range {v0 .. v27}, Lo51;-><init>(Ls51;DIDIDD[DZDDIDZZIZZD)V

    move-object/from16 v0, p0

    move-object/from16 v2, v28

    move-object/from16 v1, v29

    invoke-direct {v1, v0, v2}, Lp51;-><init>(Ls51;Lo51;)V

    move-object/from16 v2, v30

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startCaptureMaybeAsync()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/chromium/media/VideoCapture;->e:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->Mqw5545M(JLjava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Ls51;->a(I)V

    .line 4
    sget-object v1, LzT;->a:Landroid/content/Context;

    const-string v2, "camera"

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 6
    new-instance v2, Lm51;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lm51;-><init>(Ls51;Lg51;)V

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "VideoCaptureCamera2.java"

    const-string v5, "VideoCaptureCamera2.startCaptureMaybeAsync calling manager.openCamera"

    .line 7
    invoke-static {v4, v5}, Lorg/chromium/base/TraceEvent;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/chromium/media/VideoCapture;->d:I

    aget-object v4, v4, v5

    iget-object v5, p0, Ls51;->l:Landroid/os/Handler;

    invoke-virtual {v1, v4, v2, v5}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_0
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v1, "VideoCapture"

    const-string v3, "allocate: manager.openCamera: "

    .line 9
    invoke-static {v1, v3, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public stopCaptureAndBlockUntilStopped()Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/chromium/media/VideoCapture;->e:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->Mqw5545M(JLjava/lang/Object;)V

    const-string v0, "VideoCaptureCamera2.stopCaptureAndBlockUntilStopped"

    .line 3
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ls51;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :goto_0
    :try_start_1
    iget v2, p0, Ls51;->o:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Ls51;->o:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v4, :cond_0

    .line 6
    :try_start_2
    iget-object v2, p0, Ls51;->f:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "VideoCapture"

    const-string v4, "CaptureStartedEvent: "

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 7
    invoke-static {v3, v4, v5}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    iget v2, p0, Ls51;->o:I

    const/4 v3, 0x0

    if-ne v2, v4, :cond_2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {v3, v0}, Ls51;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_1
    return v5

    .line 10
    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 11
    :try_start_5
    iget-object v1, p0, Ls51;->l:Landroid/os/Handler;

    new-instance v2, Lq51;

    invoke-direct {v2, p0, v3}, Lq51;-><init>(Ls51;Lg51;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    iget-object v1, p0, Ls51;->m:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    .line 13
    invoke-static {v3, v0}, Ls51;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_3
    return v5

    :catchall_0
    move-exception v2

    .line 14
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    .line 15
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_4

    .line 16
    invoke-static {v1, v0}, Ls51;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_4
    throw v2
.end method

.method public takePhotoAsync(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/media/VideoCapture;->e:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->Mqw5545M(JLjava/lang/Object;)V

    const-string v0, "VideoCaptureCamera2.java"

    const-string v1, "takePhotoAsync"

    .line 3
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Ls51;->l:Landroid/os/Handler;

    new-instance v1, Lr51;

    invoke-direct {v1, p0, p1, p2}, Lr51;-><init>(Ls51;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
