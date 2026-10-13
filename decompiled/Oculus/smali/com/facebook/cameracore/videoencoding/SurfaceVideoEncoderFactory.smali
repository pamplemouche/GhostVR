.class public final Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderFactory;
.super Ljava/lang/Object;
.source "SurfaceVideoEncoderFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSurfaceVideoEncoder(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;Landroid/os/Handler;)Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;-><init>(Lcom/facebook/cameracore/videoencoding/VideoEncoderConfig;Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;Landroid/os/Handler;)V

    return-object v0
.end method
