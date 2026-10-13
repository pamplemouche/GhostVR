.class public Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;
.super Lcom/facebook/cameracore/mediapipeline/outputs/SurfaceOutput;
.source "RecorderOutput.java"

# interfaces
.implements Lcom/facebook/cameracore/mediapipeline/filterlib/VideoOutputWithRendererEvents;


# direct methods
.method public constructor <init>(Landroid/view/Surface;II)V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/facebook/videocodec/effects/common/DeviceOutput;->CAPTURE:Lcom/facebook/videocodec/effects/common/DeviceOutput;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/cameracore/mediapipeline/outputs/SurfaceOutput;-><init>(Landroid/view/Surface;IILcom/facebook/videocodec/effects/common/DeviceOutput;)V

    .line 23
    return-void
.end method
