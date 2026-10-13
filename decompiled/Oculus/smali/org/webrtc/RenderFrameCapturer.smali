.class public Lorg/webrtc/RenderFrameCapturer;
.super Ljava/lang/Object;
.source "RenderFrameCapturer.java"

# interfaces
.implements Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;
.implements Lorg/webrtc/VideoCapturer;


# static fields
.field private static rootEglContext:Lorg/webrtc/EglBase14;


# instance fields
.field TAG:Ljava/lang/String;

.field frameLoggingTimer:I

.field private mNativeRenderFrameCapturerPtr:J

.field mSurface:Landroid/view/Surface;

.field mSurfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "OVRPlatform-RenderFrameCapturer"

    iput-object v0, p0, Lorg/webrtc/RenderFrameCapturer;->TAG:Ljava/lang/String;

    .line 30
    const/16 v0, 0x3c

    iput v0, p0, Lorg/webrtc/RenderFrameCapturer;->frameLoggingTimer:I

    .line 40
    iput-wide p1, p0, Lorg/webrtc/RenderFrameCapturer;->mNativeRenderFrameCapturerPtr:J

    .line 42
    sget-object v0, Lorg/webrtc/RenderFrameCapturer;->rootEglContext:Lorg/webrtc/EglBase14;

    invoke-virtual {v0}, Lorg/webrtc/EglBase14;->getEglBaseContext()Lorg/webrtc/EglBase14$Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/webrtc/SurfaceTextureHelper;->create(Lorg/webrtc/EglBase$Context;Landroid/os/Handler;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/RenderFrameCapturer;->mSurfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 43
    iget-object v0, p0, Lorg/webrtc/RenderFrameCapturer;->mSurfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0, p0}, Lorg/webrtc/SurfaceTextureHelper;->setListener(Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V

    .line 44
    return-void
.end method

.method public static CreateRootEGLContext()Lorg/webrtc/EglBase14$Context;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lorg/webrtc/EglBase14;

    const/4 v1, 0x0

    sget-object v2, Lorg/webrtc/EglBase;->CONFIG_RECORDABLE:[I

    invoke-direct {v0, v1, v2}, Lorg/webrtc/EglBase14;-><init>(Lorg/webrtc/EglBase14$Context;[I)V

    sput-object v0, Lorg/webrtc/RenderFrameCapturer;->rootEglContext:Lorg/webrtc/EglBase14;

    .line 36
    sget-object v0, Lorg/webrtc/RenderFrameCapturer;->rootEglContext:Lorg/webrtc/EglBase14;

    invoke-virtual {v0}, Lorg/webrtc/EglBase14;->getEglBaseContext()Lorg/webrtc/EglBase14$Context;

    move-result-object v0

    return-object v0
.end method

.method public static native nativeFrameCaptured(JI[FJ)V
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public getCaptureSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/webrtc/RenderFrameCapturer;->mSurface:Landroid/view/Surface;

    return-object v0
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
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceTextureHelper()Lorg/webrtc/SurfaceTextureHelper;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/webrtc/RenderFrameCapturer;->mSurfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    return-object v0
.end method

.method public onTextureFrameAvailable(I[FJ)V
    .locals 7

    .prologue
    .line 52
    iget v0, p0, Lorg/webrtc/RenderFrameCapturer;->frameLoggingTimer:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/webrtc/RenderFrameCapturer;->frameLoggingTimer:I

    .line 53
    iget v0, p0, Lorg/webrtc/RenderFrameCapturer;->frameLoggingTimer:I

    if-gez v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/webrtc/RenderFrameCapturer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "still capturing frames"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/16 v0, 0x3c

    iput v0, p0, Lorg/webrtc/RenderFrameCapturer;->frameLoggingTimer:I

    .line 58
    :cond_0
    iget-wide v0, p0, Lorg/webrtc/RenderFrameCapturer;->mNativeRenderFrameCapturerPtr:J

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/webrtc/RenderFrameCapturer;->nativeFrameCaptured(JI[FJ)V

    .line 59
    return-void
.end method

.method public startCapture(IIILandroid/content/Context;Lorg/webrtc/VideoCapturer$CapturerObserver;)V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lorg/webrtc/RenderFrameCapturer;->mSurfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 81
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lorg/webrtc/RenderFrameCapturer;->mSurfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v1}, Lorg/webrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lorg/webrtc/RenderFrameCapturer;->mSurface:Landroid/view/Surface;

    .line 82
    iget-object v0, p0, Lorg/webrtc/RenderFrameCapturer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created capture surface: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public stopCapture()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/RenderFrameCapturer;->mSurface:Landroid/view/Surface;

    .line 88
    return-void
.end method
